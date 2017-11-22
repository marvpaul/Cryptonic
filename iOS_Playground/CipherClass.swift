//
//  CipherClass.swift
//  iOS_Playground
//
//  Created by Marvin Krüger on 22.11.17.
//  Copyright © 2017 Marvin Krüger. All rights reserved.
//

import Foundation
import IDZSwiftCommonCrypto

class CipherClass{
    static func crypt(message : String, password : String, algorithm : String) -> String{
        var key = arrayFrom(string: password)
        var cryptor = Cryptor(operation:.encrypt, algorithm:.aes, options:.PKCS7Padding, key:key, iv:Array<UInt8>())
        var cipherText = cryptor.update(string: message)?.final()
        return cipherText!.reduce("") { $0 + String(UnicodeScalar($1)) }
    }
}
