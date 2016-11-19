//
//  CrayonTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Miti Shah on 11/8/16.
//  Copyright © 2016 Miti Shah. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var crayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CrayonManager.manager.populateCrayons(CrayonData: crayolaColors)
        
        crayons = CrayonManager.manager.allCrayons
    
    }


        //Populate crayons with the Crayons
    


    
    // MARK: - Table view data source

    
    //Return how many section you want
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    //Return how many Crayons you hae
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }

    
    //Set the text label of the cell equal to the appropriate crayon
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)

        // Configure the cell...

        let color = crayons[indexPath.row]
        cell.textLabel?.text = color.name
        cell.detailTextLabel?.text = "Hex color: \(color.hex)"
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 0.8)
        
        if color.name == "Black" {
            cell.textLabel?.textColor = UIColor.white
            cell.detailTextLabel?.textColor = UIColor.white
        }
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CrayonSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            
            let colorName = crayons[indexPath.row]
          
            
            let destination = segue.destination as! CrayonViewController
            _ = destination.view
            
            destination.CrayonColorLabel.text = colorName.name
            destination.view.backgroundColor = UIColor(red: CGFloat(colorName.red), green: CGFloat(colorName.green), blue: CGFloat(colorName.blue), alpha: 1.0)
            destination.RGBLabel.text = "RGB: \(colorName.rgb)"
            
            if colorName.name == "Black" {
                destination.CrayonColorLabel.textColor = UIColor.white
                destination.RGBLabel.textColor = UIColor.white
            }

            
        }
        
        
    }
}
