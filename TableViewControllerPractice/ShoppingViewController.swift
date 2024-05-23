//
//  ShoppingViewController.swift
//  TableViewControllerPractice
//
//  Created by 권대윤 on 5/23/24.
//

import UIKit

class ShoppingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var backView: UIView!
    
    @IBOutlet var itemTextField: UITextField!
    
    @IBOutlet var addButton: UIButton!
    
    var shoppingItems: [String] = ["그립톡 구매하기", "사이다 구매하기", "아이패드 케이스 최저가 알아보기", "양말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.register(ShoppingTableViewCell.self, forCellReuseIdentifier: "ShoppingCell") //스토리보드 시 사용X
        tableView.separatorStyle = .none
        
        configureUI()
    }
    
    func configureUI() {
        backView.backgroundColor = .systemGray6
        backView.layer.cornerRadius = 10

        configureNavi()
        configureUITextField()
        configureUIButton()
    }
    
    func configureNavi() {
        navigationItem.title = "쇼핑"
    }
    
    func configureUITextField() {
        itemTextField.placeholder = "무엇을 구매하실 건가요?"
        itemTextField.borderStyle = .none
        itemTextField.backgroundColor = .clear
        itemTextField.tintColor = .black
    }

    func configureUIButton() {
        addButton.setTitle("추가", for: .normal)
        addButton.backgroundColor = .systemGray5
        addButton.tintColor = .black
        addButton.layer.cornerRadius = 10
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shoppingItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.itemLabel.text = shoppingItems[indexPath.row]
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    
    //MARK: - Functions
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let item = itemTextField.text, item != "" else {return}
        
        shoppingItems.append(item)
        
        tableView.reloadData()
    }
    
    
}
