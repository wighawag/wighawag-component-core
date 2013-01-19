package com.wighawag.core;

// TODO where this component should belong ?

import haxe.xml.Fast;
import com.wighawag.system.EntityTypeComponent;
import com.wighawag.system.EntityComponent;
import com.wighawag.asset.load.AssetManager;
import com.wighawag.utils.StringUtils;

class AssetComponent implements EntityTypeComponent {

    public var assetId(default, null) : AssetId;
    public var fillHorizontally(default, null) : Bool;
    public var fillVertically(default, null) : Bool;
    public var scale(default, null) : Bool;

    public function new(xml : Xml) {
        var x = new Fast( xml );

        if(x.has.assetId){
            assetId = x.att.assetId;
        }else{
            Report.anError("AssetComponent", "xml need to have an assetId");
        }


        if(x.has.scale){
            scale = StringUtils.parseBoolean(x.att.scale);
        }

        if(x.has.fillHorizontally){
            fillHorizontally = StringUtils.parseBoolean(x.att.fillHorizontally);
        }

        if(x.has.fillVertically){
            fillVertically = StringUtils.parseBoolean(x.att.fillVertically);
        }

        // TODO use bit based FLAGS instead of the three conflicting boolean
        if(scale && (fillHorizontally || fillVertically)){
            Report.anError("AssetComponent", "Cannot fill when scaling, need to choose, fallback to scale only");
            fillHorizontally = false;
            fillVertically = false;
        }

    }

    public function initialise():Void{

    }

    public function populateEntity(entityComponents : Array<EntityComponent>) : Void{

    }
}
