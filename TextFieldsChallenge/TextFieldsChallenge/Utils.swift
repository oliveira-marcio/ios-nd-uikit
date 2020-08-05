//
//  Utils.swift
//  TextFieldsChallenge
//
//  Created by Márcio Oliveira on 8/5/20.
//  Copyright © 2020 Márcio Oliveira. All rights reserved.
//

import Foundation

struct Utils {
    static func isNumericOrBackspace(_ string: String) -> Bool {
        return Int(string) != nil || strcmp(string, "\\b") == -92
    }
}
