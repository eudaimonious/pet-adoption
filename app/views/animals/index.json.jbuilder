json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :age, :breed, :color
  json.url animal_url(animal, format: :json)
end
