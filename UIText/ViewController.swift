//
//  ViewController.swift
//  UIText
//
//  Created by Kamilia Latifah on 16/05/19.
//  Copyright © 2019 masaksendiri. All rights reserved.
//


//sebelum


import UIKit

class ViewController: UIViewController {

    @IBAction func buttonRegister(_ sender: Any){
        if boksNama.text == "" || boksPhone.text == "" {
            let alert = UIAlertController(title: "Error, Beb!", message: "ya isi dong yang bener teksnya, mau daftar ga sih lo?", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            
            present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "toConfirmPage", sender: self)
        }
    
    }
    @IBOutlet weak var boksNama: UITextField!
    
    @IBOutlet weak var boksPhone: UITextField!
    
    @IBOutlet var teksNama: UIView!
    
    @IBOutlet var teksPhoneNumber: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Page2 {
            destination.boksNama = boksNama.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boksNama.delegate = self
        boksPhone.delegate = self
        
        // Do any additional setup after loading the view.
    }

    

}

/* biar lagi ngetik teks box terusannya bisa dienter pindah ke box lain */

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == boksNama {
            boksPhone.becomeFirstResponder()
        } else if textField == boksPhone {
            textField.resignFirstResponder()
        }
        return true
    }
}
