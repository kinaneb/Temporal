CREATE TABLE "public"."task" ("id" serial, "createdAt" date NOT NULL DEFAULT now(), "updatedAt" date NOT NULL DEFAULT now(), PRIMARY KEY ("id") , UNIQUE ("id"));
