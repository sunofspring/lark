---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by saeipi.
--- DateTime: 2023/1/13 10:13 AM
---

local KEYS = {"LK:USER_INFO:1",
              "LK:USER_INFO:2",
              "LK:USER_INFO:3",
              "LK:USER_INFO:4"}
local ARGV = {1,1000,2,2000,3,3000,4,4000,1 }

if #ARGV~=#KEYS*2 then
    print("参数错误")
    return 0
end

local k = 1
for i=1,  #KEYS do
    print(i,KEYS[i],ARGV[k],ARGV[k+1])
    k = k+2
end

--redis-cli -h 127.0.0.1 -p 63791 -a lark2022 script load "
--if #ARGV~=#KEYS*2 then
--    return 0
--end
--
--local k = 1
--for i=1,  #KEYS do
--    redis.call('SET', KEYS[i], ARGV[k], \"EX\", ARGV[k+1])
--    k = k+2
--end
--return 0
--"