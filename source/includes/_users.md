# Users

## Overview

Those are all users related to your account.

## GET All Users

> Example to get all account users

```shell
curl --request GET \
  --url https://api.smarterselect.com/api/v1/providers/:account_id/users \
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

`GET https://api.smarterselect.com/api/v1/providers/:account_id/users`

### Path Arguments

<table>
  <thead></thead>
  <tbody>
    <tr>
      <td>:account_id <strong class="required">required</strong></td>
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
  --url https://api.smarterselect.com/api/v1/providers/:account_id/admins \
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

`GET https://api.smarterselect.com/api/v1/providers/:account_id/admins`

### Path Arguments

<table>
  <thead></thead>
  <tbody>
    <tr>
      <td>:account_id <strong class="required">required</strong></td>
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
  --url https://api.smarterselect.com/api/v1/providers/:account_id/applicants \
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

`GET https://api.smarterselect.com/api/v1/providers/:account_id/applicants`

### Path Arguments

<table>
  <thead></thead>
  <tbody>
    <tr>
      <td>:account_id <strong class="required">required</strong></td>
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

## POST Reset Password
