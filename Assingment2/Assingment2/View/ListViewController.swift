import UIKit

class ListViewController: UIViewController {


    @IBOutlet weak var tableview: UITableView!
    var listData: [HomeListModel] = [HomeListModel]()
    var limit = 10
    var offset = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        loadItems()
        tableview.delegate = self
        tableview.dataSource = self
    }

    func loadItems () {
        HomeViewModel.shared.getList(limit: limit, offset: offset)
        HomeViewModel.shared.signalPush.subscribe(onNext: { event in
            if event {
                self.listData = HomeViewModel.shared.data
                self.offset = self.listData.count
                self.tableview.reloadData()
            }
        })
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var data = listData[indexPath.row]
        var secondTab = self.tabBarController?.viewControllers?[1] as! MapViewController
        secondTab.latitude = Double(data.latitude ?? "0.0") as! Double
        secondTab.lontitude = Double(data.longitude ?? "0.0") as! Double
        secondTab.country = data.country ?? ""

    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        var data = listData[indexPath.row]
        cell.txt1.text = data.country
        cell.txt2.text = data.region
        return cell
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == self.listData.count - 1 {
            self.limit += 5
            loadItems()
        }
    }
}
