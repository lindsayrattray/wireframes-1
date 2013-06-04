use Rack::Static, 
  :urls => ["/resources", "resources/chrome", "/resources/css", "/resources/images", "/resources/scripts", "/data", "/teacher_class_files"],
  :root => "/"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('index.html', File::RDONLY)
  ]
}