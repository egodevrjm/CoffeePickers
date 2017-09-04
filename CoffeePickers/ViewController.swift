//
//  ViewController.swift
//  CoffeePickers
//
//  Created by Ryan Morrison on 03/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblCoffee: UILabel!
    @IBOutlet var btnPicker: UIButton!
    @IBOutlet var lblExtras: UILabel!
    @IBOutlet var btnExtras: UIButton!
    
    
    var ranCoffeeArrayNum: Int = 0
    var ranBtnArrayNum: Int = 0
    var ranExtraArrayNum: Int = 0
    var ranExtraBtnArrayNum: Int = 0
    var ranCoffeeArrayNumMax: Int = 0
    var ranBtnArrayNumMax: Int = 0
    var ranExtraArrayNumMax: Int = 0
    var ranExtraBtnArrayNumMax: Int = 0
    let btnBorderColor = UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0).cgColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMaxArray()
        prettyButton()
        
    }
    
    func prettyButton() {
        
        btnPicker.layer.cornerRadius = 9.0
        //btnPicker.layer.borderWidth = 1.0
        //btnPicker.layer.borderColor = btnBorderColor
        btnPicker.layer.backgroundColor = UIColor.bronzetone.cgColor
        
        btnExtras.layer.cornerRadius = 9.0
        //btnExtras.layer.borderWidth = 1.0
        //btnExtras.layer.borderColor = btnBorderColor
        
    }

    func setMaxArray() {
        
        ranCoffeeArrayNumMax = (CoffeeArray.count - 1)
        ranBtnArrayNumMax = (btnArray.count - 1)
        ranExtraArrayNumMax = (extrasArray.count - 1)
        ranExtraBtnArrayNumMax = (extraBtnArray.count - 1)
    }
    
    func randomCoffee() {
        
        ranCoffeeArrayNum = Int(arc4random_uniform(UInt32(ranCoffeeArrayNumMax)))
        ranBtnArrayNum = Int(arc4random_uniform(UInt32(ranBtnArrayNumMax)))
        
        printCoffee()
        printBtnCoffee()
        
        
    }
    
    func randomExtras() {
        
        ranExtraArrayNum = Int(arc4random_uniform(UInt32(ranExtraArrayNumMax)))
        ranExtraBtnArrayNum = Int(arc4random_uniform(UInt32(ranExtraBtnArrayNumMax)))
        printExtras()
        printBtnExtras()
        
    }
    
    func printCoffee() {
        
        lblCoffee.text = "\(CoffeeArray[ranCoffeeArrayNum])"
        lblCoffee.adjustsFontSizeToFitWidth = true
        
        
    }
    
    func printExtras() {
        
        lblExtras.text = "\(extrasArray[ranExtraArrayNum])"
        lblExtras.adjustsFontSizeToFitWidth = true
        
        
    }
    
    func printBtnCoffee() {
        
        btnPicker.setTitle("\(btnArray[ranBtnArrayNum])", for: .normal)
        
    }
    func printBtnExtras() {
        
        btnExtras.setTitle("\(extraBtnArray[ranExtraBtnArrayNum])", for: .normal)
        
    }
    

    @IBAction func btnPickerAction(_ sender: UIButton) {
        
        randomCoffee()
        
    }
    
    @IBAction func btnExtrasAction(_ sender: UIButton) {
        
        randomExtras()
    }
    

    
    
}

