package com.wighawag.core;

// TODO where this component should belong ?

import com.wighawag.system.EntityTypeComponent;
import com.wighawag.asset.load.AssetManager;

class AssetComponent implements EntityTypeComponent {

    public var assetId(default, null) : AssetId;
    public var fillHorizontally(default, null) : Bool;
    public var fillVertically(default, null) : Bool;
    public var scale(default, null) : Bool;

    public function new(id : AssetId, ?scale : Bool = false, ?fillHorizontally : Bool = false, ?fillVertically : Bool = false) {
        this.assetId = id;
        this.scale = scale;
        // TODO use bit based FLAGS instead of the three conflicting boolean
        if(scale && (fillHorizontally || fillVertically)){
            Report.anError("AssetComponent", "Cannot fill when scaling, need to choose, fallback to scale only");
        }else{
            this.fillHorizontally = fillHorizontally;
            this.fillVertically = fillVertically;
        }

    }

    public function initialise():Void{

    }
}
