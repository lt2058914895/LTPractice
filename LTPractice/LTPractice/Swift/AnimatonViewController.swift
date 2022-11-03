//
//  AnimatonViewController.swift
//  LTPractice
//
//  Created by lt on 2022/11/1.
//

import Foundation
import SnapKit

class AnimatonViewController: UIViewController {
    
    var animationView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(gesture))
        view.addGestureRecognizer(tap)
        return view
    }()
    
    var button: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        button.backgroundColor = .blue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        render()
    }
    
    func render() {
        [animationView,button].forEach({view.addSubview($0)})
        
        animationView.frame = CGRect.init(x: 10, y: 10, width: 100, height: 100)
        button.frame = CGRect.init(x: 200, y: 20, width: 44, height: 44)
//        animationView.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(50)
//            make.left.equalToSuperview().offset(50)
//            make.width.equalTo(100)
//            make.height.equalTo(100)
//        }
//
//        button.snp.makeConstraints { make in
//            make.centerY.equalTo(animationView)
//            make.left.equalTo(animationView.snp_rightMargin).offset(20)
//            make.width.equalTo(44)
//            make.height.equalTo(44)
//        }
        
    }

    func doAnimation1() {
        let basicAnimation = CABasicAnimation.init(keyPath: "position.y")
        basicAnimation.fromValue = 10
        basicAnimation.toValue = 550
        basicAnimation.duration = 2.8
        animationView.layer.add(basicAnimation, forKey: "animation")
    }
    
    func doAnimation() {
        UIView.animate(withDuration: 2.8) {
            self.animationView.frame = CGRect.init(x: 20, y: 550, width: 100, height: 100)
            print(self.animationView.frame)
//            self.animationView.snp.updateConstraints { make in
//                make.top.equalToSuperview().offset(550)
//            }
        }
    }
    
    @objc
    func buttonClick() {
        doAnimation1()
//        doAnimation()
    }
    
    @objc
    func gesture() {
        print("响应事件了")
    }
}
