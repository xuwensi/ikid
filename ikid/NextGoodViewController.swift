//
//  NextGoodViewController.swift
//  ikid
//
//  Created by Wensi Xu on 4/30/22.
//

import UIKit

class NextGoodViewController: UIViewController {

    @IBAction func exitGoodJoke(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
//    override func loadView() {
//        modalTransitionStyle = .flipHorizontal
//        super.loadView()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        modalTransitionStyle = .flipHorizontal
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
