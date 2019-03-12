# Addresses

## Get a Specific Address

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "owner_id": "FOO",
    "province": "Beijing",
    "city": "Beijing",
    "district": "Haidian",
    "address": "No.XX XXX Road",
    "zip": "100000",
  }
}
```

This endpoint retrieves a specific address

### HTTP Request

`GET http://example.com/api/v1/addresses/<ID>`

### URL Parameters

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
ID | Integer | True | - | The ID of the address to retrieve 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> or <code>CUSTOMER</code> role before using this API.
If you are <code>SELLER</code>, then this address must belong to you or your customers.
If you are <code>CUSTOMER</code>, then this address must belong to you.
</aside>

## Search Addresses by Parameters

> The response JSON structured like this, shows all addresses belongs to customer `FOO`

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": [
    {
      "id": 1,
      "owner_id": "FOO",
      "province": "Beijing",
      "city": "Beijing",
      "district": "Haidian",
      "address": "No.XX XXX Road",
      "zip": "100000",
    }
  ]
}
```

This endpoint retrieves all orders that satisfy given parameters

### HTTP Request

`GET http://example.com/api/v1/addresses`

### Query Parameters

Your should query with at least one parameter from this list.

Parameter | Type | Required | Default | Description 
--------- | -----------|--------- |--------- |--------- 
owner_id | String | False | - | Username of the owner 

<aside class="notice">
Remember — You must be authenticated with <code>SELLER</code> or <code>CUSTOMER</code> role before using this API.
If you are <code>SELLER</code>, then this address must belong to you or your customers from your current orders.
If you are <code>CUSTOMER</code>, then this address must belong to you.
</aside>


## Create an Address

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": {
    "id": 1,
    "owner_id": "FOO",
    "province": "Beijing",
    "city": "Beijing",
    "district": "Haidian",
    "address": "No.XX XXX Road",
    "zip": "100000",
  }
}
```

This endpoint creates a new address.

### HTTP Request

`POST http://example.com/api/v1/addresses`

### Query Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
owner_id | String | True | - | Username of the owner 
province | String | True | - | Province 
city | String | True | - | City 
district | String | True | - | District 
address | String | True | - | Detailed address 
zip | String | False | 000000 | Zip code 

<aside class="notice">
Remember — You must be authenticated with the user you specified before using this API
</aside>

