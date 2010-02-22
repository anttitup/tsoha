CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "comment" text, "posted" datetime, "created_at" datetime, "updated_at" datetime, "image_id" integer, "user_id" integer);
CREATE TABLE "images" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "picture_file_name" varchar(255), "picture_content_type" varchar(255), "picture_file_size" integer, "picture_updated_at" datetime, "user_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "pasword" varchar(255), "email" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20100212172014');

INSERT INTO schema_migrations (version) VALUES ('20100212172117');

INSERT INTO schema_migrations (version) VALUES ('20100212172256');

INSERT INTO schema_migrations (version) VALUES ('20100213091607');

INSERT INTO schema_migrations (version) VALUES ('20100214170540');

INSERT INTO schema_migrations (version) VALUES ('20100214172032');

INSERT INTO schema_migrations (version) VALUES ('20100214172330');

INSERT INTO schema_migrations (version) VALUES ('20100214194911');

INSERT INTO schema_migrations (version) VALUES ('20100214194953');

INSERT INTO schema_migrations (version) VALUES ('20100215105237');