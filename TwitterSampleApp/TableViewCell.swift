//
//  TableViewCell.swift
//  TwitterSampleApp
//
//  Created by takashima kohei on 2023/04/04.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    func setCell(tweet: Tweet) {
        self.idLabel.text = tweet.id
        self.tweetLabel.text = tweet.body
    }
}
