const express = require("express");
const cors = require("cors");
const app = express();
const pool = require("./db");

app.use(express.json());
app.use(cors());

// Routes //

// get all products:

app.get("/products", async(req, res) => {
  try {
    const allProducts = await pool.query(
      "SELECT * FROM products"
    );
    res.json(allProducts.rows);
  } catch (err) {
    console.error(err.message);
  }
})

// get a product using it's product code and brand:

app.get("/products/product/:product_code", async(req, res) => {
  const { product_code } = req.params;
  try {
    const product = await pool.query(
      "SELECT * FROM products WHERE product_code = $1",
      [product_code]
    );
    res.json(product.rows);
  } catch (err) {
    console.error(err.message);
  }
});

app.get("/products/quantity", async(req, res) => {
  try {
    const lowQuantity = await pool.query(
      "SELECT * FROM products WHERE quantity < $1",
      [6]
    );
    res.json(lowQuantity.rows);
  } catch (err) {
    console.error(err.message);    
  }
});

app.get("/products/brand/:brand", async(req, res) => {
  const { brand } = req.params;
  try {
    const product = await pool.query(
      "SELECT * FROM products WHERE brand = $1",
      [brand]
    );
    res.json(product.rows);
  } catch (err) {
    console.error(err.message);
  }
});

// create a product:

app.post("/products", async(req, res) => {
  try {
    const { name, brand, description, product_code, quantity } = req.body;
    const newProduct = await pool.query(
      "INSERT INTO products (name, brand, description, product_code, quantity) VALUES ($1, $2, $3, $4, $5) RETURNING *",
      [name, brand, description, product_code, quantity]
    );
    res.json(newProduct.rows);
  } catch (err) {
    console.error(err.message);
  }
});

app.listen(8001, () => {
  console.log("Server is listening on port 8001")
});