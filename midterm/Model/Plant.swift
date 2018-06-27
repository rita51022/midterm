//
//  Plant.swift
//  midterm
//
//  Created by 方羿云 on 2018/5/30.
//  Copyright © 2018年 方羿云. All rights reserved.
//

import Foundation
class Plant{
    var Commonname : String
    var Scientificname : String
    var originlocation : String
    var taiwanlocation : String
    var decription : String
    var image : String
    var latitude : Double
    var longtitude : Double
    
    init (Commonname: String, Scientificname: String, originlocation: String, taiwanlocation:String, description: String, image: String, latitude: Double, longtitude: Double){
        self.Commonname = Commonname
        self.Scientificname = Scientificname
        self.originlocation = originlocation
        self.taiwanlocation = taiwanlocation
        self.decription = description
        self.image = image
        self.latitude = latitude
        self.longtitude = longtitude
    }
    convenience init(){
        self.init(Commonname:"", Scientificname:"", originlocation:"", taiwanlocation:"", description:"", image:"", latitude:0.0, longtitude:0.0)
    }
}
