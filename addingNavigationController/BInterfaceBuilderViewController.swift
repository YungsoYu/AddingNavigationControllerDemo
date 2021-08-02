//
//  BInterfaceBuilderViewController.swift
//  addingNavigationController
//
//  Created by youngseo on 2021/08/02.
//  Copyright © 2021 youngseo. All rights reserved.
//

import UIKit

class BInterfaceBuilderViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        setNavigationBar()
    }
    
    @objc func onNextButton(sender: UIButton) {
        let yellowVC = YellowViewController()
        self.navigationController?.pushViewController(yellowVC, animated: true)
        //        yellowVC.modalPresentationStyle = .currentContext
        //        viewControllerWithNC.present(yellowVC, animated: true)
    }
    
    private func setNavigationBar() {
        let btn = UIButton(type: .system)
        btn.setTitle("next", for: .normal)
        btn.addTarget(self, action: #selector(onNextButton), for: .touchUpInside)
        let rightButton = UIBarButtonItem(customView: btn)
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = rightButton
    }
    
    
}
