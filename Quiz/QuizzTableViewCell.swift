//
//  QuizzTableViewCell.swift
//  Quiz
//
//  Created by Rodrigo Forbeck Odppes on 30/05/19.
//  Copyright © 2019 Rodrigo Forbeck Odppes. All rights reserved.
//

import UIKit

class QuizzTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var imgTitulo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
