//
//  ViewController.swift
//  ikid
//
//  Created by Wensi Xu on 4/29/22.
//

import UIKit

class SwitchingViewController: UIViewController {

    fileprivate var goodJokeVC : GoodJokeViewController! = nil
    fileprivate var punJokeVC : PunJokeViewController! = nil
    fileprivate var dadJokeVC : DadJokeViewController! = nil
    
    fileprivate func goodJokeBuilder() {
        if goodJokeVC == nil {
            goodJokeVC = storyboard?.instantiateViewController(withIdentifier: "Good") as? GoodJokeViewController
        }
    }
    
    fileprivate func punJokeBuilder() {
        if punJokeVC == nil {
            punJokeVC = storyboard?.instantiateViewController(withIdentifier: "Pun") as? PunJokeViewController
        }
    }
    
    fileprivate func dadJokeBuilder() {
        if dadJokeVC == nil {
            dadJokeVC = storyboard?.instantiateViewController(withIdentifier: "Dad") as? DadJokeViewController
        }
    }
    
    @IBAction func swichToGoodJoke(_ sender: Any) {
        goodJokeBuilder()
        if punJokeVC != nil && punJokeVC?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            goodJokeVC.view.frame = self.view.frame
            switchViewController(punJokeVC, goodJokeVC)
        } else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            goodJokeVC.view.frame = self.view.frame
            switchViewController(dadJokeVC, goodJokeVC)
        }
        UIView.commitAnimations()
    }

    @IBAction func switchToPunJoke(_ sender: Any) {
        punJokeBuilder()
        if goodJokeVC != nil && goodJokeVC?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            punJokeVC.view.frame = self.view.frame
            switchViewController(goodJokeVC, punJokeVC)
        } else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            punJokeVC.view.frame = self.view.frame
            switchViewController(dadJokeVC, punJokeVC)
        }
        UIView.commitAnimations()
    }

    @IBAction func switchToDadJoke(_ sender: Any) {
        dadJokeBuilder()
        if goodJokeVC != nil && goodJokeVC?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            dadJokeVC.view.frame = self.view.frame
            switchViewController(goodJokeVC, dadJokeVC)
        } else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            dadJokeVC.view.frame = self.view.frame
            switchViewController(punJokeVC, dadJokeVC)
        }
        UIView.commitAnimations()
    }
    
    fileprivate func switchViewController(_ from: UIViewController?, _ to: UIViewController?) {
        if from != nil {
            from!.willMove(toParent: nil)
            from!.view.removeFromSuperview()
            from!.removeFromParent()
        }
        
        if to != nil {
            self.addChild(to!)
            self.view.insertSubview(to!.view, at: 0)
            to!.didMove(toParent: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

