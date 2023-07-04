CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."slot" add column "user_id" uuid
 not null default gen_random_uuid();
