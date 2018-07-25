//
//  LineView.swift
//  LotteryView
//
//  Created by lemo on 2018/7/20.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class LineView: UIView {

    var centerPoint: CGPoint? = CGPoint(x: 0, y: 0)
    var center1: CGPoint? = CGPoint(x: 0, y: 0)
    var center2: CGPoint? = CGPoint(x: 0, y: 0)
    var bottonCenter: CGPoint? = CGPoint(x: 0, y: 0)
    var topCenter: CGPoint? = CGPoint(x: 0, y: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.01)
//        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        if let bottom = bottonCenter {
            context.addLines(between: [(center2)!, bottom])
        }
        
        if let top = topCenter {
            context.addLines(between: [(center1)!, top])
        }
        let color = #colorLiteral(red: 0.7742348313, green: 0.1334553957, blue: 0.6940341592, alpha: 1)
        
        context.setStrokeColor(color.cgColor)
        context.setLineWidth(0.5)
        context.strokePath()
    }
    

}
