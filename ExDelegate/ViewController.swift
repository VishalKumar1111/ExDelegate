//
//  ViewController.swift
//  ExDelegate
//
//  Created by RLogixxTraining on 04/10/23.
//

import UIKit

class ViewController: UIViewController,SecondViewControllerDelegate {
    func getNamefromSecond(_ str: String) {
        lblName.text = str
        
    }
    
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentView(_ sender: Any) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: SecondViewController = storyboard.instantiateViewController(withIdentifier: "second") as! SecondViewController
        vc.strName = "Dhruv"
        self.present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func NAVIGATE(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: SecondViewController = storyboard.instantiateViewController(withIdentifier: "second") as! SecondViewController
        vc.strName = "Prabhat"
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

