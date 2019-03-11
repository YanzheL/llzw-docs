# Stocks

## Get All Stocks

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": [
    {
      "id": 1,
      "valid": true,
      "product_id": 2333,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "producedAt": "2019-10-1 3:00 PM GMT+1:00",
      "inboundedAt": "2019-10-1 3:00 PM GMT+1:00",
      "shelfLife": 365,
      "totalQuantity": 10000,
      "currentQuantity": 6999,
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    },
    {
      "id": 2,
      "valid": true,
      "product_id": 2333,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "producedAt": "2019-10-1 3:00 PM GMT+1:00",
      "inboundedAt": "2019-10-1 3:00 PM GMT+1:00",
      "shelfLife": 365,
      "totalQuantity": 20000,
      "currentQuantity": 7988,
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    }
  ]
}
```

This endpoint retrieves all stocks.

### HTTP Request

`GET http://example.com/api/v1/stocks`

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
Page | Integer | False | 0 | The page index from 0 
Size | Integer | False | 20 | Page size 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> role before using this API
</aside>

## Get a Specific Stock

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "valid": true,
    "product_id": 2333,
    "createdAt": "2019-10-1 3:00 PM GMT+1:00",
    "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
    "producedAt": "2019-10-1 3:00 PM GMT+1:00",
    "inboundedAt": "2019-10-1 3:00 PM GMT+1:00",
    "shelfLife": 365,
    "totalQuantity": 20000,
    "currentQuantity": 7988,
    "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "carrierName": "SF-Express"
  }
}
```

This endpoint retrieves a specific product with id = 1

### HTTP Request

`GET http://example.com/api/v1/stocks/<ID>`

### URL Parameters

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
ID | Integer | True | - | The ID of the product to retrieve 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> role before using this API
</aside>

## Search Stocks by Parameters

> The response JSON structured like this, shows all stocks belongs to product `2333`

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": [
    {
      "id": 1,
      "valid": true,
      "product_id": 2333,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "producedAt": "2019-10-1 3:00 PM GMT+1:00",
      "inboundedAt": "2019-10-1 3:00 PM GMT+1:00",
      "shelfLife": 365,
      "totalQuantity": 10000,
      "currentQuantity": 6999,
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    },
    {
      "id": 2,
      "valid": true,
      "product_id": 2333,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "producedAt": "2019-10-1 3:00 PM GMT+1:00",
      "inboundedAt": "2019-10-1 3:00 PM GMT+1:00",
      "shelfLife": 365,
      "totalQuantity": 20000,
      "currentQuantity": 7988,
      "trackingId": "",
      "carrierName": ""
    }
  ]
}
```

This endpoint retrieves all stocks that satisfy given parameters

### HTTP Request

`GET http://example.com/api/v1/stocks`

### Request Parameters

Your should query with at least one parameter from this list.

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
product_id | Integer | False | - | ID of the product it belongs to 
shelfLife | Integer | False | - | Shelf-Life of the stock 
trackingId | String | False | - | Tracking ID of this shipment 
carrierName | String | False | - | Carrier Name of this shipment 
valid | Boolean | False | - | The status of this stock 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> or <code>USER</code> role before using this API
</aside>

## Create a Stock

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "valid": true,
    "product_id": "ID_OF_THE_PRODUCT_IT_BELONGS_TO",
    "createdAt": "2019-10-1 3:00 PM GMT+1:00",
    "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
    "producedAt": "2019-10-1 3:00 PM GMT+1:00",
    "inboundedAt": "",
    "shelfLife": 365,
    "totalQuantity": 20000,
    "currentQuantity": 7988,
    "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "carrierName": "SF-Express"
  }
}
```

This endpoint creates a new product.

### HTTP Request

`POST http://example.com/api/v1/stocks`

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
productId | String | True | - | ID of the product it belongs to 
producedAt | String | True | - | The producing date 
shelfLife | Integer | True | - | Shelf-Life of this stock 
totalQuantity | Integer | True | - | Total quantity of stock 
trackingId | String | False | NULL | Tracking ID of this shipment 
carrierName | String | False | NULL | Carrier Name of this shipment 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> role before using this API
</aside>

## Invalidate a Specific Stock

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": null
}
```

This endpoint invalidates a specific stock, so all items from this stock will no longer be in the queue for sale.

It will NOT delete it from database.

### HTTP Request

`DELETE http://example.com/api/v1/stocks/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the stock to invalidate 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> role before using this API
</aside>