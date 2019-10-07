# Evaluator Groups

## Overview

Those are all evaluators groups related to your account.

## GET Eval Groups

> Example to get all eval groups

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/admins/eval_groups \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "1234",
      "type": "eval_group",
      "attributes": {
        "name": "My Eval Group 1"
      }
    },
    {
      "id": "5678",
      "type": "eval_group",
      "attributes": {
        "name": "My Eval Group 2"
      }
    }
  ]
}
```

### Description

Gets a list of all your eval groups objects

### Response

| Property | Type | Description
| -------- | ---- | -----------
| <code>id</code> | integer | auto-generated object identifier.
| <code>type</code> | string | object type.
| <code>attributes[name]</code> | string | name of the eval group.

## POST Remove Users From Eval Group

> Example to remove list of users from an eval group

```shell
curl --request POST \
  --url https://api.smarterselect.com/v1/admins/eval_groups/:eval_group_id/remove_users \
  --header 'authorization: Bearer {token}' \
  --data '{
  	"user_ids": [123458]
  }'
```

> Response body

```shell
{
  "data": [
    {
      "id": "123458",
      "type": "user",
      "attributes": {
        "email": "jane+admin@smarterselect.com",
        "first_name": "Jane",
        "last_name": "Doe",
        "organization_name": "Smarter Select",
        "can_receive_sms": true,
        "phone": null,
        "created_on": "2012-01-28 13:07:11",
        "last_login": "2019-05-29 11:08:05",
        "is_using_sso": true
      },
      "links": {
        "apps": null,
        "evals": null
      }
    }
  ]
}
```

### Description

Remove a list of user from a given eval group

### HTTP Request

`GET https://api.smarterselect.com/v1/admins/eval_groups/:eval_group_id/remove_users`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :eval_group_id <strong class="required">required</strong> | path parameter | integer | ID of the Eval Group where you want to remove a user.
| user_ids <strong class="required">required</strong> | body content | array of integers | Users ids to remove from given eval group.

### Response

It returns all removed users basic data, refer object to <a href="#get-all-users">users endpoint</a>
