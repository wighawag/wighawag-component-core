package com.wighawag.core;


import nme.geom.Rectangle;
import com.wighawag.system.EntityComponent;

class PlacementComponent implements EntityComponent, extends Rectangle{

    public function new(x : Float, y : Float, width : Float, height : Float) {
        super(x,y,width,height);
    }

    public function initialise():Void{

    }
}
