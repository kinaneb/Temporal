alter table "public"."backlog"
  add constraint "backlog_id_fkey"
  foreign key ("id")
  references "auth"."users"
  ("id") on update restrict on delete restrict;
