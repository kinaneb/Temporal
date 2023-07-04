alter table "public"."backlog" drop constraint "backlog_user_id_fkey",
  add constraint "backlog_id_fkey"
  foreign key ("id")
  references "auth"."users"
  ("id") on update restrict on delete restrict;
