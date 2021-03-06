//
//  UserData.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var tweets = tweetsData {
        didSet {
            didChange.send(self)
        }
    }
    
    var account = accountData {
        didSet {
            didChange.send(self)
        }
    }
    
    var artists = artistData {
        didSet {
            didChange.send(self)
        }
    }
}
