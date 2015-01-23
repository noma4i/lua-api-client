http = require("socket.http")
https = require("ssl.https")
json = (loadfile "JSON.lua")()

local reqbody = "apikey=dqdqwqdqdw"
local respbody = {}

https.request {
	method = "POST",
	url = "https://us2.api.mailchimp.com/2.0/lists/list",
	source = ltn12.source.string(reqbody),
	headers = {
		["Content-Type"] = "application/x-www-form-urlencoded",
		["Content-Length"] = #reqbody
	},
	sink = ltn12.sink.table(respbody)
}

respbody = table.concat(respbody)
local result = json:decode(respbody)
print(result)