alter table "public"."backlog" add column "updatedAt" timestamptz
 null default now();

CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updatedAt"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updatedAt" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_backlog_updatedAt"
BEFORE UPDATE ON "public"."backlog"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updatedAt"();
COMMENT ON TRIGGER "set_public_backlog_updatedAt" ON "public"."backlog"
IS 'trigger to set value of column "updatedAt" to current timestamp on row update';
