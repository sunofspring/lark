---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by saeipi.
--- DateTime: 2022/12/3 19:15
---

local prefix = KEYS[1]
local chatId = KEYS[2]
local timestamp = tonumber(KEYS[3])
local key = ""
for i=1, #ARGV do
    key = string.format("%s%d",prefix,ARGV[i])
    redis.call('ZADD', key, timestamp, chatId)
end
return 0


--local prefix1 = KEYS[1]
--local chatId = KEYS[2]
--
--local prefix2 = KEYS[3]
--local seqId = KEYS[4]
--
--local timestamp = tonumber(KEYS[5])
--local key = ""
--local uid = 0
--for i=1, #ARGV do
--    uid = ARGV[i]
--    key = string.format("%s%d",prefix1,uid)
--    redis.call('ZADD', key, timestamp, chatId)
--    key = string.format("%s%d",prefix2,uid)
--    redis.call('hmset', key, chatId, seqId)
--end
--return 0