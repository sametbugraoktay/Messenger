//
//  ViewController.swift
//  Chat
//
//  Created by Samet Bugra Oktay on 3.08.2020.
//  Copyright © 2020 Samet Bugra Oktay. All rights reserved.
//


import UIKit
import FirebaseAuth
import JGProgressHUD
import Firebase
import FirebaseUI
import GoogleSignIn
import JGProgressHUD
import SDWebImage

class ConversationsViewController: UIViewController,UITableViewDataSource, UITableViewDelegate  {
 
    
   
  
    @IBOutlet weak var tableView: UITableView!
    
       var db: Firestore!
        var chatRoomsArray = [Chat]()
       var roomId: String?
    var messages: [Message] = []
       
       override func viewDidLoad() {
           super.viewDidLoad()

           navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose,
           target: self,
           action: #selector(didTapComposeButton))
               
           self.tableView.reloadData()
           
       }
    

    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return chatRoomsArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChatRoomCell", for: indexPath)
                
                //Uses the chat room data to create the cell.
                let chatRoom = chatRoomsArray[indexPath.row]
         
                return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           //Opens the chat room and passes the room id along.
          
           let vc = ChatViewController()
           
           navigationController?.pushViewController(vc, animated: true)
       }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       validateAuth()
    }

    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    
    @objc private func didTapComposeButton() {
        
          let vc = ChatViewController()
               let nav = UINavigationController(rootViewController: vc)
               nav.modalPresentationStyle = .fullScreen
               present(nav, animated: false)
        
    }
    




    
    
    
    

}

