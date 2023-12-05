class Api::V0::MonstersController < ApplicationController
  def show

    cr = 3 #params[cr] in the future? hard coded for right now

    facade = MonsterFacade.new
  end
end