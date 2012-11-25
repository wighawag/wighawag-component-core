package com.wighawag.core;

import com.wighawag.system.EntityComponent;

class StateComponent implements EntityComponent {

    public var state(default, null) : String;
    public var elapsedTime(default, null) : Float;

    public function new(startState : String) {
        setState(startState);
    }

    public function initialise():Void{

    }

    public function setState(newState : String, ?resetIfSame : Bool = true) : Void{
        if (state != newState || resetIfSame){
            state = newState;
            elapsedTime = 0;
        }

    }

    public function increaseElapsedTime(value : Float):Void{
        elapsedTime += value;
    }
}
