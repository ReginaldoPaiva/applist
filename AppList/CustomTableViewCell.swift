//
//  CustomTableViewCell.swift
//  AppList
//
//  Created by Noturno on 09/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var imageDatail: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(article: ArticlesViewModel){
    
        self.titleLabel.textColor = UIColor.blue
        
        self.titleLabel.text = article.title
        self.authorLabel.text = article.author
        self.imageDatail.image = article.imageDetail
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
