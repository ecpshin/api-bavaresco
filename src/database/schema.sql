CREATE DATABASE supermarket;

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;

CREATE TABLE IF NOT EXISTS categories(
    id BIGSERIAL PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS products(
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "description" TEXT DEFAULT 'Produto sem descrição.',
    "category_id" BIGINT REFERENCES categories (id)    
);