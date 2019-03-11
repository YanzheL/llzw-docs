# Users

## Registration

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": null
}
```

This endpoint register a new user.

### HTTP Request

`POST http://example.com/api/v1/users`

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
username | String | True | - | Username, \w+[\w\d]+ 
password | String | True | - | At least 1 upper case, 1 lower case, 1 digit and 1 symbol, min length = 8 
email | String | True | - | min length = 5, max length = 100 
phoneNumber | String | True | - | min length = 5, max length = 20 
role | String | True | - | One of [ 'SELLER', 'USER' ] 

## Real Name Verification

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": null
}
```

This endpoint retrieves a specific product with id = 1

### HTTP Request

`PATCH http://example.com/api/v1/users/<USERNAME>`

### URL Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
USERNAME | String | True | - | Username 

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
identityType | String | True | - | One of [ 'PRC_ID', 'PASSPORT' ] 
identityNumber | String | True | - | ID of specified document, min length = 1, max length = 20 
firstName | String | True | - | min length = 1, max length = 20 
lastName | String | True | - | min length = 1, max length = 20 

<aside class="notice">
Remember — You must be authenticated with the user you specified before using this API
</aside>

## Update Password

> The response JSON structured like this:

```json
{
  "responseId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
  "sucess": true,
  "data": null
}
```

This endpoint retrieves a specific product with id = 1

### HTTP Request

`PATCH http://example.com/api/v1/users/<USERNAME>`

### URL Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
USERNAME | String | True | - | Username 

### Request Parameters

Parameter | Type | Required | Default | Description 
--------- | ------- | -----------|--------- |--------- 
oldPassword | String | True | - | Current password 
newPassword | String | True | - | New password 

<aside class="notice">
Remember — You must be authenticated with the user you specified before using this API
</aside>

