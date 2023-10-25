//
//  ViewController.swift
//  EmployeesSystem
//
//  Created by abdelmonem on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {
    let manager = Manager()
    let employee = Employee()

    @IBOutlet weak var resLbl: UILabel!
    @IBOutlet weak var salaryTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resLbl.text = " "
    }

    @IBAction func employeeBtn(_ sender: Any) {
        let baseSalary = Int(salaryTxt.text ?? "0")
        let employeeSalary = employee.getSalary(baseSalary: baseSalary ?? 0)
        resLbl.text = " \(employeeSalary)"
    }
    
    @IBAction func managerBtn(_ sender: Any) {
        let baseSalary = Int(salaryTxt.text ?? "0")
        let managerSalary = manager.getSalary(baseSalary: baseSalary ?? 0)
        resLbl.text = " \(managerSalary)"    }
}
class Person {
    func getSalary(baseSalary: Int) -> Int {
        return baseSalary
    }
}

class Manager: Person {
    override func getSalary(baseSalary: Int) -> Int {
        return baseSalary + (baseSalary / 10)
    }
}

class Employee: Person {
    override func getSalary(baseSalary: Int) -> Int {
        return baseSalary + (baseSalary / 20)
    }
}




