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
    
    enum SettingOptions: Int, CaseIterable {
        case total
        case personal
        case others
        
        var mainOptions: String {
            switch self {
            case .total:
                return "전체 설정"
            case .personal:
                return "개인 설정"
            case .others:
                return "기타"
            }
        }
        
        var subOptions: [String] {
            switch self {
            case .total:
                return ["공지사항", "실험실", "버전 정보"]
            case .personal:
                return ["개인/보안", "알림", "채팅", "멀티프로필"]
            case .others:
                return ["고객센터/도움말"]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    //MARK: - UITableViewDatasource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingOptions.allCases.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingOptions.allCases[section].mainOptions
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingOptions.allCases[section].subOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        cell.textLabel?.font = .systemFont(ofSize: 13)
        
        cell.textLabel?.text = SettingOptions.allCases[indexPath.section].subOptions[indexPath.row]
        
        return cell
    }
}

