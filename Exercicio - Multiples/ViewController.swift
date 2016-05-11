//
//  ViewController.swift
//  Exercicio - Multiples
//
//  Created by R. Maia on 5/11/16.
//  Copyright © 2016 RM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Properties
    var number: Int = 0
    var currentNumber: Int = 0
    let maxResult: Int = 100
    
    //Outlets
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var txtNumber: UITextField!
    
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    
    //Actions
    @IBAction func btnPlayPressed(sender: UIButton!) {
        
        if(txtNumber.text != nil && txtNumber.text != ""){
            setScreen(true)
            number = Int(txtNumber.text!)!;
            setLblResult(currentNumber, numB: number, numC: currentNumber + number)
            currentNumber = number
        }
    }
    
    @IBAction func btnAddPressed(sender: UIButton!) {
        let result = currentNumber + number
        if(result <= maxResult) {
            setLblResult(currentNumber, numB: number, numC: result)
            currentNumber = result
        } else {
            setScreen(false)
            number = 0
            lblResult.text = ""
            txtNumber.text = ""
        }
    }
    
    //Functions
    func setScreen(b: Bool){
        imgLogo.hidden = b
        btnPlay.hidden = b
        txtNumber.hidden = b
        
        btnAdd.hidden = !b;
        lblResult.hidden = !b
    }
    
    func setLblResult(numA: Int, numB: Int, numC: Int){
        lblResult.text = "\(numA) + \(numB) = \(numC)"
    }
}

