# --- Sample dataset

# --- !Ups

insert into zones (id,name) values (  1,'ASH');
insert into zones (id,name) values (  2,'AMS');
insert into zones (id,name) values (  3,'Default');
insert into zones (id,name) values (  4,'SHA');
insert into zones (id,name) values (  5,'SIN');

insert into arecord (id,name,zones_id) values (  1,'ash.www',1);
insert into arecord (id,name,zones_id) values (  2,'ash.www',2);
insert into arecord (id,name,zones_id) values (  3,'ash.www',3);
insert into arecord (id,name,zones_id) values (  4,'ash.www',4);
insert into arecord (id,name,zones_id) values (  5,'ash.www',5);
insert into arecord (id,name,zones_id) values (  6,'ams.www',1);
insert into arecord (id,name,zones_id) values (  7,'ams.www',2);
insert into arecord (id,name,zones_id) values (  8,'ams.www',3);
insert into arecord (id,name,zones_id) values (  9,'ams.www',4);
insert into arecord (id,name,zones_id) values (  10,'ams.www',5);

insert into record (id,name,arecord_id) values (  1,'WWW US',1);
insert into record (id,name,arecord_id) values (  2,'WWW US',2);
insert into record (id,name,arecord_id) values (  3,'WWW US',3);
insert into record (id,name,arecord_id) values (  4,'WWW US',4);
insert into record (id,name,arecord_id) values (  5,'WWW US',5);
insert into record (id,name,arecord_id) values (  6,'WWW EU',1);
insert into record (id,name,arecord_id) values (  7,'WWW EU',2);
insert into record (id,name,arecord_id) values (  8,'WWW EU',3);
insert into record (id,name,arecord_id) values (  9,'WWW EU',4);
insert into record (id,name,arecord_id) values (  10,'WWW EU',5);

# --- !Downs

delete from zones;
delete from arecord;
delete from record;