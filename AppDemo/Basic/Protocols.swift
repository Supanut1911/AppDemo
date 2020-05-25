//
//  Protocols.swift
//  AppDemo
//
//  Created by Supanut Laddayam on 25/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

protocol sendingDataProtocol {
    func setTitleBack(messageBack: String)
}

protocol avatarDelegate {
    func getAvatarInformation(avatarModel: InfomationModel)
}
