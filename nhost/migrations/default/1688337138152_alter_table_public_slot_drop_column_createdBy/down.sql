alter table "public"."slot" alter column "createdBy" drop not null;
alter table "public"."slot" add column "createdBy" uuid;
