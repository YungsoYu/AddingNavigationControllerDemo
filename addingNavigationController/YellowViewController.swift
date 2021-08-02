//
//  YellowViewController.swift
//  addingNavigationController
//
//  Created by youngseo on 2021/08/02.
//  Copyright © 2021 youngseo. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        setNavigationBar()
    }
    
    @objc func onDoneButton(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
        
    private func setNavigationBar() {
        let btn = UIButton(type: .system)
        btn.setTitle("done", for: .normal)
        btn.addTarget(self, action: #selector(onDoneButton), for: .touchUpInside)
        let rightButton = UIBarButtonItem(customView: btn)
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = rightButton
    }

}
