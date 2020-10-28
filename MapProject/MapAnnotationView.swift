//
//  MapAnnotationView.swift
//  MapProject
//
//  Created by Linxiao Wei on 2020/10/26.
//  Copyright © 2020 Linxiao Wei. All rights reserved.
//

import MapKit

final class  MapAnnotationView: MKAnnotationView {
  static let reuseIdentifier: String = "live-place-annotation-view"

  init(annotation: MapAnnotation) {
    super.init(annotation: annotation, reuseIdentifier: MapAnnotationView.reuseIdentifier)
  }

  func configure(with annotation: MapAnnotation) {
    self.image = annotation.image
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
