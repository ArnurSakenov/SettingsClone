//
//  ViewController.swift
//  iOSNativeSettings
//
//  Created by Arnur Sakenov on 07.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var settingsView: SettingsView!
    
    private var settingsController = SettingsController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsView = SettingsView(frame: view.bounds)
        view = settingsView
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        navigationItem.searchController = settingsView.searchController
        navigationItem.hidesSearchBarWhenScrolling = true
        settingsView.searchController.searchBar.delegate = self
        settingsView.tableView.delegate = self
        settingsView.tableView.dataSource = self
    }
}
    

extension ViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsController.models[section].options.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        settingsController.models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let model = settingsController.models[indexPath.section].options[indexPath.row]
            
            switch model.self {
            case .staticCell(let model):
                guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
                     return UITableViewCell()
                 }
                 cell.configure(with: model)
                 return cell

            case .switchCell(let model):
                guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier, for: indexPath) as? SwitchTableViewCell else {
                     return UITableViewCell()
                 }
                 cell.configure(with: model)
                 return cell
            }
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let model = settingsController.models[indexPath.section].options[indexPath.row]

            switch model.self {
            case .staticCell(let model):
                model.handler()

            case .switchCell(let model):
                model.handler()
            }
        }
    }

