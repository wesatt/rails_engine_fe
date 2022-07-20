class RailsEngineFacade

  def all_merchants
    json = rails_eng_svc.all_merchants
    json[:data].map { |merch| Merchant.new(merch) }
  end

  def merchant_items(id)
    json = rails_eng_svc.merchant_items(id)
    json[:data].map { |item| Item.new(item) }
  end

  def merchant_find(id)
    json = rails_eng_svc.merchant_find(id)
    Merchant.new(json[:data])
  end

  private

  def rails_eng_svc
    RailsEngineService.new
  end
end
