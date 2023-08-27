//
//  IpInfo.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import Foundation

struct IPinfo: Codable{
    let ip: String
    let city: String
    let region: String
    let country: String
    let loc: String
    let org: String
    let postal: String
    let timezone: String
    let readme: String

//    enum CodingKeys: CodingKey {
//        case ip: "ip"
//        case city
//        case region
//        case country
//        case loc
//        case org
//        case postal
//        case timezone
//        case readme
//    }
}


/*
 {
 "ip": "161.185.160.93",
 "city": "New York City",
 "region": "New York",
 "country": "US",
 "loc": "40.7143,-74.0060",
 "org": "AS22252 The City of New York",
 "postal": "10001",
 "timezone": "America/New_York",
 "readme": "https://ipinfo.io/missingauth"
 }
 */
