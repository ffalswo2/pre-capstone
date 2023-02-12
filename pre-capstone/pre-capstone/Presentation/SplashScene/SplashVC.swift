//
//  SplashVC.swift
//  pre-capstone
//
//  Created by 김민재 on 2023/02/12.
//

import UIKit
import SnapKit
import Then


final class SplashVC: UIViewController {
    
    // MARK: - UI Components
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setNavigationBar()
        pushToHomeView()
    }
}

// MARK: - Methods

extension SplashVC {
    private func pushToHomeView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let homeVC = HomeVC()
            self.navigationController?.pushViewController(homeVC, animated: false)
        }
    }
}

// MARK: - UI & Layout

extension SplashVC {
    private func configUI() {
        view.backgroundColor = .gray
    }
    
    private func setNavigationBar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func configLayout() {
        
    }
}
