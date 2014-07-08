//
//  DetailViewController.swift
//  swift_birdwatching
//
//  Created by akiyan on 2014/07/03.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class BirdsDetailViewController: UITableViewController {

//    @IBOutlet var detailDescriptionLabel: UILabel
    
    var sighting:BirdSighting? {
    willSet {
        self.sighting = newValue
    }
    didSet {
        self.configureView()
    }
    }
    @IBOutlet var birdNameLabel: UILabel
    @IBOutlet var locationLabel: UILabel
    @IBOutlet var datelabel: UILabel

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        var theSighting:BirdSighting? = self.sighting
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.MediumStyle
//        if (theSighting) {
            self.birdNameLabel.text = theSighting?.name
            self.locationLabel.text = theSighting?.location
            self.datelabel.text = formatter.stringFromDate(theSighting?.date)
//            
//        }
        
        // Update the user interface for the detail item.
//        if let detail: AnyObject = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

