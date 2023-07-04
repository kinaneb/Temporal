alter table "public"."task"
  add constraint "task_backlog_id_fkey"
  foreign key ("backlog_id")
  references "public"."backlog"
  ("id") on update restrict on delete restrict;
