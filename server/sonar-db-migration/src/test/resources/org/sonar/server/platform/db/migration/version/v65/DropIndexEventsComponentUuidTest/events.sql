CREATE TABLE "EVENTS" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "UUID" VARCHAR(40) NOT NULL,
  "NAME" VARCHAR(400),
  "ANALYSIS_UUID" VARCHAR(50) NOT NULL,
  "COMPONENT_UUID" VARCHAR(50),
  "CATEGORY" VARCHAR(50),
  "EVENT_DATE" BIGINT NOT NULL,
  "CREATED_AT" BIGINT NOT NULL,
  "DESCRIPTION" VARCHAR(4000),
  "EVENT_DATA"  VARCHAR(4000)
);
CREATE INDEX "EVENTS_ANALYSIS" ON "EVENTS" ("ANALYSIS_UUID");
CREATE INDEX "EVENTS_COMPONENT_UUID" ON "EVENTS" ("COMPONENT_UUID");
CREATE UNIQUE INDEX "EVENTS_UUID" ON "EVENTS" ("UUID");
