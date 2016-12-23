//
//  SwitchDelegate.swift
//  mapFun
//
//  Created by ANDERSON CHENG on 12/20/16.
//  Copyright © 2016 Andy Feng. All rights reserved.
//

import Foundation

protocol SwitchDelegate: class {
    func switchChanged(controller: customSideViewCell, selectedCategory category: String)
}
