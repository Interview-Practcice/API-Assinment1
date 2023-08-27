//
//  ViewController.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    var pop: Population!
    
    @IBOutlet weak var tableView: UITableView!
    let urlFact = "https://catfact.ninja/fact"
    let urlActivity = "https://www.boredapi.com/api/activity"
    let urlNationality = "https://api.nationalize.io/?name=nathaniel"
    let urlPopulation = "https://datausa.io/api/data?drilldowns=Nation&measures=Population"
    let urlIpinfo = "https://ipinfo.io/161.185.160.93/geo"


    
    override func viewDidLoad() {
        super.viewDidLoad()
        pop = Population()
        
//        Task{
//            await retrieveFactData()
//        }
        
//        Task{
//            await retrieveActivityData()
//        }
//        Task{
//            await retrieveNationality()
//        }
        Task{
            await retrievePopulation()
        }
//        Task{
//            await retriveIpinfo()
//        }
        
        
    }
    
    func retrieveFactData() async {
        do {
            let model: Fact = try await Network.shared.fetchData(from: urlFact)
            print(model.fact)
            print(model.length)
        } catch {
            print("Error fetching data: \(error)")
        }
    }
    
    func retrieveActivityData() async {
        
        do {
            let model: Activity = try await Network.shared.fetchData(from: urlActivity)
            print(model.activity)
            print(model.participants)
        } catch {
            print("Error fetching data: \(error)")
        }
    }
    
    
    func retrieveNationality() async {
       
        do {
            let model: Nationality = try await Network.shared.fetchData(from: urlNationality)
            print(model.count)
            for model in model.country {
                print(model)
            }
        } catch {
            print("Error fetching data: \(error)")
        }
    }
    
    func retrievePopulation() async {
       
        do {
            //let model: Population = try await Network.shared.fetchData(from: urlPopulation)
            pop =  try await Network.shared.fetchData(from: urlPopulation)
            tableView.reloadData()
            print(pop.source)
//            for model in model.country {
//                print(model)
//            }
        } catch {
            print("Error fetching data: \(error)")
        }
    }
    
    func retriveIpinfo() async {

        do {
            let model: IPinfo = try await Network.shared.fetchData(from: urlIpinfo)
            print(model.ip)
        } catch{
            
        }

    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pop.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       // let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)

        let idNation = pop.data[indexPath.row]
        cell.textLabel?.text = idNation.idNation
        cell.detailTextLabel?.text = idNation.nation

        return cell
    }
    
}

