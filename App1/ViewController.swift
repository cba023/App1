//
//  ViewController.swift
//  App1
//
//  Created by 陈波 on 2021/9/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enviromentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "App1"
        confEnviroment()
    }
    
    
    /// 根据不同的环境进行做不同的处理（可以在这里配置不同环境的变量，如域名、主题等）
    func confEnviroment() {
        #if ENVIROMENT_DEV
        view.backgroundColor = .red
        enviromentLabel.text = "DEV"
        #elseif ENVIROMENT_UAT
        view.backgroundColor = .green
        enviromentLabel.text = "UAT"
        #else
        view.backgroundColor = .blue
        enviromentLabel.text = "PROD"
        #endif
    }


}

