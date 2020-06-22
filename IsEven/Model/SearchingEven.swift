//
//  SearchingEven.swift
//  IsEven
//
//  Created by Сергей Цыганков on 22.06.2020.
//  Copyright © 2020 Сергей Цыганков. All rights reserved.
//

import Foundation

class Search {
    
    func makeResult(number: Int) -> Bool {
        
        if number % 2 == 0 {
            return true
        }
        return false
    }
    
}
