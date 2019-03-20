# Authentication

> Example to get access token

```shell
curl --request POST \
  --url https://api.smarterselect.com/api/v1/login \
  --header 'content-type: application/json' \
  --data '{
          	"user": {
          		"email": "my-ss-email",
          		"password": "my-ss-password"
          	}
          }'
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.smarterselect.com/api/v1/login")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request.body = "{\n\t\"user\": {\n\t\t\"email\": \"my-ss-email\",\n\t\t\"password\": \"my-ss-password\"\n\t}\n}"

response = http.request(request)
puts response.read_body
```

> Response body

```shell
{
  "data": {
    "id": "113123",
    "type": "users",
    "attributes": {
      "email": "my-ss-email",
      "first-name": "Han",
      "last-name": "Solo",
      "organization-name": "My organizaiton",
      "created-on": "2014-02-11 07:19:55",
      "last-login": "2019-03-19 16:56:21",
      "can-receive-sms": true,
      "phone": "+1 (500) 858 7677"
    }
  },
  "meta": {
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzMTIwMjEiLCJzY3AiOiJ1c2VyIiwiYXVkIjpudWxsLCJpYXQiOjE1NTMwOTkxMzEsImV4cCI6MTU1MzI3MTkzMSwianRpIjoiMjA0MGIwMGEtOTU1Zi00YjkxLTlhOTgtNGE4Nzk3MDczZWQzIn0.ysQKuahBos0ARQsR-2vdC2SRBG_9mhyydFcyhN6ndDk"
  }
}
```

API requests are made over HTTPS and authenticated with a Json Web Token (JWT). This JWT is supplied as the {token} in an HTTP Authorization header: Authorization: Bearer {token}

To get your JTW:

1. Use our `https://api.smarterselect.com/api/v1/login` endpoint by entering your SS credentials.
2. Get the token from the response body under `meta: {token: 'response_token'}`.
3. Your user information will be returned to you upon login."


Set the HTTP Authorization header Authorization: Bearer {token} using your API key in place of {token}

<aside class="notice">
  Make sure you always send the  <code>Token</code> in each request.
</aside>
