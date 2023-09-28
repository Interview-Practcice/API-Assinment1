//
//  ViewModel.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 9/21/23.
//

import Foundation

class PopulationViewModel {
    
    let urlPopulation = "https://datausa.io/api/data?drilldowns=Nation&measures=Population"
    
    var population = Population()
    
    func retrievePopulation() async {
        do {
            population =  try await Network.shared.fetchData(from: urlPopulation)
        } catch {
            print("Error fetching data: \(error)")
        }
    }
    
    var dataCount: Int {
        return population.data.count
    }
}



