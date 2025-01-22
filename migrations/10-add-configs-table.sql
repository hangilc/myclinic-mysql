create table configs (
  name varchar(256) not null primary key,
  content json not null
);