# Views

## Overview

Endpoints related to the views created on your account. You can check all of the them, create a new one (POST), update it (PUT, PATCH) or delete it (DELETE). 

## POST Create View on your Account

> Example to create a view created your account.

```shell
curl --request POST \
  --url https://api.smarterselect.com/v1/admins/views \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  
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

| Property | Type | Description
| -------- | ---- | -----------
| <code>id</code> | integer | auto-generated object identifier.
| <code>type</code> | string | object type.
| <code>attributes[name]</code> | string | name of the eval group.
