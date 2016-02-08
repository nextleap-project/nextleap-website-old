# Compass configuration
compass_config do |config|
  # Require any additional compass plugins here.
  config.add_import_path "../bower_components/foundation-sites/scss"
  config.output_style = :compact
  config.http_path = "/"
  config.css_dir = "stylesheets"
  config.sass_dir = "sass"
  config.images_dir = "images"
  config.javascripts_dir = "javascripts"

  # You can select your preferred output style here (can be overridden via the command line):
  # output_style = :expanded or :nested or :compact or :compressed

  # To enable relative paths to assets via compass helper functions. Uncomment:
  config.relative_assets = true

  # To disable debugging comments that display the original location of your selectors. Uncomment:
  # line_comments = false

  config.preferred_syntax = :sass

end

after_configuration do
  bower_config = JSON.parse(IO.read("#{app.root}/.bowerrc"))
  sprockets.append_path File.join "#{app.root}", bower_config["directory"]
end

###
# Page options, layouts, aliases and proxies
###
ignore "bower_components/**/*"

set :relative_links, true

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :blog do |blog|
    blog.name = "events"
    blog.prefix = "events"
    blog.layout = "layout_events"
end

activate :middleman_simple_thumbnailer

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'ie >= 9', 'and_chr >= 2.3']
end

activate :deploy do |deploy|
    app.data.site.deploy.each do |k, v|
        deploy[k.to_sym] = v
    end
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
