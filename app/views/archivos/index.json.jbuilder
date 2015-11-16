json.array!(@archivos) do |archivo|
  json.extract! archivo, :id, :my_file
  json.url archivo_url(archivo, format: :json)
end
