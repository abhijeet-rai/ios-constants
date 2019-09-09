//
//  FirebaseHandlerProtocol.swift
//  ConstantsFramework
//
//  Created by Abhijeet Rai on 22/10/18.
//  Copyright © 2018 ibibo Web Pvt Ltd. All rights reserved.
//

import Foundation

@objc public protocol FirebaseHandlerProtocol {
    
    @objc static func getStringFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey) -> String
    
    @objc static func getIntFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey) -> Int
    
    @objc static func getBoolFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey) -> Bool
    
    @objc static func getDictionaryFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey) -> Dictionary<String, Any>
    
    @objc static func getArrayFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey) -> Array<Any>
}

public extension FirebaseHandlerProtocol {
    
    static func getStringFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey = .goConfigDatabase) -> String {
        return getStringFor(keyPath: keyPath, dbPath: dbPath)
    }
    
    static func getIntFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey = .goConfigDatabase) -> Int {
        return getIntFor(keyPath: keyPath, dbPath: dbPath)
    }
    
    static func getBoolFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey = .goConfigDatabase) -> Bool {
        return getBoolFor(keyPath: keyPath, dbPath: dbPath)
    }
    
    static func getDictionaryFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey = .goConfigDatabase) -> Dictionary<String, Any> {
        return getDictionaryFor(keyPath: keyPath, dbPath: dbPath)
    }
    
    static func getArrayFor(keyPath: FirebaseConfigKey, dbPath:FirebaseDatabaseKey = .goConfigDatabase) -> Array<Any> {
        return getArrayFor(keyPath: keyPath, dbPath: dbPath)
    }
}
