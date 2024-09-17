CREATE TABLE campaign (
    cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
	country VARCHAR (10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id	VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL
	PRIMARY KEY (cf_id)
);
CREATE TABLE category(
	category_id VARCHAR(10) NOT NULL,
	category_name VARCHAR(50) NOT NULL
	FOREIGN KEY (category_id) REFERENCES campaign (category_id),
	PRIMARY KEY (category_id, category_name)
);
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory_name VARCHAR(50) NOT NULL
	FOREIGN KEY (subcategory_id) REFERENCES campaign (subcategory_id),
	PRIMARY KEY (subcategory_id, subcategory_name)
);
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
	FOREIGN KEY (contact_id) REFERENCES campaign (contact_id)
	PRIMARY KEY (contact_id)

);
SELECT * from campaign;
SELECT * from category;
SELECT * from subcategory;
SELECT * from contacts