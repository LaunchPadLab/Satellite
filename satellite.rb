require 'sinatra'

  set :protection, :except => :frame_options

  get '/' do
    erb :home
  end

  get '/contact' do
  	erb :contact
  end

  post '/contact' do
    require 'pony'
    Pony.mail(
      :from => params[:name] + "<" + params[:email] + ">",
      :to => 'scott@launchpadlab.com',
      :subject => params[:name] + " has contacted you",
      :body => params[:message],
      :port => '587',
      :via => :smtp,
      :via_options => {
        :address              => 'smtp.sendgrid.net',
        :port                 => '587',
        :enable_starttls_auto => true,
        :user_name            => ENV['SENDGRID_USERNAME'],
        :password             => ENV['SENDGRID_PASSWORD'],
        :authentication       => :plain,
        :domain               => 'satellite.herokuapp.com'
      })
    redirect '/success'
  end

  get '/success' do
    erb :success
  end