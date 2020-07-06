//
//  ListTableViewCell.swift
//  Assingment2
//
//  Created by Minerva on 7/6/20.
//  Copyright © 2020 Nguyen Anh Tu. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var txt1: UILabel!
    @IBOutlet weak var txt2: UILabel!
    @IBOutlet weak var txtButton: UIButton!
    @IBOutlet weak var brb: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnSelect(_ sender: Any) {
        
    }
}
