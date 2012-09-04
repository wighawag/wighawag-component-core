package com.wighawag.game.logic;

import com.wighawag.system.Updatable;
import com.wighawag.system.Entity;
import com.wighawag.system.SystemComponent;

@entities(['com.wighawag.game.logic.AIComponent'])
class AISystem implements SystemComponent, implements Updatable{

    public function new() {
    }

    public function onEntityRegistered(entity : Entity) : Void{

    }

    public function onEntityUnregistered(entity : Entity) : Void{

    }

    public function update(dt : Float) : Void{

        for (entity in registeredEntities){
             entity.get(AIComponent).update(dt);
         }
    }

}
