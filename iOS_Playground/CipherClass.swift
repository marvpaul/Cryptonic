//
//  CipherClass.swift
//  iOS_Playground
//
//  Created by Marvin Krüger on 22.11.17.
//  Copyright © 2017 Marvin Krüger. All rights reserved.
//

import Foundation
import CryptoSwift

class CipherClass{
    static func crypt(message : String, password : String, algorithm : String) -> String{
        /*var key = arrayFrom(hexString: password.unicodeScalars.filter { $0.isASCII }.map { String(format: "%X", $0.value) }.joined())
        var cryptor = Cryptor(operation:.encrypt, algorithm:.aes, options:.PKCS7Padding, key:key, iv:Array<UInt8>())
        var cipherText = cryptor.update(string: message)?.final()
        let characters = cipherText!.map { Character(Unicode.Scalar.init($0)) }
        //return String(Array(characters))
        let utf8String = String(Array(characters))
        let data = (utf8String).data(using: String.Encoding.utf8)
        let base64 = data!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        return base64*/
        do {
            let aes = try AES(key: password.bytes, blockMode: .ECB, padding: .pkcs7)
            let ciphertext = try aes.encrypt(Array(message.utf8))
            
            return ciphertext.toBase64()!
        } catch {return "Oh no" }
        return ""
    }
}
