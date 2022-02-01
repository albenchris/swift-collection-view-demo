//
//  appIconRepo.swift
//  iconview
//
//  Created by Alex Christopherson on 1/28/22.
//

import Foundation

class AppIconRepo {
    
    func getIcons() -> [AppIcon]
    {
        var icons = [AppIcon]()
        
        for _ in 0...3 {
            icons.append(AppIcon(image: "facebook"))
            icons.append(AppIcon(image: "instagram"))
            icons.append(AppIcon(image: "linkedin"))
            icons.append(AppIcon(image: "myspace"))
            icons.append(AppIcon(image: "pintrest"))
            
            icons.append(AppIcon(image: "reddit"))
            icons.append(AppIcon(image: "twitter"))
            icons.append(AppIcon(image: "news"))
            icons.append(AppIcon(image: "binoculars"))
            icons.append(AppIcon(image: "toolbox"))
            
            icons.append(AppIcon(image: "puzzle"))
            icons.append(AppIcon(image: "home"))
            icons.append(AppIcon(image: "picture"))
            icons.append(AppIcon(image: "document"))
            icons.append(AppIcon(image: "settings"))
        }
        
        return icons
    }
}

