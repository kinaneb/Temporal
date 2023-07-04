alter table "public"."task" drop constraint "task_user_id_fkey",
  add constraint "task_user_id_fkey"
  foreign key ("user_id")
  references "auth"."users"
  ("id") on update restrict on delete cascade;
