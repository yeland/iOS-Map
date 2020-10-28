//
//  MapViewModel.swift
//  MapProject
//
//  Created by Linxiao Wei on 2020/10/26.
//  Copyright © 2020 Linxiao Wei. All rights reserved.
//

import MapKit

final class mapViewModel {
  private let keJingZhen = CLLocationCoordinate2D(latitude: 35.160298, longitude: 112.543028)
  private let wuLongKou = CLLocationCoordinate2D(latitude: 35.135041, longitude: 112.68937)
  private let highSchool = CLLocationCoordinate2D(latitude: 35.077268, longitude: 112.612597)
  private let shanghaiUniversity = CLLocationCoordinate2D(latitude: 31.315929, longitude: 121.393603)
  private let xidianUniversity = CLLocationCoordinate2D(latitude: 34.230834, longitude: 108.916787)
  private let agricultureUniversity = CLLocationCoordinate2D(latitude: 34.785258, longitude: 113.66277)
  private let beijingXiangsu = CLLocationCoordinate2D(latitude: 39.927256, longitude: 116.616397)
  private let yangLing = CLLocationCoordinate2D(latitude: 34.27135, longitude: 108.086348)
  private let changAnQu = CLLocationCoordinate2D(latitude: 34.157097, longitude: 108.941579)
  private let xuJiaZhuang = CLLocationCoordinate2D(latitude: 34.228749, longitude: 108.910392)

  private var step: Int = 0

  private var girlPlaces: [CLLocationCoordinate2D] {
    return [keJingZhen, highSchool, shanghaiUniversity, xidianUniversity, xidianUniversity, xidianUniversity, xidianUniversity]
  }

  private var boyPlaces: [CLLocationCoordinate2D] {
    return [wuLongKou, highSchool, agricultureUniversity, beijingXiangsu, yangLing, changAnQu, xuJiaZhuang]
  }

  func moveSteps() -> [MKAnnotation] {
    if step < girlPlaces.count - 1  {
      step = step + 1
    } else {
      step = 0
    }
    return [MapAnnotation(coordinate: girlPlaces[step], peopleType: .Girl), MapAnnotation(coordinate: boyPlaces[step], peopleType: .Boy)]
  }
}
