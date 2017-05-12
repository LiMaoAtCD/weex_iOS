//
//  ViewController.swift
//  weex_iOS
//
//  Created by AlienLi on 2017/5/11.
//  Copyright © 2017年 MarcoLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let instance = WXSDKInstance()
    var weexView: UIView?
    var url: String? {
        willSet {
            if let _ = newValue {
                let realURL = URL.init(string: newValue!)!
                instance.render(with: realURL)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        instance.viewController = self
        instance.frame = self.view.frame
        
        instance.onCreate = {
            [weak self] view in
            guard let this = self else {
                return
            }
            this.weexView?.removeFromSuperview()
            this.weexView = view
            this.view.addSubview(this.weexView!)
        }
        
        instance.onFailed = { error in
            print(error.debugDescription)
        }
        
        instance.refreshFinish = {view in
            print("render finished")
        }
        
        url = Bundle.main.url(forResource: "foo", withExtension: "js")?.absoluteString
//        url = "http://192.168.2.101:8080/dist/app.weex.js"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

