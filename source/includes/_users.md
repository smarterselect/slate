# Users

## Overview

Those are all users related to your account.

## GET All Users

> Example to get all account users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts/:account_id/users \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "626506",
      "type": "users",
      "attributes": {
        "email": "user1@gmail.com",
        "first_name": "User1",
        "last_name": "Doe",
        "organization_name": "Organization 1",
        "created_on": "2016-05-10 09:41:41",
        "last_login": null,
        "can_receive_sms": false,
        "phone": "",
        "is_using_sso": false
      }
    },
    {
      "id": "1051342",
      "type": "users",
      "attributes": {
        "email": "user2@gmail.com",
        "first_name": "User2",
        "last_name": "Doe",
        "organization_name": "Organization 2",
        "created_on": "2018-08-28 11:15:44",
        "last_login": "2018-11-12 09:40:53",
        "can_receive_sms": true,
        "phone": "+1 (600) 123-1234",
        "is_using_sso": false
      }
    },
  ]
}
```

### Description

Gets a list of all your user objects

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/users`

### Path Arguments

<table>
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>:account_id <strong class="required">required</strong></td>
      <td>path parameter</td>
      <td>The account ID got it from <a href="#account">accounts endpoint</a></td>
    </tr>
  </tbody>
</table>

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
      <td>integer</td>
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
      <td>organization name of the user</td>
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
      <td><code>attributes[is_using_sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
  </tbody>
</table>

## GET Admins

> Example to get all account users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts/:account_id/users/admins \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "626506",
      "type": "users",
      "attributes": {
        "email": "user1@gmail.com",
        "first_name": "User1",
        "last_name": "Doe",
        "organization_name": "Organization 1",
        "created_on": "2016-05-10 09:41:41",
        "last_login": null,
        "can-can_receive_sms-sms": false,
        "phone": "",
        "owner": false,
        "active": true
      }
    },
    {
      "id": "1051342",
      "type": "users",
      "attributes": {
        "email": "user2@gmail.com",
        "first_name": "User2",
        "last_name": "Doe",
        "organization_name": "Organization 2",
        "created_on": "2018-08-28 11:15:44",
        "last_login": "2018-11-12 09:40:53",
        "can_receive_sms": true,
        "phone": "+1 (600) 123-1234",
        "owner": true,
        "active": true
      }
    },
  ]
}
```

### Description

Gets a list of all your applicant users objects

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/users/admins`

### Arguments

<table>
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>:account_id <strong class="required">required</strong></td>
      <td>path parameter</td>
      <td>The account ID got it from <a href="#account">accounts endpoint</a></td>
    </tr>
  </tbody>
</table>

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
      <td>integer</td>
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
      <td>organization name of the user</td>
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
      <td><code>attributes[is_using_sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
    <tr>
      <td><code>attributes[owner]</code></td>
      <td>string</td>
      <td>if the user is owner or not in the giving account</td>
    </tr>
    <tr>
      <td><code>attributes[active]</code></td>
      <td>string</td>
      <td>if the user is active or not in the giving account</td>
    </tr>
  </tbody>
</table>

## GET Applicants

> Example to get all account users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts/:account_id/users/applicants \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "626506",
      "type": "users",
      "attributes": {
        "email": "user1@gmail.com",
        "first_name": "User1",
        "last_name": "Doe",
        "organization_name": "Organization 1",
        "created_on": "2016-05-10 09:41:41",
        "last_login": null,
        "can-can_receive_sms-sms": false,
        "phone": "",
        "apps_size": 2
      },
      "links": {
        "apps": "/provider/list_user_apps_provider/626506?provider_id=4164"
      }
    },
    {
      "id": "1051342",
      "type": "users",
      "attributes": {
        "email": "user2@gmail.com",
        "first_name": "User2",
        "last_name": "Doe",
        "organization_name": "Organization 2",
        "created_on": "2018-08-28 11:15:44",
        "last_login": "2018-11-12 09:40:53",
        "can_receive_sms": true,
        "phone": "+1 (600) 123-1234",
        "apps_size": 9
      },
      "links": {
        "apps": "/provider/list_user_apps_provider/1051342?provider_id=4164"
      }
    },
  ]
}
```

### Description

Gets a list of all your applicant users objects

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/users/applicants`

### Arguments

<table>
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>:account_id <strong class="required">required</strong></td>
      <td>path parameter</td>
      <td>The account ID got it from <a href="#account">accounts endpoint</a></td>
    </tr>
  </tbody>
</table>

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
      <td>integer</td>
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
      <td>organization name of the user</td>
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
      <td><code>attributes[apps_size]</code></td>
      <td>integer</td>
      <td>quantity of apps this user has in your account</td>
    </tr>
    <tr>
      <td><code>attributes[is_using_sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
    <tr>
      <td><code>links[apps]</code></td>
      <td>string</td>
      <td>link to access to the user apps</td>
    </tr>
  </tbody>
</table>

## GET Evaluators

> Example to get all evaluator users

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts/:account_id/users/evaluators \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "2123321",
      "type": "users",
      "attributes": {
        "email": "user1@gmail.com",
        "first_name": "User1",
        "last_name": "Doe",
        "organization_name": "Organization 1",
        "created_on": "2016-05-10 09:41:41",
        "last_login": null,
        "can-can_receive_sms-sms": false,
        "phone": "",
        "evals_size": 2,
        "active": false
      },
      "relationships": {
        "eval_groups": {
          "data": [
            {
              "id": "321",
              "type": "eval_group"
            }
          ]
        }
      },
      "links": {
        "evals": "/provider/list_user_evals_provider/2123321?provider_id=4164"
      }
    },
    {
      "id": "1232321",
      "type": "users",
      "attributes": {
        "email": "user2@gmail.com",
        "first_name": "User2",
        "last_name": "Doe",
        "organization_name": "Organization 2",
        "created_on": "2018-08-28 11:15:44",
        "last_login": "2018-11-12 09:40:53",
        "can_receive_sms": true,
        "phone": "+1 (600) 123-1234",
        "evals_size": 9,
        "active": true
      },
      "relationships": {
        "eval_groups": {
          "data": []
        }
      },
      "links": {
        "evals": "/provider/list_user_evals_provider/1232321?provider_id=4164"
      }
    },
  ]
}
```

### Description

Gets a list of all your evaluator users objects

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/users/evalautors`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :account_id <strong class="required">required</strong> | path parameter | integer | The account ID got it from <a href="#account">accounts endpoint</a>

### Response

| Property | Type | Description
| -------- | ---- | -----------
| <code>id</code> | integer | auto-generated object identifier.
| <code>type</code> | string | object type.
| <code>attributes[email]</code> | string | email registrated by the user.
| <code>attributes[first_name]</code> | string | first name of the user.
| <code>attributes[last_name]</code> | string | last name of the user.
| <code>attributes[organization_name]</code> | string | organization name of the user.
| <code>attributes[created_on]</code> | datetime | date and time when the user was created.
| <code>attributes[last_login]</code> | datetime | last login of the user into SmarterSelect.
| <code>attributes[can_receive_sms]</code> | boolean | is user is able or not to receive sms.
| <code>attributes[is_using_sso]</code> | boolean | is your account using sso configuration.
| <code>attributes[evals_size]</code> | integer | quantity of evaluations this user has in your account.
| <code>attributes[active]</code> | boolean | if the user is active for this account.
| <code>links[evals]</code> | string | link to access to the user evaluations.
| <code>relationships[eval_groups]</code> | object | list all eval groups of this evaluator in this account.

## PUT Edit User Role

> Example to promote/demote a user

```shell
curl --request PUT \
  --url https://api.smarterselect.com/v1/accounts/:account_id/users/:user_id/role \
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
```

### Description

Promote or demote a user from your account list.

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/users/:user_id/role`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :account_id <strong class="required">required</strong> | path parameter | integer | The account ID got it from <a href="#account">accounts endpoint</a>
| :user_id <strong class="required">required</strong> | path parameter | integer | The user id is returned from any of the user lists.
| old_role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>
| new_role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>

## POST Deactivate User

> Example to deactivate a user

```shell
curl --request PUT \
  --url https://api.smarterselect.com/v1/accounts/:account_id/users/:user_id/deactivate \
  --header 'authorization: Bearer {token}' \
  --header 'content-type: application/json' \
  --data '{
  	"role": 1
  }'
```

> Response body

```shell
200 OK
```

### Description

Deactivate a user from your account list.

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts/:account_id/users/:user_id/deactivate`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :account_id <strong class="required">required</strong> | path parameter | integer | The account ID got it from <a href="#account">accounts endpoint</a>
| :user_id <strong class="required">required</strong> | path parameter | integer | The user id is returned from any of the user lists.
| role <strong class="required">required</strong> | body content | integer | <ul><li>0 -> Owner</li><li>1 -> Admin</li><li>2 -> Applicant</li><li>3 -> Evaluator</li></ul>

<aside class="notice">
  <code>Role</code> is required since a users can have multiple roles in your account.
</aside>
