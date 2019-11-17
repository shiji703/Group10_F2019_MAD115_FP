//
//  ViewEmployeeViewController.swift
//  Group3_F2019_MAD115_FP
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewEmployeeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var empTable: UITableView!
    
  
    
    var sinObj = Singleton.getInstance()
    
    override func viewDidLoad() {
          super.viewDidLoad()
          empTable.dataSource = self
          empTable.delegate = self
          sinObj.alreadyEmployee()
          // Do any additional setup after loading the view.
      }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sinObj.returnCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let e = sinObj.returnEmpObj(empId: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath) as! EmployeeNameTableViewCell
        cell.employeeName.text = e?.name
        cell.employeeType.text = e?.type
        let earn = e?.calcEarnings()
        cell.empTotal.text = earn?.floatToStr()
        return cell
        
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {




            let vc = UIStoryboard(name: "Main", bundle: nil)

            let EmpViewController = vc.instantiateViewController(withIdentifier: "employeeDetails") as! EmployeeDetailsViewController
                EmpViewController.e = sinObj.returnEmpObj(empId: indexPath.row+1)
            self.navigationController?.pushViewController(EmpViewController, animated: true)

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
