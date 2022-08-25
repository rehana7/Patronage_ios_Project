//
//  Model.swift
//  Patronage
//
//  Created by Naguru Abdur,Rehaman on 4/29/22.
//

import Foundation


struct RegisterModel: Encodable {
    let name : String
    let email : String
    let password: String
}
