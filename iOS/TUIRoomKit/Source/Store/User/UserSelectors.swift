//
//  UserSelectors.swift
//  TUIRoomKit
//
//  Created by CY zhao on 2024/6/5.
//

import Foundation

enum UserSelectors {
    static let getUserState = Selector(keyPath: \OperationState.userState)
    
    static let getSelfInfo = Selector.with(getUserState, keyPath:\UserState.selfInfo)
    static let getSelfId = Selector.with(getSelfInfo, keyPath:\UserInfo.userId)
    static let getSelfAvatarURL = Selector.with(getSelfInfo, keyPath: \UserInfo.avatarUrl)
    static let getSelfUserName = Selector.with(getSelfInfo, keyPath: \UserInfo.userName)
    static let getSelfRole = Selector.with(getSelfInfo, keyPath:\UserInfo.userRole)
    static let getAllUsers = Selector.with(getUserState, keyPath: \UserState.allUsers)
    static let getHasScreenStreamUsers = Selector.with(getUserState, keyPath: \UserState.hasScreenStreamUsers)
    static let getDisableMessageUsers = Selector.with(getUserState, keyPath: \UserState.disableMessageUsers)
}

