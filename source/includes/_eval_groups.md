# Eval Groups

## Overview

Those are all evaluators groups related to your account.

## GET Eval Groups

> Example to get all eval groups

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts/:account_id/eval_groups \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "1233",
      "type": "eval_group",
      "attributes": {
        "name": "My eval group 1"
      }
    },
    {
      "id": "4312",
      "type": "eval_group",
      "attributes": {
        "name": "My Eval group 2"
      }
    }
  ]
}
```

### Description

Gets a list of all your eval groups objects

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/eval_groups`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :account_id <strong class="required">required</strong> | path parameter | integer | The account ID got it from <a href="#account">accounts endpoint</a>

### Response

| Property | Type | Description
| -------- | ---- | -----------
| <code>id</code> | integer | auto-generated object identifier.
| <code>type</code> | string | object type.
| <code>attributes[name]</code> | string | name of the eval group.

## POST Remove Users

> Example to remove list of users from an eval group

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts/:account_id/eval_groups/:eval_group_id/remove_users \
  --header 'authorization: Bearer {token}'
  --data '{
  	"user_ids": [982091]
  }'
```

> Response body

```shell
{
  "data": [
    {
      "id": "982091",
      "type": "user",
      "attributes": {
        "email": "evalautor@email.io",
        "first_name": "Evalautor Name",
        "last_name": "Evaluator Last Name",
        "organization_name": "Eval. Org.",
        "can_receive_sms": false,
        "phone": "",
        "created_on": "2018-03-01 15:07:43",
        "last_login": "2018-04-09 11:25:41",
        "is_using_sso": false
      }
    }
  ]
}
```

### Description

Remove a list of user from a given eval group

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/eval_groups/:eval_group_id/remove_users`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :account_id <strong class="required">required</strong> | path parameter | integer | The account ID got it from <a href="#account">accounts endpoint</a>
| :user_ids <strong class="required">required</strong> | body content | array of integers | Users ids to remove from given eval group.

### Response

It returns all removed users basic data, refer object to <a href="#get-all-users">users endpoint</a>
