//
//  TomatoCell.swift
//  tomatoTimer
//
//  Created by jonah wilmsmeyer on 2020-04-12.
//  Copyright © 2020 jonah wilmsmeyer. All rights reserved.
//

import Foundation
import UIKit
class TomatoCell{
    var name: String
    var description: String // description of what it does
    
    init(_ name:String){
        self.name = name
        self.description = ""
    }
    
    init(_ name:String, _ description: String){
        self.name = name
        self.description = description
    }
}
