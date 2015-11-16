json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nombre, :edad, :enfermedad, :tratamiento
  json.url paciente_url(paciente, format: :json)
end
