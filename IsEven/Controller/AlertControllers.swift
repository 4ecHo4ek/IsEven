//
//  AlertControllers.swift
//  IsEven
//
//  Created by Сергей Цыганков on 22.06.2020.
//  Copyright © 2020 Сергей Цыганков. All rights reserved.
//

import UIKit


extension UIViewController {
    
    func presentAlert() {
        
        let searchClass = Search()
        
        let alert = UIAlertController(title: "Is this even?", message: nil, preferredStyle: .alert)
        alert.addTextField()
        
        let search = UIAlertAction(title: "Search", style: .default)  { [unowned self] a in
            let textField = alert.textFields?.first
            guard let number = Int((textField?.text)!) else { 
                self.answer(title: "Incorrect format")
                return
            }
            
            let result = searchClass.makeResult(number: number)
            
            if result {
                self.answer(title: "It's even")
            } else {
                self.answer(title: "It's not even")
            }
            
        }
        
        let cancel = UIAlertAction(title: "canel", style: .cancel, handler: nil)
        
        alert.addAction(search)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    fileprivate func answer(title: String) {
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
}
