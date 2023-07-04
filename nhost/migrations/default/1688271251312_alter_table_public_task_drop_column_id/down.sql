alter table "public"."task" alter column "id" set default nextval('task_id_seq'::regclass);
alter table "public"."task" alter column "id" drop not null;
alter table "public"."task" add column "id" int4;
