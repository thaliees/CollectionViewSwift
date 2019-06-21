//
//  TechnologyModel.swift
//  CollectionView
//
//  Created by Thaliees on 6/21/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit

struct TechnologyModel {
    var image:String
    var name:String
    var description:String
    
    init(image:String, name:String, description:String) {
        self.image = image
        self.name = name
        self.description = description
    }
}
