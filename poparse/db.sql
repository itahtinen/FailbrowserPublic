DROP TABLE IF EXISTS T_CASE;
DROP TABLE IF EXISTS T_LOG_TEXT;
DROP TABLE IF EXISTS T_SAMPLE;
DROP TABLE IF EXISTS T_SUITE;
DROP TABLE IF EXISTS T_LOG;
CREATE TABLE T_CASE(
  ID TEXT PRIMARY KEY NOT NULL,
  NAME TEXT NOT NULL,
  SUITEID TEXT NOT NULL
);
CREATE TABLE T_LOG(
  ID TEXT PRIMARY KEY NOT NULL,
  NAME TEXT NOT NULL,
  GENERATED TEXT NOT NULL
);
CREATE TABLE T_LOG_TEXT();
CREATE TABLE T_SAMPLE(
  ID SERIAL PRIMARY KEY,
  STATUS TEXT NOT NULL,
  NAME TEXT NOT NULL,
  CASEID TEXT NOT NULL,
  LOGID TEXT NOT NULL
);
CREATE TABLE T_SUITE(
  ID TEXT PRIMARY KEY NOT NULL,
  NAME TEXT NOT NULL,
  PARENTID TEXT,
  SOURCE TEXT
);