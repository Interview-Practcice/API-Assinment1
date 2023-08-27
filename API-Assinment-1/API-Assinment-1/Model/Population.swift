//
//  Population.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import Foundation
//https://datausa.io/api/data?drilldowns=Nation&measures=Population

struct Population: Codable {
    let data: [Datum]
    let source: [Source]
    init(source: [Source] = [], data: [Datum] = []) {
        self.source = source
        self.data = data
    }
}

struct Source: Codable {
   // let measures: [String]
    //let annotations: Annotations
    let name: String
    //let substitutions: [Any?]
}
struct Datum: Codable {
    let idNation, nation: String
    let idYear: Int
    let year: String
    let population: Int
    let slugNation: String

    enum CodingKeys: String, CodingKey {
        case idNation = "ID Nation"
        case nation = "Nation"
        case idYear = "ID Year"
        case year = "Year"
        case population = "Population"
        case slugNation = "Slug Nation"
    }
}
