# src
This is an API for an ecommerce platform admin to manage product inventory which contains below functionalitites:
1.Models/Schemas:
    Products [fields: id, name, quantity]
2. API to add products to the database
    URL [POST]: /products/create
3. API to list products
    URL [GET] : /products
4. API to delete products
    URL [DELETE] : /products/:id
5. API to update quantity of a product (can be incremented or decremented)
    URL [POST] : /products/:id/update_quantity/?number=10
