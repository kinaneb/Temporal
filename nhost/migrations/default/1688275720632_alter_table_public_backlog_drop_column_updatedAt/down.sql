alter table "public"."backlog" alter column "updatedAt" set default now();
alter table "public"."backlog" alter column "updatedAt" drop not null;
alter table "public"."backlog" add column "updatedAt" timestamptz;
