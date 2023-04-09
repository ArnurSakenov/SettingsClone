//
//  SettingsController.swift
//  iOSNativeSettings
//
//  Created by Arnur Sakenov on 08.04.2023.
//

import UIKit
class SettingsController {
    var models = [Section]()
    
    init() {
        configure()
    }
    
    func configure() {
        models.append(Section(title: "General", options:[
            .switchCell(model: SettingsSwitchOption(title: "Airplane Mode", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemBlue, handler: {
                
            }, isOn: false))
        ]))
        models.append(Section(title: "General", options:[
            .staticCell(model: SettingsOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemTeal, handler: {
                print("Wi-Fi tapped")
            })),
            
            .staticCell(model: SettingsOption(title: "Bluetooth", icon: UIImage(systemName: "bluetooth"), iconBackgroundColor: .systemBlue, handler: {
                print("Bluetooth tapped")
            })),
            
            .switchCell(model: SettingsSwitchOption(title: "Airplane Mode", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemGreen, handler: {
                
            }, isOn: false)),
            
            .staticCell(model: SettingsOption(title: "iCloud", icon: UIImage(systemName: "cloud"), iconBackgroundColor: .systemBlue, handler: {
                print("iCloud tapped")
            })),
        ]))
        
        models.append(Section(title: "Info", options: [
            .staticCell(model: SettingsOption(title: "Cellular", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, handler: {
                print("Cellular tapped")
            })),
            
            .switchCell(model: SettingsSwitchOption(title: "Do Not Disturb", icon: UIImage(systemName: "moon"), iconBackgroundColor: .systemRed, handler: {
                
            }, isOn: false)),
            
            .switchCell(model: SettingsSwitchOption(title: "Airplane Mode", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemPink, handler: {
                
            }, isOn: false)),
            
            .staticCell(model: SettingsOption(title: "iCloud", icon: UIImage(systemName: "cloud"), iconBackgroundColor: .systemBlue, handler: {
                print("iCloud tapped")
            })),
        ]))
        
        models.append(Section(title: "Apps", options:[
            .staticCell(model: SettingsOption(title: "VPN", icon: UIImage(systemName: "lock.shield"), iconBackgroundColor: .systemBlue, handler: {
                print("VPN tapped")
            })),
            
            .staticCell(model: SettingsOption(title: "Personal Hotspot", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemTeal, handler: {
                print("Personal Hotspot tapped")
            })),
            
            .switchCell(model: SettingsSwitchOption(title: "Airplane Mode", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemPink, handler: {
                
            }, isOn: false)),
            
            .staticCell(model: SettingsOption(title: "iCloud", icon: UIImage(systemName: "cloud"), iconBackgroundColor: .systemBlue, handler: {
                print("iCloud tapped")
            })),
        ]))
    }
}
