//
//  Configuration.swift
//  Course App
//
//  Created by Gerardo Reyes on 12.05.2024.
//

import Foundation

struct Configuration: Decodable {
    private enum CodingKeys: String, CodingKey {
        case jokesBaseURL = "API_JOKES_BASE_URL"
    }

    let jokesBaseURL: String
}

extension Configuration {
    // How is this type of assignation called? It's not a closure definitely
    static let `default`: Configuration = {
        // guard works as `unless` in ruby
        // infoDictionary is a NSDictionary aka a Foundation object
        guard let bundleProperties = Bundle.main.infoDictionary else {
            fatalError("Unable to get property list.")
        }
        // convert property list to json object
        guard let serializedPropertyList = try? JSONSerialization.data(
            withJSONObject: bundleProperties, options: []
        ) else {
            fatalError("Unable to serialize data from property list.")
        }
        // .self is the metatype of Configuration type
        guard let cfg = try? JSONDecoder().decode(Configuration.self, from: serializedPropertyList) else {
            fatalError("Unable to decode the environment configuration file.")
        }
        // apparently return is needed in this block
        return cfg
    }()
}
