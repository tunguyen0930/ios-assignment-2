import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    var latitude: Double = 0
    var lontitude: Double = 0
    var country: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool = true) {
        let annou = MKPointAnnotation()
        annou.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: lontitude)
        annou.title = country
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
