//
//  SettingsModel.swift
//  SettingsCloenMVP
//
//  Created by Arnur Sakenov on 09.04.2023.
//

import UIKit

class SettingsModel {
    func getSettingsSections() -> [Section] {
        return [
            Section(title: "General", options: [
                .switchCell(model: SettingsSwitchOption(title: "Airplane Mode", isOn: false, handler: {
                    // Handle Airplane Mode toggle
                })),
                .staticCell(model: SettingsOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, handler: {
                    // Handle Wi-Fi selection
                })),
                .staticCell(model: SettingsOption(title: "Bluetooth", icon: UIImage(systemName: "bluetooth"), iconBackgroundColor: .systemBlue, handler: {
                    // Handle Bluetooth selection
                }))
            ]),
            Section(title: "Information", options: [
                .staticCell(model: SettingsOption(title: "About", icon: UIImage(systemName: "info.circle"), iconBackgroundColor: .systemBlue, handler: {
                    // Handle About selection
                }))]),
            Section(title: "Apps", options:[
                    .staticCell(model: SettingsOption(title: "VPN", icon: UIImage(systemName: "lock.shield"), iconBackgroundColor: .systemBlue, handler: {
                        print("VPN tapped")
                    }))]),
        ]
    }
}
