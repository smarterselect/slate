# Authentication

## POST Access Token

> Example to get access token

```shell
curl --request POST \
  --url https://api.smarterselect.com/oauth/token \
  --header 'content-type: application/json' \
  --data '{
          	{
                "grant_type": "client_credentials",
                "client_id": "my SS Client ID",
                "client_secret": "my SS Client Secret"
            }
          }'
```

> Response body

```shell
{
  "access_token": "{{AUTH TOKEN}}",
  "token_type": "Bearer",
  "expires_in": 7200,
  "created_at": 1570123936
}
```

API requests are made over HTTPS and authenticated with a OAuth 2.0 token. This OAuth token is supplied as the {token} in an HTTP Authorization header: Authorization: Bearer {token}.

The previous endpoint returns the access token that you need in order to access the API. On the response body, use `access_token` as authentication from now on, on the Authorization: Bearer {access_token}.

<aside class="notice">
  Make sure you always send the  <code>Token</code> in each request.
</aside>
