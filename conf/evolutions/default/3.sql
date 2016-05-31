# --- First database schema

# --- !Ups

set ignorecase true;

create table zones (
  id                        bigint not null,
  name                      varchar(255) not null,
  constraint pk_zones primary key (id))
;

create table arecord (
  id                        bigint not null,
  name                      varchar(255) not null,
  zones_id                  bigint,
  constraint pk_arecord primary key (id))
;

create table record (
  id                        bigint not null,
  name                      varchar(255) not null,
  arecord_id                bigint,
  constraint pk_record primary key (id))
;

create sequence zones_seq start with 1000;

create sequence arecord_seq start with 1000;

create sequence record_seq start with 1000;

alter table arecord add constraint fk_arecord_zones_1 foreign key (zones_id) references zones (id) on delete restrict on update restrict;
alter table record add constraint fk_record_arecord_1 foreign key (arecord_id) references arecord (id) on delete restrict on update restrict;
create index ix_record_arecord_1 on record (arecord_id);


# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists zones;

drop table if exists arecord;

drop table if exists record;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists zones_seq;

drop sequence if exists arecord_seq;

drop sequence if exists arecord_seq;
