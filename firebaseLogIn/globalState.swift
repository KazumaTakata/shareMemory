//
//  globalState.swift
//  firebaseLogIn
//
//  Created by Kazuma Takata on 2018/03/31.
//  Copyright © 2018 Kazuma Takata. All rights reserved.
//

import Foundation


class globalState {
    
    private init(){}
    
    static let shared = globalState()
    
    var userId = ""
    var userName = ""
    
}
