// import express
import express from "express";
 
// import function from controller
import { showProducts, showProductById, createProduct, updateProduct, deleteProduct } from "./controllers/product.js";
 
// init express router
const router = express.Router();
 
// Get All Product
router.get('/api/products', showProducts);
 
// Get Single Product
router.get('/api/products/:id', showProductById);
 
// Create New Product
router.post('/api/products', createProduct);
 
// Update Product
router.put('/api/products/:id', updateProduct);
 
// Delete Product
router.delete('/api/products/:id', deleteProduct);
 
// export default router
export default router;