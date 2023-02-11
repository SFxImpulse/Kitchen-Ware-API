DROP TABLE IF EXISTS products CASCADE;

CREATE TABLE products (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  brand VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  product_code TEXT NOT NULL,
  quantity INTEGER NOT NULL
);