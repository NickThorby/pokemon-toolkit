class_name MoveScripts

func allyswitch(battle_data:Dictionary, callback:String):
    match callback :
        "on_prepare_hit":
            return battle_data.battle.queue.will_act() && battle_data.battle.run_event("stall_move", battle_data.pokemon)
        "on_try_hit":
            if battle_data.source.side.active.length == 1:
                return false
            
  