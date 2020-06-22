//
//  ViewController.swift
//  IsEven
//
//  Created by Сергей Цыганков on 22.06.2020.
//  Copyright © 2020 Сергей Цыганков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var evenButton: UIButton! {
        didSet {
            evenButton.setTitle("Is even?", for: .normal)
            evenButton.sizeToFit()
        }
    }
    
    @IBAction func isEvenButton(_ sender: UIButton) {
        
        presentAlert()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}


