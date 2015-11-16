json.array!(@medicinas) do |medicina|
  json.extract! medicina, :id, :my_file
  json.url medicina_url(medicina, format: :json)
end
