//
//  ViewController.swift
//  NightKing
//
//  Created by Julio Padron on 9/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    let Biography = ContextItem(title: "Biography", image: UIImage(named: "nightKing3")!, description: "The Night King is a fictional character appearing in the HBO high fantasy television series Game of Thrones, based on George R. R. Martin's novel series A Song of Ice and Fire. He is depicted as the leader and the first of the White Walkers, having existed since the age of the First Men, and is the most dangerous and powerful of his race. The Night King is an original creation of the television adaptation, thus far having no counterpart in the novels upon which the show is based.")
    let Strengths = ContextItem(title: "Strengths", image: UIImage(named: "nightKing4")!, description: "As a White Walker, the Night King was immortal, possessed superhuman strength and endurance, could control ice, and resurrect the dead. The Night King also seemed to have some abilities that separated him from common White Walkers as well, including the ability to create more White Walkers, and he could ride a dragon despite not possessing Valyrian blood.")
    let Weaknesses = ContextItem(title: "Weaknesses", image: UIImage(named: "nightKing2")!, description: "Like all White Walkers, the Night King is vulnerable to Dragonglass and Valyrian steel. The Night King also possesses a rather unique vulnerability. As the first of his kind and the progenitor of all White Walkers, his death will wipe out the entire army of the undead.")
    
    var contextItems: [ContextItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contextItems = [Biography, Strengths, Weaknesses]
    }

    @IBAction func didTapBiography(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.contextItem = contextItems[0]
            } else if tappedView.tag == 1 {
                detailViewController.contextItem = contextItems[1]
            } else if tappedView.tag == 2 {
                detailViewController.contextItem = contextItems[2]
            } else {
                print("no ContextItem was tapped, please check your selection.")
            }
        }
    }
}

