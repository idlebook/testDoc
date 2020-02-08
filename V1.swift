//
//  ViewController.swift
//  danmuDemo
//
//  Created by idlebook on 2017/4/25.
//  Copyright © 2017年 PM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  // x修复bug
     // x修复bug // x修复bug // x修复bug // x修复bug
    
     // x修复bug // x修复bug // x修复bug
     // x修复bug // x修复bug

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 修复了一个bug
        let model1 = PMDanmuModel()
        model1.beginTime = 2
        model1.liveTime = 2
        model1.attributeContent = NSAttributedString(string: "hahahha")
        
        let model2 = PMDanmuModel()
        model2.beginTime = 2
        model2.liveTime = 2
        model2.attributeContent = NSAttributedString(string: "😁😁😁")
        
        
        danmuBackView.danmuMs.append(model1)
        danmuBackView.danmuMs.append(model2)
        
        
        

    }



}

extension ViewController{
    
    // 恢复
    @IBAction func resumeClick(_ sender: Any) {
        danmuBackView.resume()
    }
    
    // 暂停
    @IBAction func pauseClick(_ sender: Any) {
        danmuBackView.pause()
    }
}

extension ViewController: PMGDanmuBackViewDelegate{
    internal func danmuViewWithModel(model: PMDanmuModel) -> UIView {
        let label = UILabel()
        label.attributedText = model.attributeContent!
        label.sizeToFit()
        return label
    }

    /// 获取当前时间,一般为当前进度
    func currentTime() -> TimeInterval {
        struct Holder {
            static var timesCalled = 0.0
        }
        Holder.timesCalled =  Holder.timesCalled + 0.10
        return Holder.timesCalled
    }
    

    
    
}

