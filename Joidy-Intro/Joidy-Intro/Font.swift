//
//  Font.swift
//  JoidyIntro
//
//  Created by Janek Szynal on 27.08.2015.
//  Copyright © 2015 PJM. All rights reserved.
//


//Adding fonts:
//- add ttf files to the project
//- add "Fonts provided by app entry in info.plist"
//- provide the names of ttf files
//- use code snippet below to find out font name
//- UIFont(name: "xxx", size: 11) can now be used


//for name in UIFont.familyNames() {
//    print(name)
//    if let nameString = name as? String
//    {
//        print(UIFont.fontNamesForFamilyName(nameString))
//    }
//}

import Foundation
import UIKit

extension UIFont {
    
    class func applicationFontOfSize(size : CGFloat) -> UIFont {
        return UIFont(name: "Avenir-Roman", size: size)!
    }
    
    class func headingApplicationFontOfSize(size : CGFloat) -> UIFont {
        return UIFont(name: "Lato-Bold", size: size)!
    }
    
    
}