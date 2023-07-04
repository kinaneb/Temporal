alter table "public"."task"
  add constraint "task_dayPlanning_ListTaskPriority_fkey"
  foreign key ("dayPlanning_ListTaskPriority")
  references "public"."dayPlanning"
  ("id") on update restrict on delete restrict;
