//
//  Classification.swift
//  Field Survey
//
//  Created by Chris Jansson on 11/3/17.
//  Copyright © 2017 Chris Jansson. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
