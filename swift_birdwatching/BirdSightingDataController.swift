//
//  BirdSightingDataController.swift
//  swift_learning
//
//  Created by akiyan on 2014/07/04.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class BirdSightingDataController: NSObject {
    
    var masterBirdSightingList: Array<BirdSighting> = Array<BirdSighting>()
    
    init() {
        super.init()
        self.initializeDefaultDataList()
    }
    
    func objectInListAtIndex(theIndex:Int) -> BirdSighting {
        return self.masterBirdSightingList[theIndex]
    }
    
    func addBirdSightingWithSighting(sighting:BirdSighting) {
        return self.masterBirdSightingList += sighting
    }
    
    func initializeDefaultDataList() -> Void {
        var sighting:BirdSighting
        var today:NSDate = NSDate()
        sighting = BirdSighting(name: "Piegeon", location: "Everywhere", date:today)
        self.addBirdSightingWithSighting(sighting)
    }
    
    func countOfList() -> Int {
        return self.masterBirdSightingList.count
    }
    
}
