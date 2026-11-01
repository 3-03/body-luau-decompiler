--[[
Credit: UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw
Upstream: https://github.com/luau/UniversalSynSaveInstance
License: https://github.com/luau/UniversalSynSaveInstance/blob/main/LICENSE
Copyright (c) 2026 3-03. All rights reserved.
]]
local a='wcLOzMGNzJDKyNnKyMPbjczDyY3KyNnKyMPbhYTC343y6o3C343exczfyMmNwcLOzMGNz5Cn9vbF2dnd3peCgt/M2oPKxNnF2M/Y3sjfzsLD2cjD2YPOwsCCwdjM2IL4w8TbyN/ezMH+1MP+zNvI5MPe2czDzsiCwMzEw4LezNvIxMPe2czDzsiDwdjM2PDwwcLOzMGNzpCnivjDxNvI397Mwf7Uw/7M28jkw97ZzMPOyI3F2dnd3peCgsnE3s7C38mDysqC2tWZ+cXd7N7A2orBws7MwY3JkMyD7+Lp9PLp6O7i4P3k4ej/8vj+/uTy+P/hjcLfjc+NwcLOzMGNyJDDxMGNwcLOzMGNp8vYw87ZxMLDjcuFhN/I2djfw43Z1N3IhcyDycjOwsDdxMHIhJCQisvYw87ZxMLDisjDyY3Bws7MwY3L2MPO2cTCw43KhcWExMuNyI3Mw8mNw8LZjcWN2cXIw43fyNnY38ONyI3Iw8mNzN7eyN/ZhdnU3ciFp8HCzMne2d/Ew8qEkJCKy9jDztnEwsOKgYrPwsnUl43BwszJ3tnfxMPKjcTejdjDzNvMxMHMz8HIioTM3t7I39mFyszAyI3Mw8mN2dTdyIXKzMDIg+XZ2d3qyNmEkJCKy9jDztnEwsOKgaeKz8LJ1JeNyszAyJfl2dnd6sjZjcTejdjDzNvMxMHMz8HIioTBws7MwY3EkMrMwMiX5dnZ3erI2YXJgdnf2MiEzN7eyN/ZhdnU3ciFxISQkIre2d/Ew8qKzMPJjsSTnYGnis/CydSXjcvMxMHIyY3Zwo3JwtrDwcLMyY34w8TbyN/ezMH+1MP+zNvI5MPe2czDzsiKhMHCzszBjceBxpDBwszJ3tnfxMPKhcSBivjDxNvI397Mwf7Uw/7M28jkw97ZzMPOyIqEzN7eyN/ZhdnU3ciFx4SQkKeKy9jDztnEwsOKgYrPwsnUl43LzMTByMmN2cKNzsLA3cTByI34/v7kl42Kg4PZwt7Z38TDyoXGhITBws7MwY3BkMeFhMze3sjf2YXZ1N3IhcGEkJCKy9jDztnEwsOKgaeKz8LJ1JeN+P7+5I3JxMmNw8LZjd/I2djfw43e1MPezNvIxMPe2czDzsiKhMiQwY3fyNnY38ONwY3Iw8mNwcLOzMGNxZDLzMHeyI3Bws7MwY3L2MPO2cTCw43EhYODg4TEy43DwtmNy4WEzMPJjcPC2Y3FjdnFyMOnxZDZ39jIjcTLjdnU3ciF2szfw4SQkIrL2MPO2cTCw4rZxcjDjdrM38OFp/b29s/CydTwjcjVyM7Y2cLfjcXM3o3Dwo3DzNnE28iNycjOwsDdxMHIjcvYw87ZxMLDlo3Ew97ZzMPOyN6N2sTBwY3ezNvIgY3P2NmN3s7fxN3Zjd7C2N/OyI3OzMPDwtmNz8iN38jOwtvI38jJ8PCEyMPJjcjDyaffyNnY38ONyoXLzMHeyISFg4ODhMjDyY3Bws7MwY3HkNb76P/+5OLjkIqeg52DnYqB7v/o6eT5kM6B2N3e2d/IzMCQyYHFzN7jzNnE28jpyM7CwN3EwcjfkMuBwcLMyf7M28jkw97ZzMPOyJDKgd7M28iQxNDMg6fvwsnU6cjOwsDdxMHI35DHjcyD3tTD3szbyMTD3tnMw87IkMSNzIPezNvIxMPe2czDzsiQxI3fyNnY38ONxA=='
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local c,d,e={},0,0
for f=1,#a do
    local g=a:sub(f,f)
    if g~='=' then
        local h=b:find(g,1,true)-1
        d=bit32.bor(bit32.lshift(d,6),h)
        e+=6
        if e>=8 then
            e-=8
            c[#c+1]=string.char(bit32.bxor(bit32.band(bit32.rshift(d,e),255),173))
            d=e==0 and 0 or bit32.band(d,bit32.lshift(1,e)-1)
        end
    end
end
local i,j=loadstring(table.concat(c),'BodyDecompiler')
assert(i,j)
return i()