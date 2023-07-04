alter table "public"."task"
  add constraint "task_status_fkey"
  foreign key ("status")
  references "public"."taskStatus"
  ("value") on update restrict on delete restrict;
