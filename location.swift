//
//  locationViewController.swift
//  loginshow
//
//  Created by Nai on 23/4/2563 BE.
//  Copyright © 2563 Nai. All rights reserved.
//

import UIKit
import Foundation
import MapKit

class location: NSObject,MKAnnotation{
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String,coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


