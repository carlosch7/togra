json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :famil, :dir, :tel, :tipcasa, :estrato, :serv, :tipserv, :habit, :picasa, :murcasa, :basura, :eqcoc, :eqsal, :eqhabi, :eqcom
  json.url grupo_url(grupo, format: :json)
end
