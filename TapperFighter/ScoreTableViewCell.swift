//
//  ScoreTableViewCell.swift
//  TapperFighter
//
//  Created by Yusuf Aksu on 13.11.2022.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {
  @IBOutlet weak var scoreLabel: UILabel!

  @IBOutlet weak var nameLabel: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
