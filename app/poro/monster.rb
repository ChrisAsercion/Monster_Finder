class Monster
  attr_reader :name, :size, :type, :armor_class, :hit_points, :hit_dice, :speed, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :skills, :damage_vulnerabilities, :damage_resistances, :damage_immunities, :conditiion_immunities, :senses, :challenge_rating, :actions, :special_abilites, :spell_list, :page_no, :environments, :img_main

  def initialize(attributes)
    @name = attributes[:name]
    @size = attributes[:size]
    @type = attributes[:type]
    @armor_class = attributes[:armor_class] 
    @hit_points = attributes[:hit_points]
    @hit_dice = attributes[:hit_dice]
    @speed = attributes[:speed]
    @strength = attributes[:strength]
    @dexterity = attributes[:dexterity]
    @constitution = attributes[:constitution]
    @intelligence = attributes[:intelligence]
    @wisdom = attributes[:wisdom]
    @charisma = attributes[:charisma]
    @skills = attributes[:skills]
    @damage_vulnerabilities = attributes[:damage_vulnerabilities]
    @damage_resistances = attributes[:damage_resistances]
    @damage_immunities = attributes[:damage_immunities]
    @conditiion_immunities = attributes[:conditiion_immunities]
    @challenge_rating = attributes[:challenge_rating]
    @actions = attributes[:actions]
    @special_abilites = attributes[:special_abilites]
    @spell_list = attributes[:spell_list]
    @page_no = attributes[:page_no]
    @environments = attributes[:environments]
    @img_main = attributes[:img_main]
  end
end