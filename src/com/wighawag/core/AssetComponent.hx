package com.wighawag.core;

// TODO where this component should belong ?

import com.wighawag.system.EntityTypeComponent;
import com.wighawag.asset.load.AssetManager;

class AssetComponent implements EntityTypeComponent {

    public var assetId(default, null) : AssetId;
    public var fillHorizontally(default, null) : Bool;
    public var fillVertically(default, null) : Bool;

    public function new(id : AssetId, ?fillHorizontally : Bool = false, ?fillVertically : Bool = false) {
        this.assetId = id;
        this.fillHorizontally = fillHorizontally;
        this.fillVertically = fillVertically;
    }
}
