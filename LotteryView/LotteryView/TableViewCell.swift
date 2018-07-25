//
//  TableViewCell.swift
//  LotteryView
//
//  Created by lemo on 2018/7/19.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit
import CoreFoundation

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    @IBOutlet weak var view10: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var nperLabel: UILabel!
    
    @IBOutlet weak var lineView: LineView!

    var model: LotteryModel?

    func setModel(model: LotteryModel) {
        if model.oddNumber == true {
            self.view1.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view3.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view4.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view5.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view6.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view7.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view8.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view9.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view10.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.nperLabel.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            self.view1.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view5.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view7.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view8.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view9.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.view10.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
            self.nperLabel.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
        }
        self.label1.text = model.oneString
        self.label2.text = model.twoString
        self.label3.text = model.threeString
        self.label4.text = model.fourString
        self.label5.text = model.fiveString
        self.label6.text = model.sexString
        self.label7.text = model.sevenString
        self.label8.text = model.eightString
        self.label9.text = model.nineString
        self.label10.text = model.tenString
        
        self.label1.backgroundColor = .clear
        self.label2.backgroundColor = .clear
        self.label3.backgroundColor = .clear
        self.label4.backgroundColor = .clear
        self.label5.backgroundColor = .clear
        self.label6.backgroundColor = .clear
        self.label7.backgroundColor = .clear
        self.label8.backgroundColor = .clear
        self.label9.backgroundColor = .clear
        self.label10.backgroundColor = .clear
        
        self.label1.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label2.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label3.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label4.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label5.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label6.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label7.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label8.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label9.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        self.label10.textColor = #colorLiteral(red: 0.5999458432, green: 0.6000347137, blue: 0.5999264121, alpha: 1)
        
        let width = self.label1.bounds.size.width
        
        self.lineView.bottonCenter = model.bottomLineCenter
        self.lineView.centerPoint = model.center
        self.lineView.topCenter = model.topLineCenter
        self.lineView.center1 = model.topIntersectionPoint
        self.lineView.center2 = model.bottomIntersectionPoint
        self.lineView.setNeedsDisplay()
        
        switch model.elevenString {
        case "0":
            self.label1.layer.cornerRadius = width / 2
            self.label1.layer.masksToBounds = true
            self.label1.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label1.textColor = .white
        case "1":
            self.label2.layer.cornerRadius = width / 2
            self.label2.layer.masksToBounds = true
            self.label2.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label2.textColor = .white
        case "2":
            self.label3.layer.cornerRadius = width / 2
            self.label3.layer.masksToBounds = true
            self.label3.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label3.textColor = .white
        case "3":
            self.label4.layer.cornerRadius = width / 2
            self.label4.layer.masksToBounds = true
            self.label4.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label4.textColor = .white
        case "4":
            self.label5.layer.cornerRadius = width / 2
            self.label5.layer.masksToBounds = true
            self.label5.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label5.textColor = .white
        case "5":
            self.label6.layer.cornerRadius = width / 2
            self.label6.layer.masksToBounds = true
            self.label6.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label6.textColor = .white
        case "6":
            self.label7.layer.cornerRadius = width / 2
            self.label7.layer.masksToBounds = true
            self.label7.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label7.textColor = .white
        case "7":
            self.label8.layer.cornerRadius = width / 2
            self.label8.layer.masksToBounds = true
            self.label8.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label8.textColor = .white
        case "8":
            self.label9.layer.cornerRadius = width / 2
            self.label9.layer.masksToBounds = true
            self.label9.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label9.textColor = .white

        default:
            self.label10.layer.cornerRadius = width / 2
            self.label10.layer.masksToBounds = true
            self.label10.backgroundColor = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
            self.label10.textColor = .white
        }
        
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
