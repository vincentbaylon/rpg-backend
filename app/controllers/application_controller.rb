class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/character" do
    Character.create(char_params).to_json
  end

  private

  def char_params
    allowed_params = %w(name)
    params.select {|param,value| allowed_params.include?(param)}
  end

end
