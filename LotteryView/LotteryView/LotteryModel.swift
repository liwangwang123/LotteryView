//
//  LotteryModel.swift
//  LotteryView
//
//  Created by lemo on 2018/7/19.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

struct LotteryModel {
    let oneString: String
    let twoString: String
    let threeString: String
    let fourString: String
    let fiveString: String
    let sexString: String
    let sevenString: String
    let eightString: String
    let nineString: String
    let tenString: String
    let elevenString: String
    var oddNumber: Bool?
    
    
    let center: CGPoint //中点
    var topIntersectionPoint: CGPoint? // 圆与连线的上部交点
    var bottomIntersectionPoint: CGPoint? // 圆与连线的下部交点
    var bottomLineCenter: CGPoint? = CGPoint.init(x: 0, y: 0) // 连线中点,相对于上一个 cell 的位置 (位于 cell 的下部)
    var topLineCenter: CGPoint?    // 连线中点,相对于下一个 cell 的位置 (位于 cell 的上部)
    
    init(one: String, two: String, three: String, four: String, five: String, sex: String, sever: String, eight: String, nine: String, ten: String, eleven: String, center: CGPoint) {
        self.oneString = one
        self.twoString = two
        self.threeString = three
        self.fourString = four
        self.fiveString = five
        self.sexString = sex
        self.sevenString = sever
        self.eightString = eight
        self.nineString = nine
        self.tenString = ten
        self.center = center
        self.elevenString = eleven
    }
}
