json.extract! invoice, :id, :name, :value, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
