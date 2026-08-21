Mime::Type.register "text/javascript", :mjs
Rack::Mime::MIME_TYPES[".mjs"] = "text/javascript"
