require 'sinatra/base'
require "sinatra/reloader"

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    return erb(:index)
  end

  post '/hello' do
    if invalid_request_parameters?
      status 400
      return ''
    end
    
    escape_html

    @name = params[:name]

    return erb(:hello)
  end

  def invalid_request_parameters? # returns true if param is invalid
    params[:name].include?("<")
  end

  def escape_html
    params[:name].gsub!('<', '&lt;')
    params[:name].gsub!('>', '&gt;')
    params[:name].gsub!('"', '&quot;')
    params[:name].gsub!("'", "&#39;")
    params[:name].gsub!("&", "&amp;")
  end

end

# <script>window.alert("You've been p0wn3d!!!!"); document.location.href="https://www.youtube.com/watch?v=34Ig3X59_qA";</script>

# post '/hello' do
#   @name = params[:name]

#   if invalid_request_parameters? 
#     status 400
#     return ""
#   end

#   return erb(:hello)
# end

# def invalid_request_parameters?
#   params[:name].gsub!(/[^0-9A-Za-z .]/, '') == params[:name] 
# end

