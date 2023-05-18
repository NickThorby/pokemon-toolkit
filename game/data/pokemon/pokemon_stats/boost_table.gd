extends StatTableWithoutHP
class_name BoostTable

var accuracy
var evasion

func _init(
    p_stat_data, 
    p_stat_max = null, 
    p_stat_min = null, 
    p_stat_max_total = null
):
    super(p_stat_data, p_stat_max, p_stat_min, p_stat_max_total)
    if p_stat_data.has("accuracy"):
        accuracy = p_stat_data.accuracy
    if p_stat_data.has("evasion"):
        evasion = p_stat_data.evasion