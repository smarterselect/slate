# Views

## Overview

Endpoints related to the views created on your account. You can check all of the them, create a new one (POST), update it (PUT, PATCH) or delete it (DELETE).

## POST Create View on your Account

> Example to create a view in your account.

```shell
curl --request POST \
  --url https://api.smarterselect.com/v1/admins/views \
  --header 'authorization: Bearer {token}' \
  --header 'content-type: application/json' \
  --data '{
    "name": "test view",
    "type": "View::App",
    "user_id": 123456,
    "program_id": 12586
  }'
```

> Response

```shell
201 Created
```

### Description

Create a new view in your account.

### HTTP Request

`POST https://api.smarterselect.com/v1/admins/views`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| name <strong class="required">required</strong> | body content | string | name of the view
| type <strong class="required">required</strong> | body content | string | type of the new view. The type MUST exists.
| user_id <strong class="required">required</strong> | body content | integer | user that will have the new view
| program_id <strong class="required">required</strong> | body content | integer | program that will have the new view

## PUT/PATCH Update View on your Account

> Example to update a view in your account.

```shell
curl --request { PUT | PATCH } \
  --url https://api.smarterselect.com/v1/admins/views/:id \
  --header 'authorization: Bearer {token}'
  --header 'content-type: application/json' \
  --data '{
    "name": "test view",
    "type": "View::App",
    "user_id": 123456,
    "program_id": 12586
  }'

```

> Response

```shell
201 Created
```

### Description

Update a view given the ID.

### HTTP Request

`{ PUT | PATCH } https://api.smarterselect.com/v1/admins/views/:view_id`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :view_id <strong class="required">required</strong> | path parameter | integer | id of the view that will be modified.

## DELETE Delete View on your Account

> Example to delete a view in your account.

```shell
curl --request DELETE \
  --url https://api.smarterselect.com/v1/admins/views \
  --header 'authorization: Bearer {token}'
```

> Response

```shell
201 Created
```

### Description

Delete a new view in your account.

### HTTP Request

`DELETE https://api.smarterselect.com/v1/admins/views:view_id`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :view_id <strong class="required">required</strong> | path parameter | integer | id of the view that will be modified.
