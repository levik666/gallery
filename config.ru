$stdout.sync = true

use Rack::Static,
  :urls => ["/images", "/assets", "/assets/animate", "/assets/bootstrap/css", "/assets/bootstrap/fonts", "/assets/bootstrap/js", "/assets/gallery", "/assets/mobile", "/assets/respond", "/assets/wow"],
  :root => "."

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

