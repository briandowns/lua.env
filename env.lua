local M = require "posix"

local env = {}

function env.load(path, overwrite)
    if path == nil or path == '' then
        file = ".env"
    else
        file = path
    end

    local whitespace <const> = "%s+"

    for line in io.lines(file) do
        if #line ~= 0 and not line:find("#") then
            local k, v = line:match("([^,]+)=([^,]+)")

            if v:find('"', 1) and v:find('"', -1) or v:find("'", 1) and v:find("'", -1) then
                v = v:sub(2)
                v = v:sub(2, -2)
            end

            M.setenv(k:gsub(whitespace, ""), v, overwrite)
        end
    end
end

return env
