//
//  ViewController.swift
//  MapProject
//
//  Created by Linxiao Wei on 2020/9/21.
//  Copyright © 2020 Linxiao Wei. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  private let viewModel = mapViewModel()

  @IBOutlet private var mapView: MKMapView!

  @IBAction func playButtonClicked(_ sender: UIButton) {
    let annotations = viewModel.moveSteps()
    mapView.removeAnnotations(mapView.annotations)
    mapView.addAnnotations(annotations)
    mapView.showAnnotations(mapView.annotations, animated: false)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Move"
    mapView.delegate = self
    mapView.isRotateEnabled = false
    mapView.mapType = .standard

    let girlPlace = MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: 35.160298, longitude: 112.543028), peopleType: .Girl)
    let boyPlace = MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: 35.135041, longitude: 112.68937), peopleType: .Boy)
    mapView.addAnnotations([girlPlace, boyPlace])
    mapView.showAnnotations(mapView.annotations, animated: false)
  }
}

extension ViewController: MKMapViewDelegate {
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    guard let annotation = annotation as? MapAnnotation else { return nil }

    let view = mapView.dequeueReusableAnnotationView(
      withIdentifier: MapAnnotationView.reuseIdentifier) as? MapAnnotationView ?? MapAnnotationView(annotation: annotation)
    view.configure(with: annotation)

    return view
  }
}
