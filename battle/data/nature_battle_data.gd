extends Effect
class_name NatureBattleData

var plus
var minus

func _init(p_nature_data):
	super(p_nature_data)
	p_nature_data = self

	self.fullname = "nature: %s" % p_nature_data.name
	self.effect_type = BattleData.EffectType.NATURE
	self.gen = 3
	self.plus = p_nature_data.plus
	self.minus = p_nature_data.minus
	

