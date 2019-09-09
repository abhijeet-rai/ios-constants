//
//  EndPoints.swift
//  ConstantsFramework
//
//  Created by Abhijeet Rai on 06/09/18.
//  Copyright © 2018 ibibo Web Pvt Ltd. All rights reserved.
//

import Foundation

public protocol EndPoints: class {
    func activityServer() -> String
    func voyagerXServer() -> String
}

public class EndPointsManager {
    
    public static var delegate: EndPoints?
    public static var activityServer: String {
        return delegate?.activityServer() ?? "https://hippie.goibibo.com"
    }
    public static var voyagerXServer: String {
        return delegate?.voyagerXServer() ?? "https://voyagerx.goibibo.com"
    }
}
