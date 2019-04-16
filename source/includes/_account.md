# Account

## Overview

Those are all accounts related to your account.

## GET All Accounts

> Example to get all accounts

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/accounts \
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
{
  "data": [
    {
      "id": "1245123",
      "type": "accounts",
      "attributes": {
        "role": "owner",
        "provider_name": "Provider Name 1",
        "join_date": "2019-01-21 13:32:10"
      }
    },
    {
      "id": "1245124",
      "type": "accounts",
      "attributes": {
        "role": "applicant",
        "provider_name": "Provider Name 1",
        "join_date": "2019-01-17 11:30:19"
      }
    }
  ]
}
```

Take into consideration that the returned `id` is the one you must use to identify yourself as `owner` or `admin` in the different requests/actions.

### Description

Gets a list of all your accounts objects

### HTTP Request

`GET https://api.smarterselect.com/v1/accounts`

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
      <td>auto-generated object identifier which is used to another requests</td>
    </tr>
    <tr>
      <td><code>type</code></td>
      <td>string</td>
      <td>object type</td>
    </tr>
    <tr>
      <td><code>attributes[role]</code></td>
      <td>string</td>
      <td>role in this provider</td>
    </tr>
    <tr>
      <td><code>attributes[provider_name]</code></td>
      <td>string</td>
      <td>name of the provider related</td>
    </tr>
    <tr>
      <td><code>attributes[join_date]</code></td>
      <td>date</td>
      <td>date where you were added to this account</td>
    </tr>
  </tbody>
</table>
