# Users

## Overview

These are all users related to your account.

## GET All Users

> Example to get all account users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/admins/users \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "123456",
      "type": "user",
      "attributes": {
        "email": "john+provider@smarterselect.com",
        "first_name": "John",
        "last_name": "Doe",
        "organization_name": null,
        "can_receive_sms": false,
        "phone": null,
        "created_on": "2019-10-03 14:24:32",
        "last_login": "2019-10-03 16:37:25",
        "is_using_sso": null
      },
      "links": {
        "apps": null,
        "evals": null
      }
    },
    {
      "id": "123457",
      "type": "user",
      "attributes": {
        "email": "juan+evaluator@smarterselect.com",
        "first_name": "Juan",
        "last_name": "Perez",
        "organization_name": "SmarterSelect",
        "can_receive_sms": false,
        "phone": "",
        "created_on": "2019-10-03 15:23:09",
        "last_login": "2019-10-03 15:24:17",
        "is_using_sso": null
      },
      "links": {
        "apps": null,
        "evals": null
      }
    },
    {
      "id": "123458",
      "type": "user",
      "attributes": {
        "email": "jane+admin@smarterselect.com",
        "first_name": "Jane",
        "last_name": "Doe",
        "organization_name": "SmarterSelect",
        "can_receive_sms": false,
        "phone": null,
        "created_on": "2019-10-03 17:01:55",
        "last_login": null,
        "is_using_sso": null
      },
      "links": {
        "apps": null,
        "evals": null
      }
    }
  ],
  "meta": {
    "total": 3
  }
}
```

### Description

Gets a list of all your users

### Response

<table>
  <thead>
    <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>id</code></td>
      <td>string</td>
      <td>auto-generated object identifier</td>
    </tr>
    <tr>
      <td><code>type</code></td>
      <td>string</td>
      <td>object type</td>
    </tr>
    <tr>
      <td><code>attributes[email]</code></td>
      <td>string</td>
      <td>email registrated by the user</td>
    </tr>
    <tr>
      <td><code>attributes[first_name]</code></td>
      <td>string</td>
      <td>first name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[last_name]</code></td>
      <td>string</td>
      <td>last name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[organization_name]</code></td>
      <td>string</td>
      <td>organization name that the user belongs to</td>
    </tr>
    <tr>
      <td><code>attributes[can_receive_sms]</code></td>
      <td>boolean</td>
      <td>is user is able or not to receive sms</td>
    </tr>
    <tr>
      <td><code>attributes[phone]</code></td>
      <td>string</td>
      <td>phone number of the user</td>
    </tr>
    <tr>
      <td><code>attributes[created_on]</code></td>
      <td>datetime</td>
      <td>date and time when the user was created</td>
    </tr>
    <tr>
      <td><code>attributes[last_login]</code></td>
      <td>datetime</td>
      <td>last login of the user into SmarterSelect</td>
    </tr>
    <tr>
      <td><code>attributes[is_using_sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
    <tr>
      <td><code>links[apps]</code></td>
      <td>string</td>
      <td>link to the applicants</td>
    </tr>
    <tr>
      <td><code>links[evals]</code></td>
      <td>string</td>
      <td>link to the evaluators</td>
    </tr>
     <tr>
      <td><code>meta[total]</code></td>
      <td>integer</td>
      <td>total amount of accounts</td>
    </tr>
  </tbody>
</table>

## GET Admins

> Example to get all admin accounts

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/admins/users/admins \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "123456",
      "type": "user",
      "attributes": {
        "email": "john+provider@smarterselect.com",
        "first_name": "John",
        "last_name": "Doe",
        "organization_name": null,
        "can_receive_sms": false,
        "phone": "",
        "created_on": "2019-10-03 14:24:32",
        "last_login": "2019-10-03 16:37:25",
        "is_using_sso": null,
        "owner": true
      },
      "links": {
        "apps": null,
        "evals": null
      }
    },
    {
      "id": "123458",
      "type": "user",
      "attributes": {
        "email": "jane+admin@smarterselect.com",
        "first_name": "Jane",
        "last_name": "Doe",
        "organization_name": "SmarterSelect",
        "can_receive_sms": false,
        "phone": null,
        "created_on": "2019-10-03 17:01:55",
        "last_login": null,
        "is_using_sso": null,
        "owner": false
      },
      "links": {
        "apps": null,
        "evals": null
      }
    }
  ],
  "meta": {
    "total": 2
  }
}
```

### Description

Gets a list of all your admins

### Response

<table>
  <thead>
    <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>id</code></td>
      <td>string</td>
      <td>auto-generated object identifier</td>
    </tr>
    <tr>
      <td><code>type</code></td>
      <td>string</td>
      <td>object type</td>
    </tr>
    <tr>
      <td><code>attributes[email]</code></td>
      <td>string</td>
      <td>email registrated by the user</td>
    </tr>
    <tr>
      <td><code>attributes[first_name]</code></td>
      <td>string</td>
      <td>first name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[last_name]</code></td>
      <td>string</td>
      <td>last name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[organization_name]</code></td>
      <td>string</td>
      <td>organization name that the user belongs to</td>
    </tr>
    <tr>
      <td><code>attributes[can_receive_sms]</code></td>
      <td>boolean</td>
      <td>is user is able or not to receive sms</td>
    </tr>
    <tr>
      <td><code>attributes[phone]</code></td>
      <td>string</td>
      <td>phone number of the user</td>
    </tr>
    <tr>
      <td><code>attributes[created_on]</code></td>
      <td>datetime</td>
      <td>date and time when the user was created</td>
    </tr>
    <tr>
      <td><code>attributes[last_login]</code></td>
      <td>datetime</td>
      <td>last login of the user into SmarterSelect</td>
    </tr>
    <tr>
      <td><code>attributes[is_using_sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
    <tr>
      <td><code>attributes[owner]</code></td>
      <td>boolean</td>
      <td>if the user is owner or not in the giving account</td>
    </tr>
    <tr>
      <td><code>links[apps]</code></td>
      <td>string</td>
      <td>link to the applicants</td>
    </tr>
    <tr>
      <td><code>links[evals]</code></td>
      <td>string</td>
      <td>link to the evaluators</td>
    </tr>
     <tr>
      <td><code>meta[total]</code></td>
      <td>integer</td>
      <td>total amount of accounts</td>
    </tr>
  </tbody>
</table>


## GET Applicants

> Example to get all applicant accounts

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/admins/users/applicants \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "123456",
      "type": "user",
      "attributes": {
        "email": "john+provider@smarterselect.com",
        "first_name": "John",
        "last_name": "Doe",
        "organization_name": null,
        "can_receive_sms": false,
        "phone": "",
        "created_on": "2019-10-03 14:24:32",
        "last_login": "2019-10-03 16:37:25",
        "is_using_sso": null,
        "apps_size": 0
      },
      "links": {
        "apps": "/provider/list_user_apps_provider/123456?provider_id=1234",
        "evals": null
      }
    }
  ],
  "meta": {
    "total": 1
  }
}
```

### Description

Gets a list of all your applicant users objects

### Response

<table>
  <thead>
    <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>id</code></td>
      <td>string</td>
      <td>auto-generated object identifier</td>
    </tr>
    <tr>
      <td><code>type</code></td>
      <td>string</td>
      <td>object type</td>
    </tr>
    <tr>
      <td><code>attributes[email]</code></td>
      <td>string</td>
      <td>email registrated by the user</td>
    </tr>
    <tr>
      <td><code>attributes[first_name]</code></td>
      <td>string</td>
      <td>first name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[last_name]</code></td>
      <td>string</td>
      <td>last name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[organization_name]</code></td>
      <td>string</td>
      <td>organization name that the user belongs to</td>
    </tr>
    <tr>
      <td><code>attributes[can_receive_sms]</code></td>
      <td>boolean</td>
      <td>is user is able or not to receive sms</td>
    </tr>
    <tr>
      <td><code>attributes[phone]</code></td>
      <td>string</td>
      <td>phone number of the user</td>
    </tr>
    <tr>
      <td><code>attributes[created_on]</code></td>
      <td>datetime</td>
      <td>date and time when the user was created</td>
    </tr>
    <tr>
      <td><code>attributes[last_login]</code></td>
      <td>datetime</td>
      <td>last login of the user into SmarterSelect</td>
    </tr>
    <tr>
      <td><code>attributes[is_using_sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
    <tr>
      <td><code>attributes[app_size]</code></td>
      <td>integer</td>
      <td>quantity of apps this user has in your account</td>
    </tr>
    <tr>
      <td><code>links[apps]</code></td>
      <td>string</td>
      <td>link to the applicants</td>
    </tr>
    <tr>
      <td><code>links[evals]</code></td>
      <td>string</td>
      <td>link to the evaluators</td>
    </tr>
     <tr>
      <td><code>meta[total]</code></td>
      <td>integer</td>
      <td>total amount of accounts</td>
    </tr>
  </tbody>
</table>

## GET Evaluators

> Example to get all evaluator users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/admins/users/evaluators \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{{
  "data": [
    {
      "id": "123456",
      "type": "user",
      "attributes": {
        "email": "john+provider@smarterselect.com",
        "first_name": "John",
        "last_name": "Doe",
        "organization_name": null,
        "can_receive_sms": false,
        "phone": "",
        "created_on": "2019-10-03 14:24:32",
        "last_login": "2019-10-03 16:37:25",
        "is_using_sso": null,
        "active": true,
        "evals_size": 0
      },
      "links": {
        "apps": null,
        "evals": "/provider/list_user_evals_provider/123456?provider_id=1234"
      }
    },
    {
      "id": "123457",
      "type": "user",
      "attributes": {
        "email": "juan+evaluator@smarterselect.com",
        "first_name": "Juan",
        "last_name": "Perez",
        "organization_name": "SmarterSelect",
        "can_receive_sms": false,
        "phone": "",
        "created_on": "2019-10-03 15:23:09",
        "last_login": "2019-10-03 15:24:17",
        "is_using_sso": null,
        "active": true,
        "evals_size": 0
      },
      "links": {
        "apps": null,
        "evals": "/provider/list_user_evals_provider/123457?provider_id=1234"
      }
    }
  ],
  "meta": {
    "total": 2
  }
}
```

### Description

Gets a list of all your evaluator users objects

### Response

| Property | Type | Description
| -------- | ---- | -----------
| <code>id</code> | integer | auto-generated object identifier.
| <code>type</code> | string | object type.
| <code>attributes[email]</code> | string | email registrated by the user.
| <code>attributes[first_name]</code> | string | first name of the user.
| <code>attributes[last_name]</code> | string | last name of the user.
| <code>attributes[organization_name]</code> | string | organization name that the user belongs to.
| <code>attributes[can_receive_sms]</code> | boolean | is user is able or not to receive sms.
| <code>phone</code> | string | phone number of the user.
| <code>attributes[created_on]</code> | datetime | date and time when the user was created.
| <code>attributes[last_login]</code> | datetime | last login of the user into SmarterSelect.
| <code>attributes[is_using_sso]</code> | boolean | is your account using sso configuration.
| <code>attributes[evals_size]</code> | integer | quantity of evaluations this user has in your account.
| <code>links[apps]</code> | string | link to access to the user applicants.
| <code>links[evals]</code> | string | link to access to the user evaluations.
| <code>meta[total]</code> | object | quantity of users retrieved.

## PUT Edit User Role

> Example to promote/demote a user

```shell
curl --request PUT \
  --url https://api.smarterselect.com//v1/admins/users/:id/role \
  --header 'authorization: Bearer {token}' \
  --header 'content-type: application/json' \
  --data '{
  	"old_role": 1,
  	"new_role": 0
  }'
```

> Response body

```shell
200 OK
{
  "data": {
    "id": "123457",
    "type": "user",
    "attributes": {
      "email": "juan+evaluator@smarterselect.com",
      "first_name": "Juan",
      "last_name": "Perez",
      "organization_name": "SmarterSelect",
      "can_receive_sms": false,
      "phone": "",
      "created_on": "2019-10-03 15:23:09",
      "last_login": "2019-10-03 15:24:17",
      "is_using_sso": null,
      "role": true
    },
    "links": {
      "apps": null,
      "evals": null
    }
  },
  "meta": {
    "total": 1
  }
}
```

### Description

Promote or demote a user from your account list.

### HTTP Request

`GET https://api.smarterselect.com/v1/admins/users/:id/role`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :user_id <strong class="required">required</strong> | path parameter | integer | The user id is returned from any of the user lists.
| old_role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>
| new_role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>

## POST Deactivate User

> Example to deactivate a user

```shell
curl --request POST \
  --url https://api.smarterselect.com/v1/admins/users/:id/deactivate \
  --header 'authorization: Bearer {token}' \
  --header 'content-type: application/json' \
  --data '{
  	"role": 1
  }'
```

> Response body

```shell
200 OK

{
  "data": {
    "id": "123457",
    "type": "user",
    "attributes": {
      "email": "juan+evaluator@smarterselect.com",
      "first_name": "Juan",
      "last_name": "Perez",
      "organization_name": "SmarterSelect",
      "can_receive_sms": false,
      "phone": "",
      "created_on": "2019-10-03 15:23:09",
      "last_login": "2019-10-03 15:24:17",
      "is_using_sso": null,
      "role": true
    },
    "links": {
      "apps": null,
      "evals": null
    }
  },
  "meta": {
    "total": null
  }
}
```

### Description

Deactivate a user from your account list.

### HTTP Request

`POST https://api.smarterselect.com/v1/admins/users/:user_id/deactivate`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :user_id <strong class="required">required</strong> | path parameter | integer | The user id is returned from any of the user lists.
| role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>

<aside class="notice">
  <code>Role</code> is required since a user can have multiple roles in your account.
</aside>

## POST Activate User

> Example to activate a user

```shell
curl --request POST \
  --url https://api.smarterselect.com/v1/admins/users/:id/activate \
  --header 'authorization: Bearer {token}' \
  --header 'content-type: application/json' \
  --data '{
  	"role": 1
  }'
```

> Response body

```shell
200 OK

{
  "data": {
    "id": "123457",
    "type": "user",
    "attributes": {
      "email": "juan+evaluator@emarterselect.com",
      "first_name": "Juan",
      "last_name": "Perez",
      "organization_name": "SmarterSelect",
      "can_receive_sms": false,
      "phone": "",
      "created_on": "2019-10-03 15:23:09",
      "last_login": "2019-10-03 15:24:17",
      "is_using_sso": null,
      "role": true
    },
    "links": {
      "apps": null,
      "evals": null
    }
  },
  "meta": {
    "total": null
  }
}
```

### Description

Activate a user from your account list.

### HTTP Request

`POST https://api.smarterselect.com/v1/admins/users/:user_id/activate`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :user_id <strong class="required">required</strong> | path parameter | integer | The user id is returned from any of the user lists.
| role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>

<aside class="notice">
  <code>Role</code> is required since a user can have multiple roles in your account.
</aside>
