//
//  SettingsProtocols.swift
//  SettingsCloenMVP
//
//  Created by Arnur Sakenov on 09.04.2023.
//
import UIKit

protocol SettingsViewProtocol: AnyObject {
    func reloadData()
}
protocol SettingsPresenterProtocol: AnyObject {
    var sections: [Section] { get }
    func viewDidLoad()
}
