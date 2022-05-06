//
//  GoodJokeViewController.swift
//  ikid
//
//  Created by Wensi Xu on 4/29/22.
//

import UIKit

class GoodJokeViewController: UIViewController {
    let firstImg = "goodJoke1"
    let secondImg = "goodJoke2"

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBAction func nextGoodJoke(_ sender: Any) {
        let img = UIImage(named: secondImg)
        imageView.image = img
        UIView.transition(with: imageView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        nextBtn.isEnabled = false
    }
    
    @IBAction func backToFirst(_ sender: Any) {
        nextBtn.isEnabled = true
        let img = UIImage(named: firstImg)
        imageView.image = img
        UIView.transition(with: imageView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: firstImg)
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

