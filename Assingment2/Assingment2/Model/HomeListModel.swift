//
//  HomeListModel.swift
//  Assingment2
//
//  Created by Minerva on 7/7/20.
//  Copyright © 2020 Nguyen Anh Tu. All rights reserved.
//

import Foundation
import ObjectMapper

class HomeListModel: Mappable {
    var country_id: String?
    var region: String?
    var event_clarity: String?
    var date_prec: String?
    var date_start: String?
    var date_end: String?
    var deaths_a: String?
    var deaths_b: String?
    var deaths_civilians: String?
    var deaths_unknown: String?
    var low: String?
    var best: String?
    var high: String?
    var is_deleted: String?
    var btn_delete: String?
    var id: String?
    var year: String?
    var active_year: String?
    var type_of_violence: String?
    var conflict_new_id: String?
    var conflict_name: String?
    var dyad_new_id: String?
    var dyad_name: String?
    var side_a_new_id: String?
    var gwnoa: String?
    var side_a: String?
    var side_b_new_id: String?
    var gwnob: String?
    var side_b: String?
    var number_of_sources: String?
    var source_article: String?
    var source_office: String?
    var source_date: String?
    var source_headline: String?
    var source_original: String?
    var where_prec: String?
    var where_coordinates: String?
    var adm_1: String?
    var adm_2: String?
    var latitude: String?
    var longitude: String?
    var geom_wkt: String?
    var priogrid_gid: String?
    var country: String?

    required init?(map: Map) {

    }

    init () {

    }

    func mapping(map: Map) {
        country_id <- map["country_id"]
        region <- map["region"]
        event_clarity <- map["event_clarity"]
        date_prec <- map["date_prec"]
        date_start <- map["date_start"]
        date_end <- map["date_end"]
        deaths_a <- map["deaths_a"]
        deaths_b <- map["deaths_b"]
        deaths_civilians <- map["deaths_civilians"]
        deaths_unknown <- map["deaths_unknown"]
        low <- map["low"]
        best <- map["best"]
        high <- map["high"]
        is_deleted <- map["is_deleted"]
        btn_delete <- map["btn_delete"]
        id <- map["id"]
        year <- map["year"]
        active_year <- map["active_year"]
        type_of_violence <- map["type_of_violence"]
        conflict_new_id <- map["conflict_new_id"]
        conflict_name <- map["conflict_name"]
        dyad_new_id <- map["dyad_new_id"]
        dyad_name <- map["dyad_name"]
        side_a_new_id <- map["side_a_new_id"]
        gwnoa <- map["gwnoa"]
        side_a <- map["side_a"]
        side_b_new_id <- map["side_b_new_id"]
        gwnob <- map["gwnob"]
        side_b <- map["side_b"]
        number_of_sources <- map["number_of_sources"]
        source_article <- map["source_article"]
        source_office <- map["source_office"]
        source_date <- map["source_date"]
        source_headline <- map["source_headline"]
        source_original <- map["source_original"]
        where_prec <- map["where_prec"]
        where_coordinates <- map["where_coordinates"]
        adm_1 <- map["adm_1"]
        adm_2 <- map["adm_2"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        geom_wkt <- map["geom_wkt"]
        priogrid_gid <- map["priogrid_gid"]
        country <- map["country"]
    }
}
