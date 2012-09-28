package com.wighawag.core;


import com.wighawag.system.EntityComponent;

class PlacementComponent implements EntityComponent{

    public var x : Float;
    public var y : Float;

    public var width : Float;
    public var height : Float;

    public function new(x : Float, y : Float, width : Float, height : Float) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }
}
