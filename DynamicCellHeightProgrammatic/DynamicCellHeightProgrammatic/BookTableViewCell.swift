//
//  BookTableViewCell.swift
//  DynamicCellHeightProgrammatic
//
//  Created by Satinder Singh on 7/3/16.
//  Copyright © 2016 Satinder. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    let nameLabel = UILabel()
    let detailLabel = UILabel()
    
    // MARK: Initalizers
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let marginGuide = contentView.layoutMarginsGuide
        
        // configure titleLabel
        contentView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leadingAnchor.constraintEqualToAnchor(marginGuide.leadingAnchor).active = true
        nameLabel.topAnchor.constraintEqualToAnchor(marginGuide.topAnchor).active = true
        nameLabel.trailingAnchor.constraintEqualToAnchor(marginGuide.trailingAnchor).active = true
        nameLabel.numberOfLines = 0
        nameLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 16)
        
        // configure authorLabel
        contentView.addSubview(detailLabel)
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.leadingAnchor.constraintEqualToAnchor(marginGuide.leadingAnchor).active = true
        detailLabel.bottomAnchor.constraintEqualToAnchor(marginGuide.bottomAnchor).active = true
        detailLabel.trailingAnchor.constraintEqualToAnchor(marginGuide.trailingAnchor).active = true
        detailLabel.topAnchor.constraintEqualToAnchor(nameLabel.bottomAnchor).active = true
        detailLabel.numberOfLines = 0
        detailLabel.font = UIFont(name: "Avenir-Book", size: 12)
        detailLabel.textColor = UIColor.lightGrayColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
