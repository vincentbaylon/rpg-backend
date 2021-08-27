class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  post "/character" do
    new_char = Character.create(char_params)
    new_char.to_json
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

  get "/quest/:id" do
    find_quest = Quest.find(params[:id])
    find_mob = Mob.find(find_quest.mob_id)
    find_mob.to_json
  end

  private

  def char_params
    allowed_params = %w(name health defense)
    params.select {|param,value| allowed_params.include?(param)}
  end

end
