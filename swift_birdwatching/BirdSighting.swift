//
//  BirdSighting.swift
//  swift_learning
//
//  Created by akiyan on 2014/07/03.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class BirdSighting: NSObject {
    
    var name: String
    var location: String
    var date: NSDate
    
    init(name:String, location:String, date:NSDate) {
        self.name = name
        self.location = location
        self.date = date
    }
}
