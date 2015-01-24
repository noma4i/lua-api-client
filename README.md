# lua-api-client

Simple HTTP API Client to talk with REST API and parse JSON response.

**Syntax:**
````lua
  api_call(
    method,
    url,
    params
  )
````

**Example:**
````lua
  result = api_call(
    "POST",
    "https://us2.api.mailchimp.com/2.0/lists/list",
    "apikey=ABCD"
  )
````

Run `example.lua` to see actual result
