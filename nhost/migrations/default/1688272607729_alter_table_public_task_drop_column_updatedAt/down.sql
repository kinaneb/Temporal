alter table "public"."task" alter column "updatedAt" set default now();
alter table "public"."task" alter column "updatedAt" drop not null;
alter table "public"."task" add column "updatedAt" date;
