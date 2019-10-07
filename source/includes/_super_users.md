# Users as SuperAdmin

## Overview

These are all the users registered.

<aside class="notice">
    You need Super Admin permissions to access this information.
</aside>

## GET All Users as SuperAdmin

> Example to get all users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/users \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
[
    1,
    2,
    3
]
```

### Description

Gets a list of all the registered users

### Response

Type | Description
------- | -----------
| array of integers | id of the users registered


## DELETE Specific User as SuperAdmin

> Example to delete one user given the ID

```shell
curl --request DELETE \
  --url https://api.smarterselect.com/v1/users/:user_id \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
200 OK
```

### Description

Deletes an specific user given the ID
