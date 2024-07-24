API_VERSION = 1

function set_offset(policy0, policy2, policy5, policy7)
    set_policy_freq_offset(0, policy0)
    set_policy_freq_offset(2, policy2)
    set_policy_freq_offset(5, policy5)
    set_policy_freq_offset(7, policy7)
end

function load_fas(pid, pkg)
    if (pkg == "com.miHoYo.Yuanshen" or pkg == "com.miHoYo.ys.mi" or pkg == "com.miHoyo.ys.bilibili" or pkg == "com.miHoYo.GenshinImpact")
    then
        set_offset(0, 0, -800000, 0)
    end
end

function unload_fas()
    set_offset(0, 0, 0, 0)
end
