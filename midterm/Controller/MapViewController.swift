//
//  MapViewController.swift
//  midterm
//
//  Created by 方羿云 on 2018/6/27.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView : MKMapView!
    var plant = Plant()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       // func configure(plantlatitude: Double, plantlongitude: Double){
            let objectAnnotation = MKPointAnnotation()
            objectAnnotation.coordinate = CLLocation(latitude: CLLocationDegrees(plant.latitude), longitude: CLLocationDegrees(plant.longtitude)).coordinate
            objectAnnotation.title = plant.Commonname
            objectAnnotation.subtitle = plant.Scientificname
           // self.mapView.addAnnotation(objectAnnotation)
            self.mapView.showAnnotations([objectAnnotation], animated: true)
            self.mapView.selectAnnotation(objectAnnotation, animated: true)
      //  }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
