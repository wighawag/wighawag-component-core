/****
* Wighawag License:
* - free to use for commercial and non commercial application
* - provided the modification done to it are given back to the community
* - use at your own risk
* 
****/

package wighawag.game.logic;

import wighawag.core.PositionComponent;
import wighawag.system.EntityComponent;

@accessClass
interface AIComponent extends EntityComponent {
    public function update(dt : Float) : Void;
}
