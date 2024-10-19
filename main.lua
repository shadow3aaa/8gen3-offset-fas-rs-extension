API_VERSION = 3

set_ignore_policy(0, true)

function load_fas(pid, pkg)
    if (pkg == "com.miHoYo.Yuanshen" or pkg == "com.miHoYo.ys.mi" or pkg == "com.miHoyo.ys.bilibili" or pkg == "com.miHoYo.GenshinImpact")
    then
        set_policy_freq_offset(2, -80000)
    elseif (pkg == "com.tencent.tmgp.sgame" or pkg == "com.levelinfinite.sgameGlobal")
    then
        set_policy_freq_offset(2, -100000)
    elseif (pkg == "com.netease.x19" or pkg == "com.mojang.minecraftpe")
    then
        set_policy_freq_offset(2, -1000000)
    elseif (pkg == "com.miHoYo.Nap" or pkg == "com.miHoYo.zenless")
    then
        set_ignore_policy(2, true)
    elseif (pkg == "com.ChillyRoom.DungeonShooter")
    then
        set_policy_freq_offset(2, -50000)
    elseif (pkg == "com.netease.nshm") then
        set_policy_freq_offset(2, -300000)
    elseif (pkg == "com.miHoYo.hkrpg") then
        set_policy_freq_offset(2, -600000)
    elseif (pkg == "com.tencent.lolm") then
        set_policy_freq_offset(2, -600000)
    end
end

function unload_fas()
    set_ignore_policy(2, false)
    set_policy_freq_offset(2, 0)
end
