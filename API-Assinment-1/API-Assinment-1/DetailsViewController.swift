//
//  DetailsViewController.swift
//  API-Assinment-1
//
//  Created by Veerababu Mulugu on 9/28/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var idNationStr: String = ""
    var nationStr: String = ""
    
    @IBOutlet weak var nation: UILabel!
    @IBOutlet weak var idNation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nation.text = idNationStr
        idNation.text = nationStr

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
