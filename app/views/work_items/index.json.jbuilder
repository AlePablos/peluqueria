json.array!(@work_items) do |work_item|
  json.extract! work_item, :id, :name, :price, :duration
  json.url work_item_url(work_item, format: :json)
end
