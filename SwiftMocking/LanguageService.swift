//
//  LanguageService.swift
//  SwiftMocking
//
//  Created by Adam Gask on 06/10/2015.
//  Copyright © 2015 AJ9. All rights reserved.
//

import UIKit

class LanguageService: NSObject {

    var responseDict = Dictionary <String, KeyedError>()
    
    override init(){
        responseDict = Dictionary <String, KeyedError>()
        responseDict["Required"] = KeyedError(english: "Required", german: "German Required")
        responseDict["Invalid"] = KeyedError(english: "Invalid", german: "German invalid")
        responseDict["Unrecognised"] = KeyedError(english: "Unrecognised", german: "German unrecognised")
    }
    
    func lookUpErrorKey(key : String) -> String {
        
        if let element = responseDict[key]{
            return element.getValueForKey(getSystemLanguage())
        }
        else {
            return "Error"
        }
    }
    
    func getSystemLanguage() -> String{
        let languageAndLocale = NSLocale.preferredLanguages()[0]
        let language = languageAndLocale.componentsSeparatedByString("-")[0]
        return language
    }
    
}
