json.array!(@personas) do |persona|
  json.extract! persona, :id, :nombre, :edad, :sexo, :cedula, :lugfam, :nivestu, :titul, :servsalud, :cajcomp, :pension, :etnia, :actiecom, :gruporel, :cualgrup, :sectortrab, :grupo_id, :otra_id
  json.url persona_url(persona, format: :json)
end
