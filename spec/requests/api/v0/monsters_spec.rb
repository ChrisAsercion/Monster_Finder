require 'rails_helper'

describe 'Api::V0::Monsters' do
  it 'returns a list of monsters', vcr: { cassette_name: 'cr1_monster_list'} do
    VCR.use_cassette('cr1_monster_list') do
      query = 1

      get '/api/v0/monster_list', params: { cr: query }, headers: {
        'ACCEPT' => 'application/json',
        'CONTENT_TYPE' => 'application/json'
      }

      monster_list = JSON.parse(response.body, symobolize_names: true)
      #require 'pry'; binding.pry
      expect(response).to have_http_status(:success)

      monster_list.each do |monster|
        #require 'pry'; binding.pry
        expect(monster).to include("name", "size", "type", "armor_class", "hit_points", "hit_dice", "speed", "dexterity", "constitution", "intelligence", "wisdom", "charisma", "skills", "damage_vulnerabilities", "damage_immunities", "conditiion_immunities", "challenge_rating", "special_abilites", "spell_list", "page_no", "environments", "img_main" )
        # 
      end
    end
  end
end