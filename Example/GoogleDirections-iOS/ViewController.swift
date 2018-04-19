//
//  ViewController.swift
//  GoogleDirections-iOS
//
//  Created by JDandini on 04/19/2018.
//  Copyright (c) 2018 JDandini. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleDirections_iOS

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let apiKey = "AIzaSyAH08YnvLSewLic_JBF6o5KzwKOppAijUY"
        let chapultepecCastle = CLLocationCoordinate2D(latitude: 19.422503,
                                                       longitude: -99.182065)
        let garibaldiPlaza = CLLocationCoordinate2D(latitude: 19.441267,
                                                    longitude: -99.139456)
        let reforma77 = CLLocationCoordinate2D(latitude: 19.433375,
                                               longitude: -99.154434)
        let independenceAngel = CLLocationCoordinate2D(latitude: 19.427021,
                                                       longitude: -99.167695)
        
        let request = GoogleDirectionsRequest.directionsWithCoordinates(origin: chapultepecCastle, destination: garibaldiPlaza, mode: .bicycle, wayPoints: [reforma77, independenceAngel], apiKey: apiKey)
        
        Network.requestJSON(request) { (result, error) in
            
            if let e = error {
                print(e.localizedDescription)
            }
            if let jsonDic = result as? JSON, let direction = GMDirection(json: jsonDic) {
                print("status: \(direction.status ?? "")")
                print("\n\npolyline: \(direction.routes?.first?.overviewPolyline ?? "")")
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

