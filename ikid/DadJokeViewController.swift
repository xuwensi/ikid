//
//  DadJokeViewController.swift
//  ikid
//
//  Created by Wensi Xu on 4/29/22.
//

import UIKit

protocol dadJokeActionTeller {
    func nextClicked(_ sender: Any)
}

class DadJokeViewController: UIViewController {
    var delegate: dadJokeActionTeller?

    fileprivate var dadJokeVC : DadJokeViewController! = nil
    fileprivate var secondDadJokeVC : SecondDadViewController! = nil

    let dadJokes : [String] = ["Why does ten plus ten equals eleven plus eleven?","I only know 25 letters of the alphabet. I don't know y."]

    @IBOutlet weak var dadJokeLabel: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var counter = 0
    
    @IBOutlet weak var punchlineBtn: UIButton!
    @IBAction func backHome(_ sender: Any) {
        counter = 0
        dadJokeLabel.text = dadJokes[counter]
        nextBtn.isEnabled = true
        punchlineBtn.isHidden = false
        UIView.transition(with: dadJokeLabel, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    @IBAction func nextDadVC(_ sender: Any) {
        counter += 1
        dadJokeLabel.text = dadJokes[counter]
        nextBtn.isEnabled = false
        punchlineBtn.isHidden = true
        UIView.transition(with: dadJokeLabel, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
//    fileprivate func secondDadJokeBuilder() {
//        if secondDadJokeVC == nil {
//            secondDadJokeVC = storyboard?.instantiateViewController(withIdentifier: "secondDad") as? SecondDadViewController
//        }
//    }
//
//    fileprivate func switchViewController(_ from: UIViewController?, _ to: UIViewController?) {
//        if from != nil {
//            from!.willMove(toParent: nil)
//            from!.view.removeFromSuperview()
//            from!.removeFromParent()
//        }
//
//        if to != nil {
//            self.addChild(to!)
//            self.view.insertSubview(to!.view, at: 0)
//            to!.didMove(toParent: self)
//        }
//    }
    
//    @IBAction func testNext(_ sender: Any) {
//        self.delegate?.nextClicked(sender)
//
        
//        secondDadJokeBuilder()
//        dadJokeVC = storyboard?.instantiateViewController(withIdentifier: "Dad") as? DadJokeViewController
//
//        UIView.beginAnimations("View Flip", context: nil)
//        UIView.setAnimationDuration(0.4)
//        UIView.setAnimationCurve(.easeInOut)
//
//        if dadJokeVC != nil  {
//            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
//            secondDadJokeVC.view.frame = self.view.frame
//            switchViewController(dadJokeVC, secondDadJokeVC)
//        }
//        UIView.commitAnimations()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
