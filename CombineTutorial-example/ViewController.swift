//
//  ViewController.swift
//  CombineTutorial-example
//
//  Created by 강민혜 on 3/26/23.
//

import UIKit
import CombineCocoa
import Combine

class ViewController: UIViewController {
    
    var subscriptions = Set<AnyCancellable>()
    
    @IBOutlet weak var navToNumbersBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navToNumbersBtn
            .tapPublisher
            .sink {
                print(#fileID, #function, #line, "-")
                
                #warning("TODO : -numbers로 화면이동")
                let numbersStoryboad = UIStoryboard(name: "Numbers", bundle: Bundle.main)
                let numbersVC = numbersStoryboad.instantiateViewController(withIdentifier: "NumbersViewController")
                self.navigationController?.pushViewController(numbersVC, animated: true)
            }
            .store(in: &subscriptions)
    }


}

