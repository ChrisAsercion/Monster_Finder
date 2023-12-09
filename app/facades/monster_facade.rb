class MonsterFacade
  def initialize(query)
    @query = query
  end

  def get_data
    service = MonsterService.new

    json = service.monsters_by_query(@query)
  end
end