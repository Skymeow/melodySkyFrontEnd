//
//  PickMessagesViewController.swift
//  MelodySkyChat
//
//  Created by Sky Xu on 2/15/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import UIKit
//import Stellar

class PickMessagesViewController: UIViewController {
    

    @IBOutlet var balls: [Ball]!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //   MARK: animation of balls that falls into one place of your touch
    func animateBalls(point: CGPoint, completion: @escaping (Bool, Ball) -> Void) {
        for (index, ball) in balls.enumerated() {
            let center = ball.center
            let interval = 0.1 * Double(index)
            
            center.animate(to: point,
                           duration: 0.5,
                           delay: interval,
                           type: .swiftOut,
                           render: { (p) in
                            
                            ball.center = p
                            
            }, completion: { (f) in
                
                ball.backgroundColor?.animate(to: UIColor.red,
                                              duration: 1.4,
                                              type: .swiftOut,
                                              autoreverses: false,
                                              render: { (c) in
                                                
                                                ball.backgroundColor = c
                })
                if ball == self.balls.last {
                    completion(true, ball)
                }
            })
            //     End of completion
        }
        //  End of forloop
    }
    
    // MARK: Fix ME!!   use gesture recognizer instead
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        let point = touches.first?.location(in: self.view)
        animateBalls(point: point!) { (success, lastBall) in
            if success {
                self.expandBall(point: point!, ball: lastBall)
            }
        }
}
    
    //    MARK: expend the ball into a bigger view that shows the message
    func expandBall(point: CGPoint, ball: Ball) {
        ball.transform = CGAffineTransform(scaleX: 4, y: 4)
        ball.backgroundColor = UIColor.white
    }
}
