//
//  ViewController.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 8/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = PopulationViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Population"
        //configureSearchBar()
        
        Task{
            await viewModel.retrievePopulation()
            tableView.reloadData()
        }
        
    }
    // Configure the search bar
//    private func configureSearchBar() {
//        // searchBar.delegate = self
//        searchBar.placeholder = "Search"
//    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
        
        let data = viewModel.population.data[indexPath.row]
        
        cell.textLabel?.text = data.idNation
        cell.detailTextLabel?.text = data.nation
        cell.imageView?.image = UIImage(systemName: "person.circle")
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailsViewController;
        let data = viewModel.population.data[indexPath.row]
        
        vc?.idNationStr = data.idNation
        vc?.nationStr = data.nation
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}
/*
 extension ViewController: UISearchBarDelegate {
 
 func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
 filterSchools(for: searchText)
 
 }
 
 func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
 searchBar.text = ""
 filterSchools(for: "")
 
 }
 
 var isSearching: Bool {
 return searchBar.text != ""
 }
 
 func filterSchools(for searchText: String) {
 if searchText.isEmpty {
 viewModel.filteredpopulation = viewModel.population
 } else {
 viewModel.filteredpopulation = viewModel.population.filter {
 $0.schoolName.lowercased().contains(searchText.lowercased()) || $0.dbn.lowercased().contains(searchText.lowercased())
 }
 }
 updateTableView()
 }
 
 }
 */
