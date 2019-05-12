--
--Скрипты игры Scary Memoryes на языке программирования Lua, локация l01_trubnikovo, диалоги. 
--
--Автор: Ковалько Виктор aka "NO DATA USER"
--Компания: TSTweedgames
-- 2019 год.
--
--
--
--

function marija_give_weapon(marija, actor) --Сама великая княгиня выдает нам оружие и дает задание: помочь лесному форпосту отбить атаку мутантов-марионеток. После выполнения задание необходимо вернуться с письмом от командира форпоста и отправиться в
    -- Крепость №291.     
    dialogs.relocate_item_section(marija, "wpn_pm63", "in")
    dialogs.relocate_item_section(marija, "ammo_9x18", "in")
    dialogs.relocate_item_section(marija, "ammo_9x18", "in")
    dialogs.relocate_item_section(marija, "ammo_9x18", "in")
    dialogs.relocate_item_section(marija, "food_rusirp", "in")
end

function marija_give_reward(marija, actor) -- Мария выдает нам деньги и приказ на выдачу автомата. Этот приказ должен получить Митяй или
    -- он не выдаст нам ствол.
    if actor:object("comanders_letter") then
    dialogs.relocate_money(marija, 50000, "in")
    dialogs.relocate_item_section(marija, "special_letter", "in")
        return true
    else
        return false
    end
end

function mitaj_gives_ak12_545x39(mitaj, actor) --Митяй выдает нам АК-12 5.45х39мм
    if actor:object("special_letter") then 
    dialogs.relocate_item_section(mitaj, "ak12_5.45x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_5.45x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_5.45x39", "in")
        return true
    else
        return false
    end
end

function mitaj_gives_ak12_762x39(mitaj, actor) --Митяй выдает нам AK-12 7.62x39мм за взятку
    if actor:object("special_letter") then 
    dialogs.relocate_item_section(mitaj, "ak12_7.62x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_7.62x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_7.62x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_7.62x39", "in")
    dialogs.relocate_money(mitaj, 50000, "out")
        return true
    else
        return false
    end
end

function babushka_give_pirozh(babushka, actor)
    dialogs.relocate_item_section(babushka, "food_bigpirozh", "in")
end

function give_reward_for_batle(mitaj, actor)
