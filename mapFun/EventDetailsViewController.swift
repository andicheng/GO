//
//  EventDetailsViewController.swift
//  mapFun
//
//  Created by ANDERSON CHENG on 12/19/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class EventDetailsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    var eventToShow: Event?
    
    //****************** MARK: UI Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = eventToShow?.title
        self.descriptionLabel.text = eventToShow?.detail
        self.addressLabel.text = eventToShow?.address
        self.dateLabel.text = dateFormat(date: eventToShow?.date as! Date)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
     //****************** MARK: Actions

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //****************** MARK: Actions
    
    @IBAction func addressButtonPressed(_ sender: UIButton) {
        let theLatitude  = CLLocationDegrees((eventToShow?.latitude)!)
        let theLongitude = CLLocationDegrees((eventToShow?.longitude)!)
        let coordinate = CLLocationCoordinate2DMake(theLatitude, theLongitude)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = eventToShow?.title
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
    }
    
}
