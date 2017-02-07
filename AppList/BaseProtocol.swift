//
//  BaseProtocol.swift
//  AppList
//
//  Created by Noturno on 31/01/17.
//  Copyright © 2017 Noturno. All rights reserved.
//

import Foundation

protocol BaseProtocol {

    func success<T>(vm: T)
    func fail(error: NSError)

}
