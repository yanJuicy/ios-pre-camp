//
//  ViewController.swift
//  MyAction
//
//  Created by a on 2023/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapMyButton(_ sender: Any) {
        print("배경색상 변경")
        view.backgroundColor = .yellow
        helloLabel.text = "hello Leeo"
    }
    
}

