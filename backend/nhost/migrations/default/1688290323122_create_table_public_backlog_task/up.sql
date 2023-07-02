CREATE TABLE "public"."backlog_task" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "backlog_id" uuid NOT NULL, "task_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("task_id") REFERENCES "public"."task"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("backlog_id") REFERENCES "public"."backlog"("id") ON UPDATE restrict ON DELETE restrict, UNIQUE ("backlog_id"), UNIQUE ("task_id"));COMMENT ON TABLE "public"."backlog_task" IS E'jointure: backlog have many tasks';
CREATE EXTENSION IF NOT EXISTS pgcrypto;