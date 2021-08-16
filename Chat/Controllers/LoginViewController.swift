//
//  LoginViewController.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 6.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKLoginKit
import GoogleSignIn
import JGProgressHUD

class LoginViewController: UIViewController {

    private let spinner = JGProgressHUD(style: .dark)

    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = true
        return scrollView
    }()

   

    
    private let googleLogInButton = GIDSignInButton()

    private var loginObserver: NSObjectProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        loginObserver = NotificationCenter.default.addObserver(forName: .didLogInNotification, object: nil, queue: .main, using: { [weak self] _ in
            guard let strongSelf = self else {
                return
            }

            strongSelf.navigationController?.dismiss(animated: true, completion: nil)
        })

        GIDSignIn.sharedInstance()?.presentingViewController = self

        title = "Giriş Yap"
        view.backgroundColor = .systemBackground

        

       

        
        view.addSubview(scrollView)
        scrollView.addSubview(googleLogInButton)
    }

    deinit {
        if let observer = loginObserver {
            NotificationCenter.default.removeObserver(observer)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = view.bounds

        let size = scrollView.width/3
        

        googleLogInButton.frame = CGRect(x: 30,
                                   y: 30,
                                   width: scrollView.width-60,
                                   height: 52)
    }



 

}



