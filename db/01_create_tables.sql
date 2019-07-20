CREATE TABLE "User" (
  "user_id" SERIAL,
  "email" varchar(50),
  "username" varchar(30),
  "password" varchar(30),
  PRIMARY KEY ("user_id")
);

CREATE TABLE "Peep" (
  "peep_id" SERIAL,
  "time_posted" timestamp,
  "maker_handle" varchar(50),
  "content" varchar(280),
  PRIMARY KEY ("peep_id")
);
