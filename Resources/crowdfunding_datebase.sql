
CREATE TABLE "Subcategory" (
    "subcat_id" varchar   NOT NULL,
    "subcat_name" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcat_id"
     )
);

CREATE TABLE "Category" (
    "cat_id" varchar   NOT NULL,
    "cat_name" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "cat_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "l_namename" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "compaign_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" varchar   NOT NULL,
    "pledged" varchar   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" varchar NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "compaign_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category" FOREIGN KEY("category")
REFERENCES "Category" ("cat_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory" FOREIGN KEY("subcategory")
REFERENCES "Subcategory" ("subcat_id");

