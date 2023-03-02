//
//  ColorPickerViewController.swift
//  ColorsDelegation
//
//  Created by kole ervine on 3/2/23.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func colorButtonTapped(_ sender: UIButton) {
        
        guard let title = sender.title(for: .normal) else {
            fatalError()
        }
        
        switch title {
        case "red": return
        case "blue": return
        case "green": return
        case "yellow": return
        default: fatalError("fatal error at color button \(title)")
        }
    }
    
}
