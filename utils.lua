local utils = {}
function utils.tfind(haystack, needle)
	for i, v in pairs(haystack) do
		if v == needle then
			return true
		else
			if type(v) == "table" then
				return utils.tfind(v, needle)
			end
		end
	end
end
return utils
