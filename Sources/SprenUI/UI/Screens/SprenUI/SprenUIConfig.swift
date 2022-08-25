//
//  SprenConfig.swift
//  SprenInternal
//
//  Created by Keith Carolus on 8/18/22.
//

import Foundation
import Logging

extension SprenUI {
    public struct Config {
        public let baseURL: String
        public let apiKey: String
        public let userID: String
        public let onFinish: (() -> Void)?
        public let logger: Logger?
        
        public init(baseURL: String, apiKey: String, userID: String, onFinish: (() -> Void)? = nil, logger: Logger? = nil) {
            self.baseURL = baseURL
            self.apiKey = apiKey
            self.userID = userID
            self.onFinish = onFinish
            self.logger = logger
        }
    }
}
