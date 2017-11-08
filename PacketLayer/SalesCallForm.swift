//
//  ViewController.swift
//  PacketLayer
//
//  Created by NCAPS on 10/24/17.
//  Copyright © 2017 NCAPS. All rights reserved.
//

import UIKit

class SalesCallForm: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    //MARK: General Info
    @IBOutlet weak var generalInfoLabel: UILabel!
    @IBOutlet weak var customerName: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    //MARK: POC
    @IBOutlet weak var pocLabel: UILabel!
    @IBOutlet weak var pocNameTextField: UITextField!
    @IBOutlet weak var pocTitleTextField: UITextField!
    @IBOutlet weak var pocPhoneTextField: UITextField!
    @IBOutlet weak var pocEmailTextField: UITextField!
    
    //MARK: Type
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var typeColdCallLabel: UILabel!
    @IBOutlet weak var typeWalkInLabel: UILabel!
    @IBOutlet weak var typeReferralLabel: UILabel!
    @IBOutlet weak var typeResellerLabel: UILabel!
    @IBOutlet weak var typeRepeatLabel: UILabel!
    @IBOutlet weak var typeUnkLabel: UILabel!
    @IBOutlet weak var typeGoogleLabel: UILabel!
    @IBOutlet weak var typeBBNowLabel: UILabel!
    
    //MARK: Reseller POC
    @IBOutlet weak var resellerPOCLabel: UILabel!
    @IBOutlet weak var resellerPOCName: UITextField!
    @IBOutlet weak var resellerPOCOrganization: UITextField!
    @IBOutlet weak var resellerPOCPhoneTextField: UITextField!
    @IBOutlet weak var resellerPOCEmailTextField: UITextField!
    @IBOutlet weak var resellerFeeTextField: UITextField!
    
    //MARK: Opportunites
    
    @IBOutlet weak var OppLabel: UILabel!
    @IBOutlet weak var OppInternetLabel: UILabel!
    @IBOutlet weak var OppBackupInternetLabel: UILabel!
    @IBOutlet weak var OppPublicIps: UILabel!
    @IBOutlet weak var OppTelephoneLabel: UILabel!
    @IBOutlet weak var OppHostingLabel: UILabel!
    @IBOutlet weak var OppWebDevLabel: UILabel!
    @IBOutlet weak var OppDomainNameLabel: UILabel!
    @IBOutlet weak var OppManagedServicesLabel: UILabel!
    
    
    //MARK: General Info Variables
    var customerNameVariable = ""
    var address = ""
    var customerPhone = ""
    
    //MARK: POC Variables
    var pocName = ""
    var pocTitle = ""
    var pocPhone = ""
    var pocEmail = ""
    
    //MARK: Type Variables
    var typeColdCallVariable = false
    var typeWalkInVariable = false
    var typeReferralVariable = false
    var typeResellerVariable = false
    var typeRepeatVariable = false
    var typeUnkVariable = false
    var typeGoogleVariable = false
    var typeBBNowVariable = false
    
    //MARK: Reseller POC Variables
    var resellerPOCNametext = ""
    var resellerPOCOrganizationtext = ""
    var resellerPOCPhone = ""
    var resellerPOCEmail = ""
    var resellerPOCFee = ""
    
    //MARK: Opportunities Variables
    var OppInternetVariable = false
    var OppBackupInternetVariable = false
    var OppPublicIpsVariable = false
    var OppTelephoneVariable = false
    var OppHostingVariable = false
    var OppWebDevVariable = false
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: General Info
        customerName.delegate = self
        addressTextField.delegate = self
        phoneTextField.delegate = self
        
        //MARK: POC
        pocNameTextField.delegate = self
        pocTitleTextField.delegate = self
        pocPhoneTextField.delegate = self
        pocEmailTextField.delegate = self
        
        //MARK: Reseller POC
        resellerPOCName.delegate = self
        resellerPOCOrganization.delegate = self
        resellerPOCEmailTextField.delegate = self
        resellerFeeTextField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //hides keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //MARK: General Info
        customerNameVariable = customerName.text!
        address = addressTextField.text!
        customerPhone = phoneTextField.text!
        
        //MARK: POC
        pocName = pocNameTextField.text!
        pocTitle = pocTitleTextField.text!
        pocPhone = pocPhoneTextField.text!
        pocEmail = pocEmailTextField.text!
        
        //MARK: Reseller POC
        resellerPOCNametext = resellerPOCName.text!
        resellerPOCOrganizationtext = resellerPOCOrganization.text!
        resellerPOCPhone = resellerPOCPhoneTextField.text!
        resellerPOCEmail = resellerPOCEmailTextField.text!
        resellerPOCFee = resellerFeeTextField.text!
        
    }
    
    //MARK: Actions
    
    //MARK: Type Actions
    @IBAction func Test(_ sender: UIButton) {
        print (resellerPOCNametext)
        print("")
        print("")
        print(typeResellerVariable)
        print(typeRepeatVariable)
        print(typeUnkVariable)
    }
    @IBAction func typeColdCallSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            typeColdCallVariable = true
        }
        else
        {
            typeColdCallVariable = false
        }
    }
    @IBAction func typeWalkInSwitch(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            typeWalkInVariable = true
        }
        else
        {
            typeWalkInVariable = false
        }
    }
    @IBAction func typeReferralSwitch(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            typeReferralVariable = true
        }
        else
        {
            typeReferralVariable = false
        }
    }
    @IBAction func typeResellerSwitch(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            typeResellerVariable = true
        }
        else
        {
            typeResellerVariable = false
        }
    }
    @IBAction func typeRepeatSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            typeRepeatVariable = true
        }
        else
        {
            typeRepeatVariable = false
        }
    }
    @IBAction func typeUnkSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            typeUnkVariable = true
        }
        else
        {
            typeUnkVariable = false
        }
    }
    @IBAction func typeGoogleSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            typeGoogleVariable = true
        }
        else
        {
            typeGoogleVariable = false
        }
    }
    @IBAction func typeBBNowSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            typeBBNowVariable = true
        }
        else
        {
            typeBBNowVariable = false
        }
    }
    
    
    
    
    //MARK: Opportunities Actions
    @IBAction func OppInternetSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            OppInternetVariable = true
        }
        else
        {
            OppInternetVariable = false
        }
    }
    @IBAction func OppBackupInternetSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            OppBackupInternetVariable = true
        }
        else
        {
            OppBackupInternetVariable = false
        }
    }
    @IBAction func OppPublicIpsSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            OppPublicIpsVariable = true
        }
        else
        {
            OppPublicIpsVariable = false
        }
    }
    @IBAction func OppTelephoneSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            OppTelephoneVariable = true
        }
        else
        {
            OppTelephoneVariable = false
        }
    }
    @IBAction func OppHostingSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            OppHostingVariable = true
        }
        else
        {
            OppHostingVariable = false
        }
    }
    @IBAction func OppWebDevSwitch(_ sender: UISwitch) {
        if (sender.isOn == true)
        {
            OppWebDevVariable = true
        }
        else
        {
            OppWebDevVariable = false
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
