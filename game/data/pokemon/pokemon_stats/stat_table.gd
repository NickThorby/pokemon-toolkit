extends StatTableWithoutHP
class_name StatTable

var hp

func _init(p_stat_data, p_stat_max = null, p_stat_min = null, p_stat_max_total = null):
    super(p_stat_data, p_stat_max, p_stat_min, p_stat_max_total)
    if p_stat_data.has("hp"):
        hp = p_stat_data.hp