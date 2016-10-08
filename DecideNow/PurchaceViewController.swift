//
//  PurchaceViewController.swift
//  DecideNow
//
//  Created by 持田章弘 on 2016/10/08.
//  Copyright © 2016年 500hack. All rights reserved.
//

import UIKit

class PurchaceViewController: UIViewController, UITextFieldDelegate {
    
    var nameForm: UITextField!
    var adressForm: UITextField!
    var creditForm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Const.MAIN_BACKGROUND_COLOR
        
        self.view.addSubview(UIView.makeHeader())
        
        let name = UILabel.makeLabel(y: 80, text: "Name:")
        self.view.addSubview(name)
        
        nameForm = UITextField.makeNameForm(y: name.frame.maxY + 10)
        nameForm.delegate = self
        self.view.addSubview(nameForm)
        
        let adress = UILabel.makeLabel(y: nameForm.frame.maxY + 30, text: "Adress:")
        self.view.addSubview(adress)
        
        adressForm = UITextField.makeAdressForm(y: adress.frame.maxY + 10)
        adressForm.delegate = self
        self.view.addSubview(adressForm)
        
        let credit = UILabel.makeLabel(y: adressForm.frame.maxY + 30, text: "Credit Card Number:")
        self.view.addSubview(credit)
        
        creditForm = UITextField.makeCreditForm(y: credit.frame.maxY + 10)
        creditForm.delegate = self
        self.view.addSubview(creditForm)
        
        let footer = UIView.makeFooter()
        let cancel = UIButton.cancelButton(frame: CGRect(x: 32, y: 10, width: 100, height: 30))
        cancel.addTarget(self, action: #selector(self.canceling), for: .touchUpInside)
        footer.addSubview(cancel)
        
        let buy = UIButton.buyButton(frame: CGRect(x: Const.SCREEN_WIDTH - 32 - 100, y: 10, width: 100, height: 30))
        buy.addTarget(self, action: #selector(self.buyButton), for: .touchUpInside)
        footer.addSubview(buy)
        self.view.addSubview(footer)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>?, with event: UIEvent?) {
        if(nameForm.isFirstResponder){
            nameForm.resignFirstResponder()
        }
        if(adressForm.isFirstResponder){
            adressForm.resignFirstResponder()
        }
        if(creditForm.isFirstResponder){
            creditForm.resignFirstResponder()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    func canceling(){
        
    }
    
    func buyButton(){
        
    }
}