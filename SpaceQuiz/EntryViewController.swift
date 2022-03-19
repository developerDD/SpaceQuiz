//
//  EntryViewController.swift
//  SpaceQuiz
//
//  Created by Дима Деревянко on 19.03.2022.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func goGame(_ sender: Any) {
//        let entryMainBord = UIStoryboard(name: "Main", bundle: Bundle.main)
//        if let entryVC = entryMainBord.instantiateInitialViewController() as? ViewController {
//            present(entryVC, animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
