class MapViewController < UIViewController
  def viewDidLoad
    super
    @key = ENV["MAPION_MAPS_KEY"]
    mapView = MMMapView.alloc.initWithFrame(self.view.bounds, key:@key)

    self.view.addSubview(mapView)
    mapView.setZoom(17.5, animated:false)
    mapView.setCenterCoordinate([35.679553,139.70394], animated:false)

    annotationView = MMAnnotationView.alloc.initWithMapView(mapView,  coordinate:mapView.centerCoordinate)
    annotationView.title = "RubyMotionもくもく会"
    #annotationView.tapOnPopup = ->(@mapView) {}
    mapView.addAnnotation(annotationView, animated:false)
  end
end