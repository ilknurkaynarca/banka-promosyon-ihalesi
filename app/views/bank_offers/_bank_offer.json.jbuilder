json.extract! bank_offer, :id, :round_id, :bank_id, :price, :created_at, :updated_at
json.url bank_offer_url(bank_offer, format: :json)