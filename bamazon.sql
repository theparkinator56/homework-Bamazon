DROP DATABASE IF EXISTS bamazon;
-- Creates the "animals_db" database --
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (

id INTEGER(100) AUTO_INCREMENT NOT NULL,

product_name VARCHAR(255) NOT NULL,

department_name VARCHAR(255),

price INTEGER,

stock_quantity INTEGER,

PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Crowbar", "Tools", 350, 1);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cake", "Not a lie", 80, 1000);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Sandvich", "Healthy Snacks", 10, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Portal Gun", "Tools", 150000000, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Headcrab", "Pets", 150, 2000);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Jarate", "Foods", 20, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Briefcase", "Important Stuff", 8000, 2);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Glock", "Guns", 500, 86);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Companion Cube", "Pets", 320, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Gravity Gun", "Tools", 300000, 10);