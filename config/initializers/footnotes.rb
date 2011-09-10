# Rails Footnotes is a helpful plugin that displays footnotes in your application for easy debugging, such as sessions, request 
# parameters, cookies, filter chain, routes, queries, etc. Installing Rails Footnotes is very easy, just add this to your Gemfile: 
# ruby gem 'rails-footnotes', '>= 3.7', :group => :development
# 
# And add something like this to config/initializers/footnotes.rb to run the Footnotes plugin: 

if defined?(Footnotes) && Rails.env.development? 
  Footnotes.run! 
end

# To add RSolr debugging information to the footnotes panel, you can use the RSolr Footnotes gem by adding this to your Gemfile: 
# ruby gem "rsolr-footnotes", :group => :development
# RSolr footnotes will capture every solr request with basic performance information and provide a link back to the Solr request URL.