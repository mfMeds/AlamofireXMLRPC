//
//  Alanofire+XML.swift
//  AlamofireXMLRPC
//
//  Created by Jeremy Marchand on 08/10/2015.
//  Copyright © 2015 kodlian. All rights reserved.
//

import Foundation
import AEXML
import Alamofire

struct XMLResponseSerializer5: ResponseSerializer {
    func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> AEXMLDocument {
        if let e = error {
            throw e
        }

        guard let validData = data else {
            throw AFError.responseValidationFailed(reason: AFError.ResponseValidationFailureReason.dataFileNil)
        }

        do {
            let XML = try AEXMLDocument(xml: validData)
            return XML
        } catch {
            throw error
        }
    }
}

extension DataRequest {
    public func responseXMLDocument(queue: DispatchQueue? = nil,  completionHandler: @escaping (DataResponse<AEXMLDocument, AFError>) -> Void) -> Self {
        return response(queue: queue ?? .main, responseSerializer: XMLResponseSerializer5(), completionHandler: completionHandler)
    }
}


