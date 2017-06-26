
/* Einfuegen der Cluster */

insert into tpl_cluster (cluster_id, clusterSupervisor, name) values (1, null, 'Orenitram');
insert into tpl_cluster (cluster_id, clusterSupervisor, name) values (2, null, 'Sugar Mix');
insert into tpl_cluster (cluster_id, clusterSupervisor, name) values (3, null, 'Lidocaine Hydrochloride');
insert into tpl_cluster (cluster_id, clusterSupervisor, name) values (4, null, 'Liqufruta');
insert into tpl_cluster (cluster_id, clusterSupervisor, name) values (5, null, 'Hypophysis Stannum');

/* Einfuegen der Schulen */

insert into tpl_school (school_id, cluster_id, designation, address, name) values (1, 4, 'Cetirizine Hydrochloride', '56 Carioca Trail', 'Cephalexin');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (2, 2, 'Docusate Sodium', '397 Jenna Circle', 'Minocin');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (3, 1, 'Levaquin', '8196 Clyde Gallagher Lane', 'Metadate CD');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (4, 3, 'Lisinopril', '08522 Gina Point', 'Thymus Mercurius');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (5, 5, 'Hydroxyzine Pamoate', '0 Luster Hill', 'Cladosporium cladosporioides');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (6, 3, 'sunmark acid reducer', '46 Steensland Court', 'simvastatin');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (7, 2, 'Antiseptic Swab', '59226 Mayfield Center', 'QuickFlex');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (8, 3, 'Clonidine Hydrochloride', '1 Schmedeman Parkway', 'WERA');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (9, 1, 'Gabapentin', '45 Mccormick Court', 'PENICILLIN G POTASSIUM');
insert into tpl_school (school_id, cluster_id, designation, address, name) values (10, 5, 'LiquiTears', '505 Clyde Gallagher Park', 'Exchange Select Burn Relief');

/* Einfuegen der Rollen */

insert into tpl_role (role_id, name, note) values (1, 'Gilles', 'bibendum');
insert into tpl_role (role_id, name, note) values (2, 'Latashia', 'rutrum at');
insert into tpl_role (role_id, name, note) values (3, 'Meryl', 'libero rutrum ac lobortis vel');
insert into tpl_role (role_id, name, note) values (4, 'Siusan', 'nunc');
insert into tpl_role (role_id, name, note) values (5, 'Raff', 'neque libero convallis');

/* Einfuegen der User*/

insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (1, 4, 10, 'Starla', 'Rushe', 'srushe0@umn.edu', 'aWrnV9H', '2017-04-10', '86-(380)987-4082', '2016-12-19');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (2, 4, 9, 'Giffy', 'Monelle', 'gmonelle1@usa.gov', 'Cf35gDYW', '2017-02-15', '62-(419)746-4097', '2016-12-20');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (3, 3, 6, 'Nicholle', 'Hadwick', 'nhadwick2@surveymonkey.com', 'FuJvRDjfom', '2016-11-09', '381-(515)667-0105', '2016-10-07');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (4, 2, 9, 'Wilhelm', 'Manley', 'wmanley3@jigsy.com', '2xtNaNDRpU3', '2017-03-18', '86-(728)760-9600', '2016-08-19');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (5, 1, 6, 'Celisse', 'Kordes', 'ckordes4@wired.com', '9OdeDajXj', '2017-05-02', '57-(609)896-7370', '2016-09-25');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (6, 2, 8, 'Hillyer', 'Ezzell', 'hezzell5@photobucket.com', 'LRT31h', '2016-10-06', '963-(854)137-8483', '2017-02-10');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (7, 2, 7, 'Mariel', 'Fossey', 'mfossey6@zdnet.com', 'AIkWlW', '2017-01-07', '7-(272)627-9473', '2016-11-16');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (8, 2, 9, 'Dru', 'Kingscott', 'dkingscott7@ibm.com', 'BE1n5y', '2016-08-25', '30-(791)625-9901', '2017-05-11');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (9, 1, 5, 'Brigg', 'Allington', 'ballington8@marriott.com', '9TsQFFML', '2017-02-06', '54-(461)696-0686', '2017-02-02');
insert into tpl_user (user_id, role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) values (10, 4, 5, 'Granger', 'Bodechon', 'gbodechon9@ed.gov', 'd7cEybFDC5te', '2017-03-18', '261-(958)175-8750', '2017-06-18');

/* Einfuegen der Tickets*/

insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (1, 8, 'proin at turpis a pede posuere', '2016/08/29', '2016/07/20', 4);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (2, 8, 'posuere', '2016/09/24', '2017/05/22', 2);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (3, 9, 'justo pellentesque viverra pede ac diam', '2016/09/28', '2017/04/23', 3);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (4, 7, 'praesent', '2016/12/15', null, 3);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (5, 1, 'lacinia erat vestibulum sed magna at', '2016/10/06', '2017/04/08', 1);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (6, 10, 'eu', '2017/04/25', null, 1);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (7, 10, 'sit amet eleifend', '2017/01/23', '2017/03/01', 1);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (8, 2, 'non quam', '2017/04/04', '2017/02/24', 1);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (9, 4, 'maecenas pulvinar', '2017/01/29', null, 1);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (10, 9, 'rhoncus mauris enim leo rhoncus sed vestibulum sit', '2016/08/30', '2017/03/21', 2);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (11, 9, 'feugiat non', '2016/09/07', null, 3);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (12, 4, 'aenean lectus pellentesque', '2017/06/23', '2016/11/07', 3);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (13, 9, 'vulputate elementum nullam varius nulla', '2017/02/03', '2016/07/13', 3);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (14, 6, 'nulla tellus in sagittis dui vel nisl duis ac', '2017/02/01', null, 2);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (15, 9, 'vestibulum rutrum rutrum neque aenean auctor', '2016/07/26', '2017/03/26', 4);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (16, 4, 'in sapien iaculis congue vivamus', '2017/01/30', '2017/01/09', 1);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (17, 9, 'nulla nunc purus phasellus in felis donec semper sapien a', '2016/09/08', '2016/09/11', 3);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (18, 4, 'venenatis', '2017/04/10', '2017/01/16', 2);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (19, 6, 'interdum mauris ullamcorper purus sit', '2016/09/22', '2016/07/02', 2);
insert into tpl_ticket (ticket_id, user_id, heading, created, closed, priority) values (20, 5, 'gravida nisi at nibh in hac habitasse platea', '2016/11/14', null, 4);

/* Einfuegen der Notizen*/

insert into tpl_note (note_id, ticket_id, created, text) values (1, 2, '2017-01-27', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse');
insert into tpl_note (note_id, ticket_id, created, text) values (2, 6, '2016-07-13', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere');
insert into tpl_note (note_id, ticket_id, created, text) values (3, 12, '2017-06-12', 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet');
insert into tpl_note (note_id, ticket_id, created, text) values (4, 6, '2017-01-06', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into tpl_note (note_id, ticket_id, created, text) values (5, 13, '2017-06-19', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim');
insert into tpl_note (note_id, ticket_id, created, text) values (6, 13, '2017-04-20', 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis');
insert into tpl_note (note_id, ticket_id, created, text) values (7, 4, '2017-03-28', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum');
insert into tpl_note (note_id, ticket_id, created, text) values (8, 15, '2017-04-11', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam');
insert into tpl_note (note_id, ticket_id, created, text) values (9, 6, '2017-03-31', 'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti');
insert into tpl_note (note_id, ticket_id, created, text) values (10, 1, '2017-04-09', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu');
insert into tpl_note (note_id, ticket_id, created, text) values (11, 4, '2016-11-11', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam');
insert into tpl_note (note_id, ticket_id, created, text) values (12, 18, '2017-04-29', 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec');
insert into tpl_note (note_id, ticket_id, created, text) values (13, 13, '2017-01-06', 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna');
insert into tpl_note (note_id, ticket_id, created, text) values (14, 8, '2016-08-16', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus');
insert into tpl_note (note_id, ticket_id, created, text) values (15, 11, '2016-10-03', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo');
insert into tpl_note (note_id, ticket_id, created, text) values (16, 7, '2016-10-24', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis');
insert into tpl_note (note_id, ticket_id, created, text) values (17, 6, '2017-04-11', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit');
insert into tpl_note (note_id, ticket_id, created, text) values (18, 8, '2017-05-21', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla');
insert into tpl_note (note_id, ticket_id, created, text) values (19, 11, '2017-05-13', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et');
insert into tpl_note (note_id, ticket_id, created, text) values (20, 8, '2017-02-26', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis');
insert into tpl_note (note_id, ticket_id, created, text) values (21, 10, '2016-08-26', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim');
insert into tpl_note (note_id, ticket_id, created, text) values (22, 12, '2016-09-21', 'eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis');
insert into tpl_note (note_id, ticket_id, created, text) values (23, 18, '2016-08-26', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into tpl_note (note_id, ticket_id, created, text) values (24, 3, '2016-06-29', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem');
insert into tpl_note (note_id, ticket_id, created, text) values (25, 8, '2016-12-20', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac');
insert into tpl_note (note_id, ticket_id, created, text) values (26, 20, '2016-09-07', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam');
insert into tpl_note (note_id, ticket_id, created, text) values (27, 19, '2017-01-20', 'sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris');
insert into tpl_note (note_id, ticket_id, created, text) values (28, 7, '2016-08-06', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus');
insert into tpl_note (note_id, ticket_id, created, text) values (29, 3, '2016-09-21', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna');
insert into tpl_note (note_id, ticket_id, created, text) values (30, 16, '2016-08-03', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum');

/* Zuweisen der SuperVisoren beim Cluster*/
UPDATE tpl_cluster SET clusterSupervisor = 1 WHERE cluster_id = 1;
UPDATE tpl_cluster SET clusterSupervisor = 2 WHERE cluster_id = 2;
UPDATE tpl_cluster SET clusterSupervisor = 3 WHERE cluster_id = 3;
UPDATE tpl_cluster SET clusterSupervisor = 4 WHERE cluster_id = 4;
UPDATE tpl_cluster SET clusterSupervisor = 5 WHERE cluster_id = 5;