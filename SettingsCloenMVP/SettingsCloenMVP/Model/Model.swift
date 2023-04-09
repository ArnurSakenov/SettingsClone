//
//  Model.swift
//  SettingsCloenMVP
//
//  Created by Arnur Sakenov on 08.04.2023.
//


import UIKit

struct Section {
    let title: String
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
}
struct SettingsSwitchOption {
    let title: String
    var isOn: Bool
    let handler: () -> Void
}

struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: () -> Void
}
