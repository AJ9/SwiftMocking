//
//  KeyedError.swift
//  SwiftMocking
//
//  Created by Adam Gask on 06/10/2015.
//  Copyright © 2015 AJ9. All rights reserved.
//

import UIKit

class KeyedError: NSObject {
    
    let ENGLISH = "en"
    let GERMAN = "de"
    
    var dict = Dictionary <String, String>()
    
    init(english: String, german : String){
        dict = Dictionary <String, String>()
        dict[ENGLISH] = english
        dict[GERMAN] = german
    }
    
    func getValueForKey(key: String) -> String{
        if let element = self.dict[key]{
            return element
        }
        else {
            return "ERROR"
        }
    }

}
