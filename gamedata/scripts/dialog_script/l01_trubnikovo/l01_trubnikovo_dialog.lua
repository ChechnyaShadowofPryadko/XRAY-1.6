--
--������� ���� Scary Memoryes �� ����� ���������������� Lua, ������� l01_trubnikovo, �������. 
--
--�����: �������� ������ aka "NO DATA USER"
--��������: TSTweedgames
-- 2019 ���.
--
--
--
--

function marija_give_weapon(marija, actor) --���� ������� ������� ������ ��� ������ � ���� �������: ������ ������� �������� ������ ����� ��������-����������. ����� ���������� ������� ���������� ��������� � ������� �� ��������� �������� � ����������� �
    -- �������� �291.     
    dialogs.relocate_item_section(marija, "wpn_pm63", "in")
    dialogs.relocate_item_section(marija, "ammo_9x18", "in")
    dialogs.relocate_item_section(marija, "ammo_9x18", "in")
    dialogs.relocate_item_section(marija, "ammo_9x18", "in")
    dialogs.relocate_item_section(marija, "food_rusirp", "in")
end

function marija_give_reward(marija, actor) -- ����� ������ ��� ������ � ������ �� ������ ��������. ���� ������ ������ �������� ����� ���
    -- �� �� ������ ��� �����.
    if actor:object("comanders_letter") then
    dialogs.relocate_money(marija, 50000, "in")
    dialogs.relocate_item_section(marija, "special_letter", "in")
        return true
    else
        return false
    end
end

function mitaj_gives_ak12_545x39(mitaj, actor) --����� ������ ��� ��-12 5.45�39��
    if actor:object("special_letter") then 
    dialogs.relocate_item_section(mitaj, "ak12_5.45x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_5.45x39", "in")
    dialogs.relocate_item_section(mitaj, "ammo_5.45x39", "in")
        return true
    else
        return false
    end
end

function mitaj_gives_ak12_762x39(mitaj, actor) --����� ������ ��� AK-12 7.62x39�� �� ������
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
