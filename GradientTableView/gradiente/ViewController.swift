//
//  ViewController.swift
//  gradiente
//
//  Created by Estefanía Noguerón on 5/31/19.
//  Copyright © 2019 Estefanía Noguerón. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var countriesArray:  [String] = ["México","España",
                                             "Argentina",
                                             "Suiza",
                                             "Francia",
                                             "Italia", "Finlandia", "Rusia", "Japón", "Luxemburgo", "Dinamarca", "Noruega", "Suecia", "Alemania", "China", "Rumania", "Chipre", "Argelia"
                                             ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesArray.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var country = countriesArray[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        
        
        
        cell.textLabel?.text = country
       
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = colorForIndex(index: indexPath.row)
        
    }
    
    
    func colorForIndex(index: Int) -> UIColor {
        
        let itemCount = countriesArray.count
        let color = (CGFloat(index)/CGFloat(itemCount)) * 0.6
        return UIColor(red: 180/255, green: color, blue: 50/255, alpha: 0.9)
        
    }
    

    
  
}

