# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.frameworks += ['CoreLocation','QuartsCore']
  app.vendor_project('vendor/MapionMaps.framework', :static,
    :products => ['MapionMaps'],
    :headers_dir => 'Headers'
    )
  app.libs += ["/usr/lib/libsqlite3.dylib"]
  app.name = 'MapionMapsSampleForRubyMotion'
end
