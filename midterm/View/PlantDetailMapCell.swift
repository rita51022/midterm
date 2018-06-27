//
//  PlantDetailMapCell.swift
//  midterm
//
//  Created by 方羿云 on 2018/6/22.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit
import MapKit

class PlantDetailMapCell: UITableViewCell {

    @IBOutlet var mapView: MKMapView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(plantlatitude: Double, plantlongitude: Double){
        let objectAnnotation = MKPointAnnotation()
        objectAnnotation.coordinate = CLLocation(latitude: CLLocationDegrees(plantlatitude), longitude: CLLocationDegrees(plantlongitude)).coordinate
//        objectAnnotation.title = "艋舺公園"
//        objectAnnotation.subtitle =
//        "艋舺公園位於龍山寺旁邊，原名為「萬華十二號公園」。"
        self.mapView.addAnnotation(objectAnnotation)
        let region = MKCoordinateRegionMakeWithDistance(objectAnnotation.coordinate, 250, 250)
        self.mapView.setRegion(region, animated: false)
    }

//    func configure(location: String){
//        let geoCoder = CLGeocoder()
//
//        print(location)
//        geoCoder.geocodeAddressString(location, completionHandler: {placemarks,error in
//            if let error = error{
//                print("Geocoder error: \(error.localizedDescription)")
//                return
//            }
//
//            if let placemarks = placemarks{
//                let placemark = placemarks[0]
//
//                let annotation = MKPointAnnotation()
//
//                if let location = placemark.location{
//                    annotation.coordinate = location.coordinate
//                    self.mapView.addAnnotation(annotation)
//                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
//                    self.mapView.setRegion(region, animated: false)
//                }
//            }
//        })
//    }

    

}
