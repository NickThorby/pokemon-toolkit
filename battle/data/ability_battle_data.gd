extends Effect
class_name AbilityBattleData

var suppress_weather # bool
var condition # ConditionBattleData | null
var is_permanant # bool | null
var is_breakable # bool | null

func _init(p_ability_data):
    super(p_ability_data)
    p_ability_data = self

    self.fullname = "ability: %s" % self.name
    self.effect_type = BattleData.EffectType.ABILITY

    if p_ability_data.condition:
        self.condition = ConditionBattleData.new(p_ability_data.condition)
        
    self.is_permanant = p_ability_data.is_permanant
    self.is_breakable = p_ability_data.is_breakable
    self.suppress_weather = bool(p_ability_data.suppress_weather)
    

    if not self.gen:
        if self.num >= 268:
            self.gen = 9 
        elif self.num >= 234:
            self.gen = 8
        elif self.num >= 192:
            self.gen = 7
        elif self.num >= 165:
            self.gen = 6
        elif self.num >= 124:
            self.gen = 5
        elif self.num >= 77:
            self.gen = 4
        elif self.num >= 1:
            self.gen = 3