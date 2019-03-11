# Products

## Get All Products

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": [
    {
      "id": 1,
      "valid": true,
      "seller_id": "USERNAME_OF_SELLER",
      "name": "NAME_OF_THIS_PRODUCT",
      "introduction": "INTRODUCTION_OF_THIS_PRODUCT",
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "price": "10.00",
      "maxDeliveryHours": "72",
      "ca": "CNAS",
      "certId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    },
    {
      "id": 2,
      "valid": true,
      "seller_id": "USERNAME_OF_SELLER",
      "name": "NAME_OF_THIS_PRODUCT",
      "introduction": "INTRODUCTION_OF_THIS_PRODUCT",
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "price": "10.00",
      "maxDeliveryHours": "72",
      "ca": "CNAS",
      "certId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    }
  ]
}
```

This endpoint retrieves all products.

### HTTP Request

`GET http://example.com/api/v1/products`

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
Page | Integer | False | 0 | The page index from 0 
Size | Integer | False | 20 | Page size 

## Get a Specific Product

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "valid": true,
    "seller_id": "USERNAME_OF_SELLER",
    "name": "NAME_OF_THIS_PRODUCT",
    "introduction": "INTRODUCTION_OF_THIS_PRODUCT",
    "createdAt": "2019-10-1 3:00 PM GMT+1:00",
    "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
    "price": 10.00,
    "maxDeliveryHours": 72,
    "ca": "CNAS",
    "certId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  }
}
```

This endpoint retrieves a specific product with id = 1

### HTTP Request

`GET http://example.com/api/v1/products/<ID>`

### URL Parameters

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
ID | Integer | True | - | The ID of the product to retrieve 

## Create a Product

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "valid": true,
    "seller_id": "USERNAME_OF_SELLER",
    "name": "NAME_OF_THIS_PRODUCT",
    "introduction": "INTRODUCTION_OF_THIS_PRODUCT",
    "createdAt": "2019-10-1 3:00 PM GMT+1:00",
    "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
    "price": 10.00,
    "maxDeliveryHours": 72,
    "ca": "CNAS",
    "certId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  }
}
```

This endpoint creates a new product.

### HTTP Request

`POST http://example.com/api/v1/products`

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
name | String | True | - | Name of this product 
introduction | String | True | - | Introduction of this product 
price | Float | True | - | Price of this product 
ca | String | True | - | Certificate authority name 
certId | String | True | - | Qualification certificate id 
maxDeliveryHours | String | False | 72 | Max delivery hours allowed of this product 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> role before using this API
</aside>

## Invalidate a Specific Product

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": null
}
```

This endpoint invalidates a specific product, so all stocks of this product will no longer be in the queue for sale.

It will NOT delete it from database.

### HTTP Request

`DELETE http://example.com/api/v1/products/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the product to invalidate 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> role before using this API
</aside>