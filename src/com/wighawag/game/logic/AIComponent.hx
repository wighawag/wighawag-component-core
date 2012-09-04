package com.wighawag.game.logic;

import com.wighawag.core.PositionComponent;
import com.wighawag.system.EntityComponent;

@accessClass
interface AIComponent implements EntityComponent {
    public function update(dt : Float) : Void;
}
