# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: "admin")
Clasification.create(nombre: "Notas de 	grado")
Clasification.create(nombre: "Solicitud de Beca")
Clasification.create(nombre: "Pedido")
Dependency.create(nombre: "Mesa de entrada")
Dependency.create(nombre: "Secretaria General")
Dependency.create(nombre: "Decanato")
Dependency.create(nombre: "Consejo Directivo")



ResolutionsType.create(nombre: "Suspencion de clases", visto: "Es el lo que dice en la parte de visto", considerando: "La parte que dice en considerando", resuelve: "Lo que el CD o el decano resuelve")
#Resolution.create(fecha: "04/10/2017", numero: "23/2017", visto:"Lo que dice en visto", considerando: "Considerando tal cosa", Resuelve: "Lo que resuelve el CD", resolutions_types_id: "1", record_id: "NULL", autoritie_id:"1")
State.create(nombre: "Recibido")
State.create(nombre: "En tramite")
State.create(nombre: "Rechazado")
State.create(nombre: "Finalizado")

Tpersona.create(tipo: "Directivo")
Tpersona.create(tipo: "Funcionario")
Tpersona.create(tipo: "Solicitante")


Person.create(nombre: "Juan Pérez" , ruc_ci: "154663", correo: "juan@gmail.com", direccion: "Gral. Artigas 658" , tpersona_id: "1")
Person.create(nombre: "Pedro Lopez" , ruc_ci: "589663", correo: "pedro@gmail.com", direccion: "Kaaguy rory 367", tpersona_id: "2")
Person.create(nombre: "Luz Aguirre" , ruc_ci: "5478852", correo: "luzaguirre@gmail.com", direccion: "Villa del Maestro 524" , tpersona_id: "2")
Person.create(nombre: "Aida Nuñez" , ruc_ci: "5214778", correo: "aidan@gmail.com", direccion: "San Pedro 102", tpersona_id: "3")
Person.create(nombre: "Digna Samaniego" , ruc_ci: "2358642", correo: "dignasa@gmail.com", direccion: "San Isidro 362" , tpersona_id: "1")
Person.create(nombre: "Miguel Servantes" , ruc_ci: "2102567", correo: "miguelSer@gmail.com", direccion: "Santo Domingo 621", tpersona_id: "3")

Autoritie.create(nombre:"Consejo Directivo", person_id:"1")
Autoritie.create(nombre:"Decano", person_id:"2")

User.create(email: "admin@gmail.com", password: "654321", person_id: "1", role_id: "1")


Action.create(name: "Ver Usuarios")
Action.create(name: "Crear Usuarios")
Action.create(name: "Editar Usuarios")
Action.create(name: "Eliminar Usuarios")


Action.create(name: "Ver Personas")
Action.create(name: "Crear Personas")
Action.create(name: "Editar Personas")
Action.create(name: "Eliminar Personas")


Action.create(name: "Ver Mesa de entrada")
Action.create(name: "Crear Mesa de entrada")
Action.create(name: "Editar Mesa de entrada")
Action.create(name: "Eliminar Mesa de entrada")


Action.create(name: "Ver Trámites")
Action.create(name: "Crear Trámites")
Action.create(name: "Editar Trámites")
Action.create(name: "Eliminar Trámites")


Action.create(name: "Ver Resoluciones")
Action.create(name: "Crear Resoluciones")
Action.create(name: "Editar Resoluciones")
Action.create(name: "Eliminar Resoluciones")


Action.create(name: "Ver Informe")
Action.create(name: "Crear Informe")
Action.create(name: "Editar Informe")
Action.create(name: "Eliminar Informe")

Action.create(name: "Ver Auditoria")
Action.create(name: "Crear Auditoria")
Action.create(name: "Editar Auditoria")
Action.create(name: "Eliminar Auditoria")

Record.create(fecha: "21/09/2017", num_expediente: "3245", observacion: "ninguna", descripcion: "nada", origen_id: "1", destino_id: "2", clasification_id: "1", person_id: "4", state_id: "3")
Record.create(fecha: "31/07/2017", num_expediente: "3257", observacion: "ninguna", descripcion: "nada", origen_id: "2", destino_id: "3", clasification_id: "1", person_id: "5", state_id: "2")
Record.create(fecha: "11/08/2017", num_expediente: "4589", observacion: "ninguna", descripcion: "nada", origen_id: "1", destino_id: "2", clasification_id: "1", person_id: "3", state_id: "1")