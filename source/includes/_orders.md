# Orders

## Get All Orders

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": [
    {
      "id": 1,
      "quantity": 2,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "customer_id": "USERNAME_OF_CUSTOMER",
      "address_id": 5,
      "stock_id": "ID_OF_THE_STOCK_IT_BELONGS_TO",
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    },
    {
      "id": 2,
      "quantity": 5,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "customer_id": "USERNAME_OF_CUSTOMER",
      "address_id": 5,
      "stock_id": "ID_OF_THE_STOCK_IT_BELONGS_TO",
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    },
  ]
}
```

This endpoint retrieves all orders.

### HTTP Request

`GET http://example.com/api/v1/orders`

### Query Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
Page | Integer | False | 0 | The page index from 0 
Size | Integer | False | 20 | Page size 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> or <code>CUSTOMER</code> role before using this API
</aside>

## Get a Specific Order

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "quantity": 5,
    "createdAt": "2019-10-1 3:00 PM GMT+1:00",
    "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
    "customer_id": "USERNAME_OF_CUSTOMER",
    "address_id": 5,
    "stock_id": "ID_OF_THE_STOCK_IT_BELONGS_TO",
    "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "carrierName": "SF-Express"
  }
}
```

This endpoint retrieves a specific order

### HTTP Request

`GET http://example.com/api/v1/orders/<ID>`

### URL Parameters

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
ID | Integer | True | - | The ID of the order to retrieve 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> or <code>CUSTOMER</code> role before using this API
</aside>


## Search Orders by Parameters

> The response JSON structured like this, shows all orders belongs to customer `FOO`

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": [
    {
      "id": 1,
      "quantity": 2,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "customer_id": "FOO",
      "address_id": 5,
      "stock_id": 23333,
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    },
    {
      "id": 2,
      "quantity": 5,
      "createdAt": "2019-10-1 3:00 PM GMT+1:00",
      "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
      "customer_id": "FOO",
      "address_id": 5,
      "stock_id": 12345,
      "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
      "carrierName": "SF-Express"
    },
  ]
}
```

This endpoint retrieves all orders that satisfy given parameters

### HTTP Request

`GET http://example.com/api/v1/orders`

### Query Parameters

Your should query with at least one parameter from this list.

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
customer_id | String | False | - | Username of the customer 
address_id | Integer | False | - | Destination address of this order 
trackingId | String | False | - | Tracking ID of a shipped order 
stock_id | Integer | False | - | The stock ID it belongs to 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> or <code>CUSTOMER</code> role before using this API
</aside>

## Create an Order

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "quantity": 5,
    "createdAt": "2019-10-1 3:00 PM GMT+1:00",
    "updatedAt": "2019-10-1 3:00 PM GMT+1:00",
    "customer_id": "USERNAME_OF_CUSTOMER",
    "address_id": 5,
    "stock_id": "ID_OF_THE_STOCK_IT_BELONGS_TO",
    "trackingId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "carrierName": "SF-Express"
  }
}
```

This endpoint creates a new order.

### HTTP Request

`POST http://example.com/api/v1/orders`

### Query Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
product_id | Integer | True | - | ID of the product it belongs to 
quantity | Integer | True | - | Quantity of this order 
customer_id | String | True | - | Customer username who creates this order 
address_id | Integer | True | - | Destination address ID from address book 

<aside class="notice">
Remember — You must be authenticated with <code>CUSTOMER</code> role before using this API
</aside>