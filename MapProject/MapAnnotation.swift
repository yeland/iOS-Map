//
//  LivePlaceAnnotation.swift
//  MapProject
//
//  Created by Linxiao Wei on 2020/10/26.
//  Copyright © 2020 Linxiao Wei. All rights reserved.
//

import MapKit

enum PeopleType {
  case Boy
  case Girl
}

final class MapAnnotation: NSObject, MKAnnotation {
  let coordinate: CLLocationCoordinate2D
  let peopleType: PeopleType
  let image: UIImage

  init(coordinate: CLLocationCoordinate2D, peopleType: PeopleType) {
    self.coordinate = coordinate
    self.peopleType = peopleType
    if peopleType == .Boy {
      self.image = UIImage(named: "boy")!
    } else {
      self.image = UIImage(named: "girl")!
    }
  }
}
