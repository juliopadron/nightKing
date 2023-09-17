//
//  DetailViewController.swift
//  NightKing
//
//  Created by Julio Padron on 9/13/23.
//

import UIKit

class DetailViewController: UIViewController {

    // Property
    var contextItem: ContextItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contextItem = contextItem{
            Label.text = String(contextItem.title)
            Image.image = contextItem.image
            Description.text = String(contextItem.description)
        }
    }
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var Description: UITextView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
