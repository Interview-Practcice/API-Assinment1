//
//  ViewModel.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 9/21/23.
//

import Foundation

class Viewmodel : NSObject {
    let urlPopulation = "https://datausa.io/api/data?drilldowns=Nation&measures=Population"

    var population: Population!
    func retrievePopulation() async {
        do {
            //let model: Population = try await Network.shared.fetchData(from: urlPopulation)
            population =  try await Network.shared.fetchData(from: urlPopulation)
            //tableView.reloadData()
            print(population.source)
            //            for model in model.country {
            //                print(model)
            //            }
        } catch {
            print("Error fetching data: \(error)")
        }
    }
}



