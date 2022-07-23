//
//  LocationServicesBoundary.swift
//  WeatherApp
//
//  Created by Vishal on 12/07/22.
//

import Foundation

typealias LocationServicesResponseBlock = (_ error: String?,
                                         _ responseModel: LocationServicesResponseModel?) -> Void


protocol LocationServicesBoundary: BaseServiceBoundary {
    func getLocation(using searchText: String,
                     success: @escaping LocationServicesResponseBlock,
                     failure: @escaping BoundaryFailureBlock)
}
