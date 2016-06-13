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
    {id: 10, title: "Back Office (Procesos)", description: "Back Office (Procesos)", created_at: "2016-05-03 15:29:30", updated_at: "2016-05-03 15:29:30"},
    {id: 11, title: "Front to Back (Mesa de Dinero)", description: "Front to Back (Mesa de Dinero)", created_at: "2016-05-03 15:32:38.748725", updated_at: "2016-05-03 15:32:38.748725"},
    {id: 12, title: "Fábrica Funcional Calypso (Mesa de Dinero)", description: "Fábrica Funcional Calypso (Mesa de Dinero)", created_at: "2016-05-03 15:29:30", updated_at: "2016-05-03 15:29:30"},
    {id: 13, title: "Back Office", description: "Back Office (Clientes MO)", created_at: "2016-05-03 15:29:30", updated_at: "2016-05-03 15:29:30"},
    {id: 14, title: "Desarrollo CIB", description: "Desarrollo CIB", created_at: "2016-05-03 15:29:30", updated_at: "2016-05-03 15:29:30"}
    
])
#
 #Deed.create!([
  #{id:1, title:"Ambiente FO", benefit:"Soluciona problema de Valoración de Swap. Rápida ejecución de los procesos.", id_user:"1", created_at:"2016-05-16 03:39:20.203623", updated_at:"2016-05-16 13:07:55.753566", area_id:"2", date_deed:"2015-04-01", title_evento:"Ambiente FO", description_evento:""},
  #{id:2, title:"Cambio Pagos Fusion ITAU / Corpbanca", benefit:"Cumplimiento con normativa SWIT para realizar los pagos hacia Corpbanca de Emisor ITAU debido a fusión bancaria.", id_user:"1", created_at:"2016-05-16 13:08:36.898087", updated_at:"2016-05-16 13:08:36.898087", area_id:"11", date_deed:"2015-04-01", title_evento:"Cambio Pagos Fusion ITAU / Corpbanca", description_evento:""},
  #{id:3, title:"Proyecto Normativo Divisas Pendientes", benefit:"Cumplimiento de proyecto normativo.", id_user:"1", created_at:"2016-05-16 13:10:14.165041", updated_at:"2016-05-16 13:10:14.165041", area_id:"10", date_deed:"2015-04-01", title_evento:"Proyecto Normativo Divisas Pendientes", description_evento:"Puesta en etapa Piloto de proyecto normativo."}
  
  #])

