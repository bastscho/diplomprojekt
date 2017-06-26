package jsf;

import jpa.entities.TplTicket;
import jsf.util.JsfUtil;
import jsf.util.PaginationHelper;
import jpa.session.TplTicketFacade;

import java.io.Serializable;
import java.util.ResourceBundle;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;

@Named("tplTicketController")
@SessionScoped
public class TplTicketController implements Serializable
{

    private TplTicket current;
    private DataModel items = null;
    @EJB
    private jpa.session.TplTicketFacade ejbFacade;
    private PaginationHelper pagination;
    private int selectedItemIndex;

    public TplTicketController()
    {
    }

    public TplTicket getSelected()
    {
        if (current == null)
        {
            current = new TplTicket();
            selectedItemIndex = -1;
        }
        return current;
    }

    private TplTicketFacade getFacade()
    {
        return ejbFacade;
    }

    public PaginationHelper getPagination()
    {
        if (pagination == null)
        {
            pagination = new PaginationHelper(10)
            {

                @Override
                public int getItemsCount()
                {
                    return getFacade().count();
                }

                @Override
                public DataModel createPageDataModel()
                {
                    return new ListDataModel(getFacade().findRange(new int[]
                    {
                        getPageFirstItem(), getPageFirstItem() + getPageSize()
                    }));
                }
            };
        }
        return pagination;
    }

    public String prepareList()
    {
        recreateModel();
        return "List";
    }

    public String prepareView()
    {
        current = (TplTicket) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        return "View";
    }

    public String prepareCreate()
    {
        current = new TplTicket();
        selectedItemIndex = -1;
        return "Create";
    }

    public String create()
    {
        try
        {
            getFacade().create(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("/resources/Bundle").getString("TplTicketCreated"));
            return prepareCreate();
        } catch (Exception e)
        {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("/resources/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String prepareEdit()
    {
        current = (TplTicket) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        return "Edit";
    }

    public String update()
    {
        try
        {
            getFacade().edit(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("/resources/Bundle").getString("TplTicketUpdated"));
            return "View";
        } catch (Exception e)
        {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("/resources/Bundle").getString("PersistenceErrorOccured"));
            return null;
        }
    }

    public String destroy()
    {
        current = (TplTicket) getItems().getRowData();
        selectedItemIndex = pagination.getPageFirstItem() + getItems().getRowIndex();
        performDestroy();
        recreatePagination();
        recreateModel();
        return "List";
    }

    public String destroyAndView()
    {
        performDestroy();
        recreateModel();
        updateCurrentItem();
        if (selectedItemIndex >= 0)
        {
            return "View";
        } else
        {
            // all items were removed - go back to list
            recreateModel();
            return "List";
        }
    }

    private void performDestroy()
    {
        try
        {
            getFacade().remove(current);
            JsfUtil.addSuccessMessage(ResourceBundle.getBundle("/resources/Bundle").getString("TplTicketDeleted"));
        } catch (Exception e)
        {
            JsfUtil.addErrorMessage(e, ResourceBundle.getBundle("/resources/Bundle").getString("PersistenceErrorOccured"));
        }
    }

    private void updateCurrentItem()
    {
        int count = getFacade().count();
        if (selectedItemIndex >= count)
        {
            // selected index cannot be bigger than number of items:
            selectedItemIndex = count - 1;
            // go to previous page if last page disappeared:
            if (pagination.getPageFirstItem() >= count)
            {
                pagination.previousPage();
            }
        }
        if (selectedItemIndex >= 0)
        {
            current = getFacade().findRange(new int[]
            {
                selectedItemIndex, selectedItemIndex + 1
            }).get(0);
        }
    }

    public DataModel getItems()
    {
        if (items == null)
        {
            items = getPagination().createPageDataModel();
        }
        return items;
    }

    private void recreateModel()
    {
        items = null;
    }

    private void recreatePagination()
    {
        pagination = null;
    }

    public String next()
    {
        getPagination().nextPage();
        recreateModel();
        return "List";
    }

    public String previous()
    {
        getPagination().previousPage();
        recreateModel();
        return "List";
    }

    public SelectItem[] getItemsAvailableSelectMany()
    {
        return JsfUtil.getSelectItems(ejbFacade.findAll(), false);
    }

    public SelectItem[] getItemsAvailableSelectOne()
    {
        return JsfUtil.getSelectItems(ejbFacade.findAll(), true);
    }

    public TplTicket getTplTicket(java.lang.Integer id)
    {
        return ejbFacade.find(id);
    }

    @FacesConverter(forClass = TplTicket.class)
    public static class TplTicketControllerConverter implements Converter
    {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value)
        {
            if (value == null || value.length() == 0)
            {
                return null;
            }
            TplTicketController controller = (TplTicketController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "tplTicketController");
            return controller.getTplTicket(getKey(value));
        }

        java.lang.Integer getKey(String value)
        {
            java.lang.Integer key;
            key = Integer.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Integer value)
        {
            StringBuilder sb = new StringBuilder();
            sb.append(value);
            return sb.toString();
        }

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object)
        {
            if (object == null)
            {
                return null;
            }
            if (object instanceof TplTicket)
            {
                TplTicket o = (TplTicket) object;
                return getStringKey(o.getTicketId());
            } else
            {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + TplTicket.class.getName());
            }
        }

    }

}
