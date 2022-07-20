class Item
  attr_reader :id,
              :name,
              :merchant_id

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @merchant_id = data[:attributes][:merchant_id]
  end
end
