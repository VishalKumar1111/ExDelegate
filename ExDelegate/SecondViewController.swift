//
//  SecondViewController.swift
//  ExDelegate
//
//  Created by RLogixxTraining on 04/10/23.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    
func getNamefromSecond(_ str: String)
    
}

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate?

    var strName = String()
     
    @IBOutlet weak var txtfldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(strName)
    }
    override func viewWillDisappear(_ animated: Bool)
    {
        delegate?.getNamefromSecond(txtfldName.text ?? "ABC")
        super.viewWillDisappear(true)

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
    @IBAction func dismissView(_ sender: Any) {
        
        delegate?.getNamefromSecond(txtfldName.text ?? "ABC")
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
}
