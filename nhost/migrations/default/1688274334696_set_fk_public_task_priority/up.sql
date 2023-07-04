alter table "public"."task"
  add constraint "task_priority_fkey"
  foreign key ("priority")
  references "public"."priority"
  ("value") on update restrict on delete restrict;
