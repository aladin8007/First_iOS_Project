//
//  News.swift
//  MyFirstProject
//
//  Created by IndyZa on 5/29/2560 BE.
//  Copyright © 2560 IndyZaLab. All rights reserved.
//

import UIKit

class News {
    var id:Int
    var title:String
    var description:String
    var iconImage:UIImage
    var author:String
    var view:Int
    var createDate:String
    var groupLabel:String
    
    init(id:Int,title:String, description:String, iconImage:UIImage, author:String, view:Int, createDate:String, groupLabel:String) {
        self.id = id
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createDate = createDate
        self.groupLabel = groupLabel
        
    }
    
}
