/****
* Wighawag License:
* - free to use for commercial and non commercial application
* - provided the modification done to it are given back to the community
* - use at your own risk
* 
****/

package wighawag.core;


import flash.geom.Rectangle;
import wighawag.system.EntityComponent;

class PlacementComponent extends Rectangle implements EntityComponent{

    public function new(x : Float, y : Float, width : Float, height : Float) {
        super(x,y,width,height);
    }

    public function initialise():Void{

    }
}
