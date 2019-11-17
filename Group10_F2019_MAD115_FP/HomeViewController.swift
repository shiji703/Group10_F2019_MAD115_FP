//
//  HOMETableViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  section == 0 ? 6:6
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

                switch indexPath.row {
                       case 0:

                           let stbHome=UIStoryboard(name: "Main", bundle: nil)
                           let NHomeVC = stbHome.instantiateViewController(withIdentifier: "NHomeVC") as! ViewController
                                  navigationController?.pushViewController(NHomeVC, animated: true)
                       case 1:
                          
                           let stbHome=UIStoryboard(name: "Main", bundle: nil)
                           let empVC = stbHome.instantiateViewController(withIdentifier: "empVC") as! ViewEmployeeViewController
                                  navigationController?.pushViewController(empVC, animated: true)
                       case 2:
                                       
                                        let stbHome=UIStoryboard(name: "Main", bundle: nil)
                                        let AddEmpVC = stbHome.instantiateViewController(withIdentifier: "AddEmpVC") as! AddEmployeeViewController
                                               navigationController?.pushViewController(AddEmpVC, animated: true)

                    case 3:
                                    
                                     let stbHome=UIStoryboard(name: "Main", bundle: nil)
                                     let ContactVC = stbHome.instantiateViewController(withIdentifier: "ContactVC") as! ContactUsViewController
                                            navigationController?.pushViewController(ContactVC, animated: true)
                       case 4:
                                   navigationController?.pushViewController(AboutVC, animated: true)
                    

                    case 5:
                                    
                                     let stbHome=UIStoryboard(name: "Main", bundle: nil)
                                     let LogoutVC = stbHome.instantiateViewController(withIdentifier: "LogoutVC") as!LoginViewController
                    
                    
                    navigationController?.popViewController(animated: true)
                       default:
                       print("invalid click")
                       
         
    }
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

