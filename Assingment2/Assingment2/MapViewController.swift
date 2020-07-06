//
//  MapViewController.swift
//  Assingment2
//
//  Created by Minerva on 7/6/20.
//  Copyright © 2020 Nguyen Anh Tu. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let annou = MKPointAnnotation()
        annou.coordinate = CLLocationCoordinate2D(latitude: 10.754558, longitude: 106.686796)
        annou.title = "My house"
        annou.subtitle = "This house"
        mapview.addAnnotation(annou)
        let region = MKCoordinateRegion(center: annou.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mapview.setRegion(region, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
