class RailsEngineService

  def conn
    Faraday.new('http://127.0.0.1:3000')
  end

  def all_merchants
    json = rails_eng_svc.conn.get('/api/v1/merchants')
    JSON.parse(json.body, symbolize_names: true)
  end

  def merchant_items(id)
    json = rails_eng_svc.conn.get("/api/v1/merchants/#{id}/items")
    JSON.parse(json.body, symbolize_names: true)
  end

  def merchant_find(id)
    json = rails_eng_svc.conn.get("/api/v1/merchants/#{id}")
    JSON.parse(json.body, symbolize_names: true)
  end

  private

  def rails_eng_svc
    RailsEngineService.new
  end
end
