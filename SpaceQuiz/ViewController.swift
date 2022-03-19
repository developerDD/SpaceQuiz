//
//  ViewController.swift
//  SpaceQuiz
//
//  Created by Дима Деревянко on 18.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lableTop: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var exsit: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var nameButton: UIButton!
    //    список планет
    let elementList = ["Місяць (Луна)", "Земля","Меркурій", "Юпітер", "Венера", "Сонце", "ОК"]
    var cerrentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view.
    }
//    показ вхідного екрану
    override func viewDidAppear(_ animated: Bool) {
        let entryStoryBord = UIStoryboard(name: "Entry", bundle: Bundle.main)
        if let entryVC = entryStoryBord.instantiateInitialViewController() as? EntryViewController {
            present(entryVC, animated: true, completion: nil)
        }
    }
// функція оновленяя
    func updateElement(){
        answerLabel.text = "?"
        let elementName = elementList[cerrentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        
    }
    @IBAction func nameButton(_ sender: UIButton) {
        answerLabel.text = elementList[cerrentElementIndex]
    }
    
    @IBAction func exitButtonTab(_ sender: UIButton) {
        exit(0)
    }
    @IBAction func nextButton(_ sender: UIButton) {
        cerrentElementIndex += 1
        if cerrentElementIndex == elementList.count-1 {
            
            let image = UIImage(named: elementList[cerrentElementIndex])
            imageView.image = image
            lableTop.textColor = .red
            lableTop.text = "Молодець!"
            answerLabel.isHidden = true
            nameButton.isHidden = true
            nextButton.isHidden = true
            exsit.isHidden = false
        }
        updateElement()
    }
    
}

