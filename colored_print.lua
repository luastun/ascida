-- // this script belongs to ascida you can use it or skid it i lowkey dont care 1 credit would help :D thanks

local function cprint(text: string)
    text = text:gsub("%[(.-)%]", function(content)
        local cr, cg, cb, label, rest =
            content:match(
                "^%{%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)%s*%}(.-){reset}(.*)$"
            )

        if cr then
            return string.format(
                '[<font color="rgb(%d,%d,%d)">%s</font>]%s',
                tonumber(cr),
                tonumber(cg),
                tonumber(cb),
                label,
                rest
            )
        end

        local label2, rest2 = content:match("^(.-)(:.*)$")

        if label2 then
            return string.format(
                '[<font color="rgb(0,255,0)">%s</font>]%s',
                label2,
                rest2
            )
        end

        return string.format(
            '[<font color="rgb(0,255,0)">%s</font>]',
            content
        )
    end)

    print(text)
end

return cprint
