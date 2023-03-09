//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Van Zhang on 2023/3/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Logger.log(with: "哈哈哈")
        print("\(Logger.test("abcde"))")
        let c  = Calculator()
        print("加法:\(c.add(withA: 1.0, andB: 20.0))")
        print("减法:\(c.subtract(withA: 1.0, andB: 20.0))")
        print("乘法:\(c.multiply(withA: 1.0, andB: 20.0))")
        print("除法:\(c.divide(withA: 1.0, andB: 20.0))")
        let vc = NKTempViewController()
        self.present(vc, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem.init(block: {
                vc.dismiss(animated: true)
            }))
        }
        CallCAndCppHelper.excuteCHandler()
        CallCAndCppHelper.excuteCppHandler()
    }

}

