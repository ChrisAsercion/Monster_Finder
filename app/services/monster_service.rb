class MonsterService
  def monsters_by_query(cr)
    response = conn(cr).get("/v1/monsters/")

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn(query)
    Faraday.new(url: 'https://api.open5e.com') do |faraday|
      faraday.params["cr"] = query
    end
  end
end