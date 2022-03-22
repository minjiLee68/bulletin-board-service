//
//  UserInfo.swift
//  CalorieControl
//
//  Created by 이민지 on 2022/03/16.
//

import UIKit
import FirebaseFirestoreSwift

struct UserInfo: Codable {
//    @DocumentID var id: String?
    var nickName: String
    var kg: String
    var cm: String
    var porpuse: String
    var profile: URL
    
    init(nickName: String, kg: String, cm: String, porpuse: String, profile: URL) {
        self.nickName = nickName
        self.kg = kg
        self.cm = cm
        self.porpuse = porpuse
        self.profile = profile
    }
}

