# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Listr::Application

use Rack::EY::Solo::DomainRedirect

use Rack::TryStatic,
    :root => "_site",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

use Rack::Static,
    :root => "public/blog",
    :urls => %w[/]
