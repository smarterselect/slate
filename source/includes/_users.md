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
        "first-name": "User1",
        "last-name": "Doe",
        "organization-name": "Organization 1",
        "created-on": "2016-05-10 09:41:41",
        "last-login": null,
        "can-receive-sms": false,
        "phone": ""
      }
    },
    {
      "id": "1051342",
      "type": "users",
      "attributes": {
        "email": "user2@gmail.com",
        "first-name": "User2",
        "last-name": "Doe",
        "organization-name": "Organization 2",
        "created-on": "2018-08-28 11:15:44",
        "last-login": "2018-11-12 09:40:53",
        "can-receive-sms": true,
        "phone": "+1 (600) 123-1234"
      }
    },
  ],
  "meta": {
    "is-using-sso": false
  }
}
```

### Description

Gets a list of all your user objects

### HTTP Request

`GET https://api.smarterselect.com/api/v1/providers/:account_id/users`

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
      <td><code>attributes[first-name]</code></td>
      <td>string</td>
      <td>first name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[last-name]</code></td>
      <td>string</td>
      <td>last name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[organization-name]</code></td>
      <td>string</td>
      <td>organization name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[created-on]</code></td>
      <td>datetime</td>
      <td>date and time when the user was created</td>
    </tr>
    <tr>
      <td><code>attributes[last-login]</code></td>
      <td>datetime</td>
      <td>last login of the user into SmarterSelect</td>
    </tr>
    <tr>
      <td><code>attributes[can-receive-sms]</code></td>
      <td>boolean</td>
      <td>is user is able or not to receive sms</td>
    </tr>
    <tr>
      <td><code>attributes[phone]</code></td>
      <td>string</td>
      <td>phone number of the user</td>
    </tr>
    <tr>
      <td><code>meta[is-using-sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
  </tbody>
</table>

## GET Admins

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
        "first-name": "User1",
        "last-name": "Doe",
        "organization-name": "Organization 1",
        "created-on": "2016-05-10 09:41:41",
        "last-login": null,
        "can-receive-sms": false,
        "phone": "",
        "apps-size": 2,
        "links": {
          "apps": "/provider/list_user_apps_provider/626506?provider_id=123"
        }
      }
    },
    {
      "id": "1051342",
      "type": "users",
      "attributes": {
        "email": "user2@gmail.com",
        "first-name": "User2",
        "last-name": "Doe",
        "organization-name": "Organization 2",
        "created-on": "2018-08-28 11:15:44",
        "last-login": "2018-11-12 09:40:53",
        "can-receive-sms": true,
        "phone": "+1 (600) 123-1234",
        "apps-size": 9,
        "links": {
          "apps": "/provider/list_user_apps_provider/1051342?provider_id=123"
        }
      }
    },
  ],
  "meta": {
    "is-using-sso": false
  }
}
```

### Description

Gets a list of all your applicant users objects

### HTTP Request

`GET https://api.smarterselect.com/api/v1/providers/:account_id/applicants`

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
      <td><code>attributes[first-name]</code></td>
      <td>string</td>
      <td>first name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[last-name]</code></td>
      <td>string</td>
      <td>last name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[organization-name]</code></td>
      <td>string</td>
      <td>organization name of the user</td>
    </tr>
    <tr>
      <td><code>attributes[created-on]</code></td>
      <td>datetime</td>
      <td>date and time when the user was created</td>
    </tr>
    <tr>
      <td><code>attributes[last-login]</code></td>
      <td>datetime</td>
      <td>last login of the user into SmarterSelect</td>
    </tr>
    <tr>
      <td><code>attributes[can-receive-sms]</code></td>
      <td>boolean</td>
      <td>is user is able or not to receive sms</td>
    </tr>
    <tr>
      <td><code>attributes[phone]</code></td>
      <td>string</td>
      <td>phone number of the user</td>
    </tr>
    <tr>
      <td><code>attributes[apps-size]</code></td>
      <td>integer</td>
      <td>quantity of apps this user has in your account</td>
    </tr>
    <tr>
      <td><code>attributes[links][apps]</code></td>
      <td>string</td>
      <td>link to access to the user apps</td>
    </tr>
    <tr>
      <td><code>meta[is-using-sso]</code></td>
      <td>boolean</td>
      <td>is your account using sso configuration</td>
    </tr>
  </tbody>
</table>

## GET Evaluators

## POST Reset Password
