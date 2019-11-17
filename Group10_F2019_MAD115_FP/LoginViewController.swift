//
//  LoginViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by Akhil Joseph on 2019-11-16.
//  Copyright © 2019 Bushair. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swRemember: UISwitch!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.text = UserDefaults.standard.string(forKey: "user")
        txtPassword.text = UserDefaults.standard.string(forKey: "pswd")
        swRemember.isOn=false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        if LoginPlist()
                    {
                        if self.swRemember.isOn{
                            
                            UserDefaults.standard.set(txtUserName.text, forKey: "user")
                            UserDefaults.standard.set(txtPassword.text, forKey: "pswd")
                        }else{
                             
                            UserDefaults.standard.removeObject(forKey: "user")
                            UserDefaults.standard.removeObject(forKey: "pswd")
                            }

                                 let stbHome=UIStoryboard(name: "Main", bundle: nil)
                                 let HomeVC = stbHome.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
                                        navigationController?.pushViewController(HomeVC, animated: true)
                         }
                             else{
            
                                    let alert = UIAlertController(title: "Invalid Username or Password", message: "Please enter a valid Username or Password", preferredStyle: .alert)
                                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                                       alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                                       alert.addAction(UIAlertAction(title: "Ignore", style: .destructive, handler: nil))
                                       
                                       self.present(alert, animated: true)
                                                  }
                                          }
                                          
                                          func LoginPlist() -> Bool{
                                          if let bundlePath = Bundle.main.path(forResource: "Users", ofType: "plist") {
                                              let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)

                                               let usersList = dictionary!["users"] as! NSArray
                                           
                                               for u in usersList
                                               {
                                                    let user = u as! NSDictionary
                                                   let usnm = user["user"]! as! String
                                                   let pswd = user["pswd"]! as! String
                                                   if usnm==txtUserName.text! && pswd==txtPassword.text!
                                                   {
                                                       return true
                                                   }
                                               }
                                           
                                          
                                              }
                                               return false
                                          }
                                          
                                               
                             
        
    
    }
    


