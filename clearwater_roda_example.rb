require 'roda'
require 'roda/opal_assets'
require 'opal'
require 'clearwater'

class ClearwaterRodaExample < Roda
  plugin :public

  assets = Roda::OpalAssets.new

  route do |r|
    r.public
    assets.route r

    <<-HTML
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>ClearwaterRodaExample</title>
  </head>

  <body>
    <div id="app"></div>
    #{assets.js 'app.js'}
  </body>
</html>
    HTML
  end
end
