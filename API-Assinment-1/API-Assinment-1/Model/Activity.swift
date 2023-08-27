//
//  Activity.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import Foundation

struct Activity: Codable {
    var activity: String
    var type: String
    var participants: Int
}


/*
 {
 "activity": "Study a foreign language",
 "type": "education",
 "participants": 1,
 "price": 0,
 "link": "",
 "key": "9765530",
 "accessibility": 0.1
 }
 */
