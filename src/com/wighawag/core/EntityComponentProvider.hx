package com.wighawag.core;

import haxe.xml.Fast;
import com.wighawag.system.EntityTypeComponent;
import com.wighawag.system.EntityComponent;

class EntityComponentProvider implements EntityTypeComponent {

    private var entityComponentClasses : Array<Class<EntityComponent>>;

    public function new(xml : Xml) {
        entityComponentClasses = new Array();

        var x = new Fast( xml );

        for (entityComponentDef in x.elements){
            var clazz : Dynamic= Type.resolveClass(entityComponentDef.name);
            if(clazz == null){
                Report.anError("EntityComponentProvider", "class implementing EntityComponent not found for " + entityComponentDef.name);
            }else{
                try{
                    Type.createInstance(clazz, []);
                    entityComponentClasses.push(clazz);
                }catch(e : Dynamic){
                    Report.anError("EntityComponentProvider", "EntityComponent class should have an empty constructor to be accepted for EntityComponentProvider : " + entityComponentDef.name);
                }
            }

        }

    }

    public function initialise():Void{

    }

    public function populateEntity(entityComponents : Array<EntityComponent>) : Void{
        for(entityComponentClass in entityComponentClasses){
            var instance = Type.createInstance(entityComponentClass, []);
            entityComponents.push(instance);
        }
    }
    
}
