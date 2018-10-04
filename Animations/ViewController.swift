//
//  ViewController.swift
//  Animations
//
//  Created by Madison Waters on 10/3/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let redFrame = CGRect(x: 20, y: 20, width: 100, height: 100)
        
        let redView = UIView(frame: redFrame)
        
        redView.backgroundColor = .red
        view.addSubview(redView)

        
        
//        UIView.animate(withDuration: 5) {
//            // Anything animatible that we change here will animate
//            redView.center.y += 200
//            redView.center.x += 50
//            redView.frame.size.height += 300
//            redView.backgroundColor = .blue
//
//        }
        
        UIView.animate(withDuration: 3,
                       delay: 0,
                       options: [.curveEaseOut, .allowUserInteraction],
                       animations: {
                        redView.center.y += 200
                        },
                       completion: nil)
        
//        UIView.animate(withDuration: 3,
//                                delay: 0,
//                                options: [.curveEaseOut, .allowUserInteraction],
//                                animations: {
//                                redView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 1.5)
//                                }, completion: nil)
//
        UIView.animate(withDuration: 3,
                       delay: 0,
                       options: .curveEaseOut,
                       animations: {redView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 1.3)}) { (_) in

                        UIView.animate(withDuration: 3, delay: 0, animations: {
                            redView.transform = .identity
                        })
        }
        
        UIView.animateKeyframes(withDuration: 6, delay: 0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                redView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 1.5)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                    redView.transform = .identity
            })
            
        }, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        
    }


}

