//
//  UserSettings.swift
//  DefaultsProject
//
//  Created by Алексей Пархоменко on 17.03.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

final class UserSettings {
     
    private enum SettingsKes: String {
        case  userName
        case userModel
    }
    static var userModel: UserModel! {
        get {
            guard let saveData = UserDefaults.standard.object(forKey: SettingsKes.userModel.rawValue) as? Data, let decodedModel = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(saveData) as? UserModel else {
                return nil
            }
            return decodedModel
            
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKes.userModel.rawValue
            
            if  let userModel = newValue {
                if let saveData = try? NSKeyedArchiver.archivedData(withRootObject: userModel, requiringSecureCoding: false) {
                    defaults.set(saveData, forKey: key)
                }
            }
        }
    }
    static var userName: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKes.userName.rawValue  )
        } set {
            let defauls = UserDefaults.standard
            let key = SettingsKes.userName.rawValue
            if let name = newValue {
                print("value: \(name) was add to key \(key)")
                defauls.set(name,forKey: key)
            }
            else {
                defauls.removeObject(forKey: key )
            }
        }
        
    }
}
