json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :edad, :puesto, :salario
  json.url empleado_url(empleado, format: :json)
end
