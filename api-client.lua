http = require("socket.http")
https = require("ssl.https")
json = (loadfile "./libs/JSON.lua")()
loadfile ("./libs/Utils.lua")()

local reqbody = ""
local url = "https://us2.api.mailchimp.com/2.0/lists/list"
local respbody = {}

https.request {
	method = "POST",
	url = url,
	source = ltn12.source.string(reqbody),
	headers = {
		["Content-Type"] = "application/x-www-form-urlencoded",
		["Content-Length"] = #reqbody
	},
	sink = ltn12.sink.table(respbody)
}

local result = json:decode(table.concat(respbody))

var_dump(result)