# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usuarios = User.create([{ nombre:'Sebastian Perez',rol:'estudiante',carrera:'Administracion',semestre:'5', email:'sebastian@unac.edu.co', password:'123qwe',password_confirmation:'123qwe'},
                      {nombre:'Edwin Cardona',rol:'estudiante',carrera:'Ingenieria en sistemas',semestre:'1', email:'edwin@unac.edu.co', password:'123asd',password_confirmation:'123asd'},
                      {nombre:'Melissa Perez',rol:'estudiante',carrera:'Enfermeria',semestre:'3', email:'melissa@unac.edu.co', password:'123rty',password_confirmation:'123rty'},
                      {nombre:'Erika Erazo',rol:'estudiante',carrera:'APH',semestre:'1', email:'erika@unac.edu.co', password:'456qwe',password_confirmation:'456qwe'},
                      {nombre:'Carlos Diaz',rol: 'estudiante',carrera:'Contaduria',semestre:'1', email:'carlos@unac.edu.co', password:'789asd',password_confirmation:'789asd'},
                      {nombre:'Santiago Alvarez',rol:'estudiante',carrera:'Teologia',semestre:'1', email:'santiago@unac.edu.co', password:'987rty',password_confirmation:'987rty'},
                      {nombre:'Ricardo Correa',rol: 'estudiante',carrera:'Ingenieria en sistemas',semestre:'4', email:'ricardo@unac.edu.co', password:'654qwe',password_confirmation:'654qwe'},
                      {nombre:'Andres Isaza',rol: 'estudiante',carrera:'APH',semestre:'2', email:'andres@unac.edu.co', password:'321asd',password_confirmation:'321asd'},
                      {nombre:'Lester Portillo',rol: 'profesor', email:'lester@unac.edu.co', password:'369rty',password_confirmation:'369rty'},
                      {nombre:'Miguel Pinto',rol: 'profesor', email:'miguel@unac.edu.co', password:'258qwe',password_confirmation:'258qwe'},
                      {nombre:'Manuel Uribe',rol: 'estudiante',carrera:'Musica ',semestre:'1', email:'manuel@unac.edu.co', password:'147asd',password_confirmation:'147asd'},
                      {nombre:'Daniela ALvarez',rol: 'estudiante',carrera:'Preescolar',semestre:'1', email:'daniela@unac.edu.co', password:'963rty',password_confirmation:'963rty'}])
