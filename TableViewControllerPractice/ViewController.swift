//
//  ViewController.swift
//  TableViewControllerPractice
//
//  Created by 권대윤 on 5/23/24.
//

import UIKit

private let reuseIdentifier = "SettingCell"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var globalSettings: [String] = ["공지사항", "실험실", "버전 정보"]
    var privateSettings: [String] = ["개인/보안", "알림", "채팅", "멀티프로필"]
    var otherSettings: [String] = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    //MARK: - UITableViewDatasource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else {
            return "기타"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return globalSettings.count
        } else if section == 1 {
            return privateSettings.count
        } else {
            return otherSettings.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        cell.textLabel?.font = .systemFont(ofSize: 13)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = globalSettings[indexPath.row]
        }
        
        if indexPath.section == 1 {
            cell.textLabel?.text = privateSettings[indexPath.row]
        }
        
        if indexPath.section == 2 {
            cell.textLabel?.text = otherSettings[indexPath.row]
        }
        
        return cell
    }
    
    
    
    
    
    
    
    


}

