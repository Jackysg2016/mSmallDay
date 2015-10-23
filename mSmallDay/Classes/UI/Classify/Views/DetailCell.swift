//
//  DetailCell.swift
//  mSmallDay
//
//  Created by piglikeyoung on 15/10/22.
//  Copyright © 2015年 pikeYoung. All rights reserved.
//  分类详情cell

import UIKit

class DetailCell: UITableViewCell {
    
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var subTitleLabel: UILabel!
    @IBOutlet weak private var backImageView: UIImageView!
    @IBOutlet weak private var disImageV: UIImageView!
    @IBOutlet weak var disLabel: UILabel!

    var model: EventModel? {
        didSet {
            titleLabel.text = model!.title
            subTitleLabel.text = model!.address
            if let imsStr = model?.imgs?.last {
                backImageView.kf_setImageWithURL(NSURL(string: imsStr)!, placeholderImage: UIImage(named: "quesheng")!)
            }
            
            if model!.isShowDis {
                disImageV.hidden = false
                disLabel.hidden = false
                disLabel.text = model!.distanceForUser
            } else {
                disLabel.hidden = true
                disImageV.hidden = true
            }
        }
    }
    
    override func awakeFromNib() {
        self.selectionStyle = .None
    }

}
