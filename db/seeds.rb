# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create!([
  {id: 1, email: "mdurant@bci.cl", encrypted_password: "$2a$11$C5FUNZOemN5HJR.jMDPDpOYPeYar3zhtHTTdhy0dHVj...", username: "Mauricio Durán T.", image: "2497387.jpg"},
  {id: 2, email: "ekleine@bci.cl", encrypted_password: "$2a$11$RheKq3JQAD9mxr/8ODSih.UyPhTIVJqffOMlh69mkzf...", username: "Erick Kleiner", image: "2497387.jpg"}
])
Area.create!([
    {id: 1, title: "<< Seleccione >>", description: "Valor default de las áreas", created_at: "2016-05-01 20:20:23", updated_at: "2016-05-02 20:35:14"},
    {id: 2, title: "Front Office", description: "FRONT OFFICE", created_at: "2016-05-02 20:35:28", updated_at: "2016-05-02 20:35:28"},
    {id: 3, title: "Clientes MO", description: "Clientes MO", created_at: "2016-05-02 20:37:09", updated_at: "2016-05-02 20:37:09"},
    {id: 4, title: "Confirmaciones MO", description: "Confirmaciones MO", created_at: "2016-05-02 20:37:25", updated_at: "2016-05-02 20:37:25"},
    {id: 5, title: "Lineas MO", description: "Lineas MO", created_at: "2016-05-02 20:37:36", updated_at: "2016-05-02 20:37:36"},
    {id: 6, title: "Procesos BO", description: "Procesos BO", created_at: "2016-05-02 20:37:50", updated_at: "2016-05-02 20:37:50"},
    {id: 7, title: "Riesgo Financiero", description: "Riesgo Financiero", created_at: "2016-05-02 20:38:06", updated_at: "2016-05-02 20:38:06"},
    {id: 8, title: "Custodia", description: "Custodia", created_at: "2016-05-02 20:38:20", updated_at: "2016-05-02 20:38:20"},
    {id: 9, title: "Tesorería", description: "Tesorería", created_at: "2016-05-02 20:38:34", updated_at: "2016-05-02 20:38:34"},
    {id: 10, title: "Back Office (Procesos)", description: "Back Office (Procesos)", created_at: "2016-05-03 15:29:30", updated_at: "2016-05-03 15:29:30"}
    
])

