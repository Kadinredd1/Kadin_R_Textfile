//
//  ViewController.swift
//  Textfile
//
//  Created by Kadin Redd on 8/16/20.
//  Copyright © 2020 Kadin Redd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myReadText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            displayTextHere.text = fileContent
        } catch {
            print("Error reading this")
        }
        
        
        
    }
  
    @IBAction func writeMyText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            try typeTextHere.text?.write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Error writting this")
        }
        
        
        
        
        
}
   
    
    
    @IBOutlet weak var typeTextHere: UITextField!
  
    @IBOutlet weak var displayTextHere: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typeTextHere.text = "Text your new text right here!"
        displayTextHere.text = ""
    }
    


}

