//
//  HomeViewModel.swift
//  Assingment2
//
//  Created by Minerva on 7/7/20.
//  Copyright © 2020 Nguyen Anh Tu. All rights reserved.
//

import Foundation
import RxSwift
import Combine
import ObjectMapper
import Alamofire
import AlamofireObjectMapper

class HomeViewModel {
    static let shared = HomeViewModel()
    public let didChange = PassthroughSubject<HomeViewModel, Never>()
    @Published var data = [HomeListModel]() {
        didSet {
            didChange.send(self)
        }
    }

    init() {

    }

    var signalPush: PublishSubject<Bool> = PublishSubject<Bool>()
    func getList(limit: Int, offset: Int) {
        Alamofire.request("https://rtlab02.rtworkspace.com/api/query/datamodel?dm_name=test_ucdp_ged181&token=secret&limit=\(limit)&offset=1").responseArray { (response: DataResponse<[HomeListModel]>) in
            let forecastArray = response.result.value
            if let forecastArray = forecastArray {
                self.data = forecastArray
                self.signalPush.onNext(true)
            }
        }
    }
}
