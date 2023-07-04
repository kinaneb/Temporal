alter table "public"."task" alter column "createdAt" set default now();
alter table "public"."task" alter column "createdAt" drop not null;
alter table "public"."task" add column "createdAt" date;
