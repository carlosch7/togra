json.array!(@locates) do |locate|
  json.extract! locate, :id, :departamento, :municipio, :gobernador, :alcalde, :fecha_inicio
  json.url locate_url(locate, format: :json)
end
