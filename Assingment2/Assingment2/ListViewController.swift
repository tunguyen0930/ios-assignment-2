//
//  ListViewController.swift
//  Assingment2
//
//  Created by Minerva on 7/6/20.
//  Copyright © 2020 Nguyen Anh Tu. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        HomeViewModel.init(limit: 1, offset: 1)
    }


}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        cell.txt1.text = "Dòng 1"
        cell.txt2.text = "Dòng 2"
        cell.txt1.textColor = .red
        return cell
    }
    
    
}
