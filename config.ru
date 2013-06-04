use Rack::Static, 
  :urls => ["/data",
            "/plugins", "/plugins/page_notes", "/plugins/page_notes/styles", "/plugins/sitemap", "/plugins/sitemap/styles", "/plugins/sitemap/styles/images", 
            "/resources/", "resources/chrome", "/resources/css", "/resources/css/images", "/resources/images", "/resources/scripts",
            "/teacher_class_files"],
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