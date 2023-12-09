class Api::V0::MonstersController < ApplicationController
  def show
    cr = params[:cr].to_i

    facade = MonsterFacade.new(cr)

    monsters_data = facade.get_data

    monster_list = monsters_data[:results]
    monsters = monster_list.map { |monster_info| Monster.new(monster_info)}

    render json: monsters
  end
end