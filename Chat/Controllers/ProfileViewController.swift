//
//  ProfileViewController.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 7.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKLoginKit
import GoogleSignIn
import JGProgressHUD
import SDWebImage

class ProfileViewController: UIViewController {

    
    
    @IBOutlet weak var sampleImageView: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var mail: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user: GIDGoogleUser = GIDSignIn.sharedInstance()!.currentUser
        let fullName = user.profile.name
        let email = user.profile.email
        if user.profile.hasImage {
        let userDP = user.profile.imageURL(withDimension: 200)
        self.sampleImageView.sd_setImage(with: userDP, placeholderImage: UIImage(named: "default-profile"))
        } else {
        self.sampleImageView.image = UIImage(named: "default-profile")
        }
        
        self.name.text = fullName
        self.mail.text = email
        
    }
    
    
    @IBAction func logout(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
          let vc = LoginViewController()
          let nav = UINavigationController(rootViewController: vc)
          nav.modalPresentationStyle = .fullScreen
          present(nav, animated: false)
          print ("Successfully signed out")
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
        
        
    }
    


}
