loadfile ("./api-client.lua")()
-- Usage :
-- api_call(
--   method,
--   url,
--   params
-- )
--
-- Where:
-- method is GET, POST, PUT etc
-- url is your api endpoint
-- params is a strign which contains all data you want to pass in the format:
--  "key1=value1;key2=value2"
--

result = api_call(
  "POST",
  "https://us2.api.mailchimp.com/2.0/lists/list",
  "apikey=ABCD"
)

var_dump(result)