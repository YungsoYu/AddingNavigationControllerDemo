//
//  ViewController.swift
//  addingNavigationController
//
//  Created by youngseo on 2021/08/02.
//  Copyright © 2021 youngseo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onPresentButton(_ sender: Any) {
        let vc = AViewController()
        self.present(vc, animated: true)
    }
    
    @IBAction func onByInterfaceBuilderButton(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AInterfaceBuilderViewController") as? AInterfaceBuilderViewController {
            self.present(vc, animated: true)

        }
    }
}

