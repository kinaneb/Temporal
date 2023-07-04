alter table "public"."backlog" drop constraint "backlog_id_fkey",
  add constraint "backlog_user_id_fkey"
  foreign key ("user_id")
  references "auth"."users"
  ("id") on update restrict on delete restrict;
