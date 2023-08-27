//
//  nat.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import Foundation
//
struct Nationality: Codable {
    
    let count: Int
    let name: String
    let country: [Country]
    
    struct Country: Codable {
        let country_id: String
        let probability: Double
    }
    
}
//struct Nationality: Codable {
//    let count: Int
//    let name: String
//    let country: [Country]
//
//    struct Country: Codable {
//        let country_id: String
//        let probability: Double
//    }
//}




/*
 {
 "count": 49469,
 "name": "nathaniel",
 "country": [
 {
 "country_id": "GH",
 "probability": 0.209
 },
 {
 "country_id": "NG",
 "probability": 0.096
 },
 {
 "country_id": "PH",
 "probability": 0.074
 },
 {
 "country_id": "US",
 "probability": 0.055
 },
 {
 "country_id": "NE",
 "probability": 0.048
 }
 ]
 }
 
 */
