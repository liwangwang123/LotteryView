//
//  ViewController.swift
//  LotteryView
//
//  Created by lemo on 2018/7/19.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let ScreenWidth = UIScreen.main.bounds.width
    let ScreenHeight = UIScreen.main.bounds.height
    var dataSource: [LotteryModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addData()
        addTableView()
    }
    
    var upsideWinNumberLabelCenterX: CGFloat = 0 //上面号码的中点 X 坐标
    var bottomWinNumberLabelCenterX: CGFloat = 0 //下面号码的中点 X 坐标
    let cellHeight: CGFloat = 20
    
    
    func addData() {
        for num in 0..<40 {
            let numberLabelWidth: CGFloat = 7.5 // 号码宽度
            let winNumberPosition = arc4random() % 10  //中奖号码位置
            let width = (ScreenWidth - 100) / 20 // 获取每个中奖号码宽度的一半
            let winNumberLabelCenterX = 90 + 1 + width + (2 * width + 1) * CGFloat(winNumberPosition) // 每个中奖号码的中点X坐标
            let height: CGFloat = cellHeight / 2 //每个 cell 高度的一半
            let center = CGPoint(x: winNumberLabelCenterX, y: height) // 每个中奖号码的中点坐标
            upsideWinNumberLabelCenterX = winNumberLabelCenterX
            // 后一个model
            var laterOneModel = LotteryModel(one: "0", two: "1", three: "2", four: "3", five: "4", sex: "5", sever: "6", eight: "7", nine: "8", ten: "9", eleven: "\(winNumberPosition)", center: center)
            if num % 2 == 0 {
                laterOneModel.oddNumber  = false
            } else {
                laterOneModel.oddNumber = true
            }
            //当至少有两个 model 时,这样才可以计算两个中奖号码的连线及角度
            if bottomWinNumberLabelCenterX != 0 && upsideWinNumberLabelCenterX != 0 {
                //两个中奖号码的中点 X
                let twoWinNumberLabelCenterX = (bottomWinNumberLabelCenterX - upsideWinNumberLabelCenterX) / 2 + upsideWinNumberLabelCenterX
                //前一个 model
                var priorOneModel = dataSource.last
                priorOneModel?.bottomLineCenter = CGPoint(x: twoWinNumberLabelCenterX, y: height * 2)
                
                let priorCenter = priorOneModel?.center
                if let priorBottomLineCenter = priorOneModel?.bottomLineCenter {
                    //水平距离
                    let horizontalDistance = fabsf(Float(priorBottomLineCenter.x - (priorCenter?.x)!))
                    // 竖直距离
                    let verticalDistance = fabsf(Float(priorBottomLineCenter.y - (priorCenter?.y)!))
                    // 夹角 (前一个中奖号码与连线的夹角)
                    let angle = atan(CGFloat(horizontalDistance) / CGFloat(verticalDistance))
                    // 连线在圆内的长度
                    let sinX = numberLabelWidth * sin(angle)
                    let cosX = numberLabelWidth * cos(angle)
                    // 获取圆下部与连线的交点
                    if (priorBottomLineCenter.x - (priorCenter?.x)!) >= 0 {
                        priorOneModel?.bottomIntersectionPoint = CGPoint(x: (priorCenter?.x)! + sinX, y: (priorCenter?.y)! + cosX)
                    } else {
                        priorOneModel?.bottomIntersectionPoint = CGPoint(x: (priorCenter?.x)! - sinX, y: (priorCenter?.y)! + cosX)
                    }
                }
                dataSource.removeLast()
                dataSource.append(priorOneModel!)
                
                laterOneModel.topLineCenter = CGPoint(x: twoWinNumberLabelCenterX, y: 0)
                if let laterTopLineCenter = laterOneModel.topLineCenter {
                    let laterCenter = laterOneModel.center
                    // 水平距离
                    let horizontalDistance = fabsf(Float(laterTopLineCenter.x - laterCenter.x))
                    //竖直距离
                    let verticalDistance = fabsf(Float(laterTopLineCenter.y - laterCenter.y))
                    // 夹角 (前一个中奖号码与连线的夹角)
                    let angle = atan(CGFloat(verticalDistance) / CGFloat(horizontalDistance))
                    let sinX = numberLabelWidth * sin(angle)
                    let cosX = numberLabelWidth * cos(angle)
                    // 获取圆上部与连线的交点
                    if (laterTopLineCenter.x - laterCenter.x) <= 0 {
                        laterOneModel.topIntersectionPoint = CGPoint(x:  laterCenter.x - cosX, y: laterCenter.y - sinX)
                    } else {
                        laterOneModel.topIntersectionPoint = CGPoint(x:  laterCenter.x + cosX, y: laterCenter.y - sinX)
                    }
                }
            }
            bottomWinNumberLabelCenterX = upsideWinNumberLabelCenterX
            dataSource.append(laterOneModel)
        }
    }
    
    var tableView: UITableView?
    let cellIdentifier = "TableViewCell"
    
    func addTableView() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.separatorStyle = .none
        tableView?.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        self.view.addSubview(tableView!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
        cell.setModel(model: dataSource[indexPath.row])
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = #colorLiteral(red: 0.9332515597, green: 0.9333856702, blue: 0.9332222342, alpha: 1)
        } else {
            cell.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

