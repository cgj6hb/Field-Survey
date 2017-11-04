//
//  FieldObservationJSONLoader.swift
//  Field Survey
//
//  Created by Chris Jansson on 11/3/17.
//  Copyright © 2017 Chris Jansson. All rights reserved.
//

import Foundation

class FieldObservationJSONLoader {
    class func load(fileName: String) -> [FieldObservation] {
        var observations = [FieldObservation]()
        
        if  let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                observations = FieldObservationJSONParser.parse(data)
            }
        
        return observations
    }
}
