//
//  SettingsPresenter.swift
//  SettingsCloenMVP
//
//  Created by Arnur Sakenov on 08.04.2023.
//
import Foundation

class SettingsPresenter: SettingsPresenterProtocol {
    private weak var view: SettingsViewProtocol?
    private let settingsModel: SettingsModel
    var sections: [Section] = []

    init(view: SettingsViewProtocol) {
        self.view = view
        self.settingsModel = SettingsModel()
    }

    func viewDidLoad() {
        configureSettings()
        view?.reloadData()
    }

    private func configureSettings() {
        sections = settingsModel.getSettingsSections()
    }
}
