//
//  EmbedNCViewController.swift
//  addingNavigationController
//
//  Created by youngseo on 2021/08/02.
//  Copyright © 2021 youngseo. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    
    let BViewController = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addViewController()
        setNavigationBar()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        setNavigationBar()
    }
    
    private func addViewController() {
        // 1. B뷰컨트롤러가 root인 내비게이션컨트롤러 생성
        BViewController.view.backgroundColor = .red
        let navigationController = UINavigationController(rootViewController: BViewController)
        // 2. A뷰컨트롤러에 내비게이션컨트롤러 추가
        self.addChild(navigationController)
        view.addSubview(navigationController.view)
        navigationController.didMove(toParent: self)
    }
    
    @objc func onNextButton(sender: UIButton) {
        // 3. B뷰컨트롤러에서 push/present
        let CViewController = CViewController()
        BViewController.navigationController?.pushViewController(CViewController, animated: true)
    }
    
    private func setNavigationBar() {
        let btn = UIButton(type: .system)
        btn.setTitle("next", for: .normal)
        btn.addTarget(self, action: #selector(onNextButton), for: .touchUpInside)
        let rightButton = UIBarButtonItem(customView: btn)
        BViewController.navigationController?.navigationBar.topItem?.rightBarButtonItem = rightButton
    }
    
}
