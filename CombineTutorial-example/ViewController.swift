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
    @IBOutlet weak var navToNumbersSwiftUiBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navToNumbersBtn
            .tapPublisher
            .sink {
                print(#fileID, #function, #line, "-")
                
                #warning("TODO : -numbers로 화면이동")
                let numbersVC = NumbersViewController.instantiate("Numbers")
                self.navigationController?.pushViewController(numbersVC, animated: true)
            }
            .store(in: &subscriptions)
        
        navToNumbersSwiftUiBtn
            .tapPublisher
            .sink {
                print(#fileID, #function, #line, "-")
                
                #warning("TODO : -numbers로 화면이동")
//                let numbersVC = NumbersSwiftUIViewContainerVC()
//                let numbersVC = SwiftUiContainerVC(swiftUiView: NumbersView())
                let numbersVC = NumbersView().getContainerVC()
                
                self.navigationController?.pushViewController(numbersVC, animated: true)
                
//                let nyVC = MyView().getContainerVC()
//                self.navigationController?.pushViewController(nyVC, animated: true)
            }
            .store(in: &subscriptions)
        
        
        
        
    }


}

