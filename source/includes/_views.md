# Views

## Overview

Endpoints related to the views created on your account. You can check all of the them, create a new one (POST), update it (PUT, PATCH) or delete it (DELETE).

## GET Retrieve View on your Account

> Example to retrieve all the views in your Account, including the ones by default.

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/admins/views \
  --header 'authorization: Bearer {token}' \
```

> Response

```shell
{
  "data": [
    {
      "id": "10",
      "type": "view",
      "attributes": {
        "name": "Today's Applications",
        "default": true,
        "favorite": null,
        "program_id": null,
        "user_id": null,
        "created_at": "2019-10-08T22:19:17.051Z",
        "updated_at": "2019-10-08T22:19:17.051Z"
      },
      "relationships": {
        "filters": {}
      },
      "links": {
        "self": "https://api.smarterselect.com/v1/admins/views/10",
        "filters": "https://api.smarterselect.com/v1/admins/views/10"
      }
    }
  ],
  "included": [
    {
      "id": "1",
      "type": "filter",
      "attributes": {
        "db_name": "apps.created_on",
        "values": [
          {
            "id": "2",
            "type": "filter_value",
            "attributes": {
              "value": "now()",
              "comparison": "=",
              "created_at": "2019-10-09T16:41:23.460Z",
              "updated_at": "2019-10-09T22:41:20.489Z"
            }
          }
        ],
        "created_at": "2019-10-09T16:29:35.773Z",
        "updated_at": "2019-10-09T16:29:35.773Z"
      },
      "links": {
        "self": "https://staging.api.smarterselect.com/v1/admins/views/10.1"
      }
    }
  ],
  "meta": {
    "total": 1
  }
}
```

### Description

Get the information for the View on your account, including default, and shows the information of the filters applied to it.

### HTTP Request

`GET https://api.smarterselect.com/v1/admins/views`

### Response

| Property | Record | Type | Description
| -------- | ------- | ---- | -----------
| <code>id</code> | view | integer | auto-generated object identifier of the view
| <code>type</code> | view | string | type of this object.
| <code>atributes[name]</code> | view | string | name given to the view
| <code>atributes[default]</code> | view | boolean | if this view is a default one
| <code>attributes[favorite]</code> | view | boolean | if this view is a favorite
| <code>atributes[program_id]</code> | view | integer | if the view a program where it should act. If the view is default, then this attribute is null
| <code>atributes[user_id]</code> | view | integer | id of the user that is owner. If the view is default doesn't have an owner
| <code>atributes[created_at]</code> | view | datetime | when this view was created
| <code>atributes[updated_at]</code> | view | datetime | last time it was updated
| <code>relationships[filters]</code> | view | string | relations to other filters
| <code>links[self]</code> | view | string | link to this view
| <code>links[filters]</code> | view | string | link to this view's filters
| <code>id</code> | filter | string | auto-generated object identifier of the filter
| <code>type</code> | filter | string | type of the object, filter
| <code>atributes[db_name]</code> | filter | string | attribute of the table that will be used for filtering
| <code>id]</code>| filter[filter_value] | string | auto-generated object identifier of the filter_value
| <code>type]</codd> | filter[filter_value] | string | type of the object, filter_value
| <code>value]</code> | filter[filter_value] | string | data that will be used to compare
| <code>comparison</code> | filter[filter_value] | string | operator that will be used to compare
| <code>created_at</code> | filter[filter_value] | datetime | datetime when this filter_value was created
| <code>updated_at</code> | filter[filter_value] | datetime | datetime when this filter_value was updated
| <code>atributes[created_at]</code> | filter | string | datetime when this filter was created
| <code>atributes[updated_at]</code> | filter | string | datetime when this filter was updated
| <code>links[self]</code> | filter | string | link to this filter_value

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
    "favorite": true,
    "default": false
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
|<code>name</code> <strong class="required">required</strong> | body content | string | name of the view
|<code>type</code> <strong class="required">required</strong> | body content | string | type of the new view. The type MUST exists
|<code>user_id</code> | body content | integer | user that will have the new view
|<code>program_id</code> | body content | integer | program that will have the new view.
|<code>favorite</code> | body content | boolean | if this view will be favorite
|<code>default</code> | body content | integer | if this view is default. If <code>program_id</code> is null, then default should be set to true.

## PUT / PATCH Update View on your Account

> Example to update a view in your account. You can use <code>PUT</code> for a complete update, or <code>PATCH</code> for small changes.

```shell
curl --request { PUT | PATCH } \
  --url https://api.smarterselect.com/v1/admins/views/:id \
  --header 'authorization: Bearer {token}'
  --header 'content-type: application/json' \
  --data '{
    "name": "test view",
    "type": "View::App",
    "user_id": 123456,
    "program_id": 12586,
    "favorite": false,
    "default": false
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
| {name | type | user_id | program_id} | body request | string | parameters that want to be changed

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
