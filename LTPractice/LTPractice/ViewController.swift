//
//  ViewController.swift
//  LTPractice
//
//  Created by lt on 2022/10/12.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        button.backgroundColor = .gray
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
    }

    private func render() {
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view)
            make.width.equalTo(44)
            make.height.equalTo(44)
        }
    }
    
    @objc
    private func buttonClick() {
        let oc: Multithread = Multithread.init()
        self.present(oc, animated: true, completion: nil)
    }

    private func dispatchTest() {
        Thread.sleep(forTimeInterval: 2)
        let queue = DispatchQueue.init(label: "com.test.cn")
        queue.async {
            print("1")
            DispatchQueue.main.sync {
                print("2")
            }
            queue.sync {
                print("3")
            }
        }
        print("4")
    }

}

