/****
* Wighawag License:
* - free to use for commercial and non commercial application
* - provided the modification done to it are given back to the community
* - use at your own risk
* 
****/

package wighawag.core;

import haxe.xml.Fast;
import wighawag.system.EntityTypeComponent;
import wighawag.system.EntityComponent;

typedef EntityComponentInstance = {
    clazz : Class<EntityComponent>,
    args : Array<String>
}

class EntityComponentProvider implements EntityTypeComponent {

    private var entityComponentClasses : Array<EntityComponentInstance>;

    public function new(xml : Xml) {
        entityComponentClasses = new Array();

        var x = new Fast( xml );

        for (entityComponentDef in x.elements){
            var clazz : Class<EntityComponent> = cast(Type.resolveClass(entityComponentDef.name));

            //TODO support other arguments types than String (maybe through xsd ?)
            var args : Array<String> = new Array();
            if(entityComponentDef.has.args){
                var argsString : String = entityComponentDef.att.args;
                args = argsString.split(",");
            }

            if(clazz == null){
                Report.anError("EntityComponentProvider", "class implementing EntityComponent not found for " + entityComponentDef.name);
            }else{
                try{
                    Type.createInstance(clazz, args);
                    entityComponentClasses.push({clazz:clazz,args:args});
                }catch(e : Dynamic){
                    Report.anError("EntityComponentProvider", "EntityComponent class should have an empty constructor or contain only sString arguments to be accepted for EntityComponentProvider : " + entityComponentDef.name);
                }
            }

        }

    }

    public function initialise():Void{

    }

    public function populateEntity(entityComponents : Array<EntityComponent>) : Void{
        for(entityComponentInstance in entityComponentClasses){
            var instance = Type.createInstance(entityComponentInstance.clazz, entityComponentInstance.args);
            entityComponents.push(instance);
        }
    }
    
}
