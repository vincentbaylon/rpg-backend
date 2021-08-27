class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/character" do
    Character.create(char_params).to_json
  end

  patch "/character/:id" do
    find_char = Character.find(params[:id])
    find_char.update(char_params)
    find_char.to_json
  end

  delete "/character/:id" do
    find_char = Character.find(params[:id])
    find_char.destroy
    find_char.to_json
  end

  private

  def char_params
    allowed_params = %w(name health)
    params.select {|param,value| allowed_params.include?(param)}
  end

end
