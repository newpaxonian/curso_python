CREATE TABLE "cards" (
	"id"	INTEGER NOT NULL UNIQUE,
	"client_id"	INTEGER NOT NULL,
	"card_number"	TEXT NOT NULL,
	"card_type"	TEXT NOT NULL,
	"issue_date"	TEXT NOT NULL,
	"expiration_date"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	CONSTRAINT "clients_pk" FOREIGN KEY("client_id") REFERENCES "clients"("id")
);


CREATE TABLE "clients" (
	"id"	INTEGER NOT NULL UNIQUE,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"phone"	TEXT NOT NULL,
	"date_of_birth"	TEXT NOT NULL,
	"gender"	TEXT,
	"address"	TEXT NOT NULL,
	"status"	BOOLEAN NOT NULL,
	"activation_date"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);