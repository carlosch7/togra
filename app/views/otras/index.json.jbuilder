json.array!(@otras) do |otra|
  json.extract! otra, :id, :fuenteingre, :cualfuen, :cuentab, :numcuent, :tarjetdc, :cuantarj, :prestam, :tipoprestamo, :grupo_id
  json.url otra_url(otra, format: :json)
end
