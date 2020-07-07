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

class HomeViewModel {
    static let shared = HomeViewModel(limit: 0, offset: 0)
    public let didChange = PassthroughSubject<HomeViewModel, Never>()
    @Published var data = HomeListModel() {
        didSet {
            didChange.send(self)
        }
    }

    init(limit: Int, offset: Int) {
        doLogin(limit: limit, offset: offset)
    }

    var signalPush: PublishSubject<Bool> = PublishSubject<Bool>()
    func doLogin(limit: Int, offset: Int) {
        let param: [String: Any] = [:]
        Alamofire.request("https://rtlab02.rtworkspace.com/api/query/datamodel?dm_name=test_ucdp_ged181&token=secret&limit=1&offset=1")
            .responseJSON { (reponse) in
                switch reponse.result {

                case .success(let reponseData):
                    print(reponseData)
                case .failure(let error):
                    print(error.localizedDescription)
                }
        }

//        Alamofire.request("https://rtlab02.rtworkspace.com/api/query/datamodel?dm_name=test_ucdp_ged181&token=secret&limit=1&offset=1")
//            .responseString { (reponse) in
//                switch reponse.result {
//
//                case .success(let reponseData):
//                    print(reponseData)
//                case .failure(let error):
//                    print(error.localizedDescription)
//                }
//        }
    }
}
