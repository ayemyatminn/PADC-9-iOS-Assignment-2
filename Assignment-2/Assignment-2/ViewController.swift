//
//  ViewController.swift
//  Assignment-2
//
//  Created by Aye Myat Minn on 8/9/19.
//  Copyright © 2019 Aye Myat Minn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewFriendsList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewFriendsList.dataSource = self
        let nib = UINib(nibName: FriendTableViewCell.identifier, bundle: nil)
        tableViewFriendsList.register(nib, forCellReuseIdentifier: FriendTableViewCell.identifier)
        
        tableViewFriendsList.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendTableViewCell.identifier, for: indexPath) as! FriendTableViewCell
        return cell
    }
    
    
}

