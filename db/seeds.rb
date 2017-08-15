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


cultivo = Farming.create! :user_id=> 9, :semilla=> 'frijol',recomendaciones:'Antes del cultivo utilice semillas sanas o certificadas. Prefiera las variedades de semillas resistentes o mejoradas.
                      Evite siembras escalonadas. Procure que las épocas de siembra, floración y cosecha coincidan con períodos de lluvias moderadas o en su defecto, establezca su cultivo en épocas de siembra tradicionales en su región.
                      Seleccione lotes o campos que no hayan sido sembrados con frijol en los últimos seis (6) meses. Durante el cultivo siembre en lotes bien drenados. Siembre en la parte alta del camellón o en surcos levantados.
                      Evite altas densidades de siembra. Evite el uso continuado de productos de actividad especifica (puede producir resistencia).
                      Revise periódicamente el cultivo para detectar las enfermedades. Cuando pocas plantas están infectadas, retírelas del cultivo para su destrucción.
                      No retarde la cosecha y trate de cosechar en épocas secas. Después del cultivo retire las semillas afectadas por enfermedades o con perforaciones por insectos. Recoja los restos vegetales sanos y enfermos. Destrúyalos fuera del cultivo.
                      Almacene la cosecha en lugares frescos, secos, limpios, con buena aireación y suficiente luz.'

cultivo = Farming.create! :user_id=>9, :semilla=> 'zanahoria',recomendaciones:'La siembra: A la hora de cultivar zanahorias debes saber que éstas prefieren el clima frío pero al mismo tiempo necesitan del sol. Lo ideal entonces es sembrarlas en un lugar en el que reciban sol durante todo el día.
                             En cuanto a las condiciones del suelo, lo óptimo es un suelo limo arenoso y hay que pensar en el espacio pues a la zanahoria le gusta la profundidad por lo que en tu huerto debe haber suficiente tierra. Para que la tierra tenga nutrientes se recomienda agregar compost.
                             ¿Cómo realizar la siembra de la zanahoria? Realiza un surco en la tierra de un 1 cm de profundidad y coloca en él de 4 a 5 semillas cada 2,5 cm. Luego tapa el surco con tierra y espera a la germinación que, considera, puede demorar algún tiempo. Si eliges sembrar en macetero,
                             elige uno que tenga al menos 25 cm. de profundidad y que sea de 2 litros o más. El riego: Lo ideal es un suelo húmedo por lo que debes regar tus zanahorias a menudo para mantener la tierra en buen estado. Procura que sea un riego profundo para que penetre a todas tus zanahorias.
                             Plagas y Enfermedades: Aquí puedes ver un listado de las plagas y enfermedades más comunes que atacan al cultivar zanahorias:
                             Podredumbre negra: una enfermedad  producida por un hongo que provoca que las hojas se oscurezcan o mueran y además destruye la raíz.
                             Phytophtora y Cercospora: dos enfermedades producidas por hongos que atacan el follaje
                             Nematodos: una plaga que provoca pérdidas de calidad por la bifurcación de la raíz o bien por la aparición de nódulos.
                             Mosca de la zanahoria: un insecto que ataca la raíz.
                             Pulgones: no sólo provocan daños en la planta sino que además son transmisores de virus.
                             Gusanos grises: las orugas se comen las partes aéreas de la planta.
                             La poda: Una vez que aparecen las plantas hay que generar espacio. ¿Cómo hacerlo? Dejando una zanahoria por cada 2,5 cm removiendo las plantas sobrantes. A medida que las plantas crecen hay que repetir la operación pero esta vez dejando 8 cm de distancia entre las plantas.
                             La cosecha: La recolección de zanahorias se realiza a los dos o tres meses de comenzado el ciclo. El proceso es muy delicado para evitar que se dañen los ejemplares. Es por eso que lo mejor será extraer las zanahorias con la mano y no con una herramienta para tal fin. En el caso
                            de que la tierra esté muy apretada entonces es posible ayudarse con una pala para aflojar la tierra. Importante: si se daña una zanahoria durante la recolección se recomienda no guardarla con el resto.'

cultivo = Farming.create! :user_id=>9, :semilla=> 'cilantro',recomendaciones:'Como las semillas del cilantro son dicotiledóneas, esto significa que obtendrás dos plantas por casa semilla que siembres. Tenlo en cuenta a la
                            hora de preparar almácigos. Elige siempre semillas ecológicas u orgánicas (que tengan la certificación). El coriandro es una planta que, aunque puede tolerar climas cálidos, crece
                            mejor en climas templados, por lo que, las plantas serán más frondosas con estas condiciones.
                            Esta planta requerirá de suelos profundos, que tengan buena capacidad de drenaje, que sean permeables, ligeros, que mantengan cierta frescura y calizos. No obstante, es poco exigente
                            en cuanto al sustrato y puede crecer en suelos calcáreos, arcillosos, ácidos y francos. Ubica tus plantas de cilantro en una zona en la que puedan recibir luz, ya que, les gusta estar a pleno sol.
                            Protege las plantas de condiciones externas potencialmente dañinas como son el viento o las lluvias excesivas y continuas. Evita regarlas en exceso, modera los riegos en cuanto a la cantidad de agua
                            que echas a las plantas y a la periodicidad con las que las riegas. Los encharcamientos de agua no son beneficiosos y pueden provocar varios daños en las plantas de cilantro, desde la aparición de hongos
                            hasta la asfixia radicular y muerte de la planta. Puedes ir usando el cilantro para tus recetas cortando las ramitas con cuidado con una tijera limpia'
cultivo = Farming.create! :user_id=>9, :semilla=> 'remolacha',recomendaciones:'Esta planta crece mejor en climas templados con una temperatura de entre 10 y 24°C. Debes tener en cuenta en lo que se refiere a como sembrar
                            remolacha que existen cultivos capaces de crecer en altas  temperaturas, sin embargo existen especies que no son capaces de crecer en climas cálidos especialmente la remolacha
                            azucarera y forrajera. Una vez la planta esté bien desarrollada puede soportar temperaturas más bajas y heladas.
                            Otro consejo sobre como sembrar remolacha es que requiere de una buena iluminación, con al menos unas horas de luz solar directa al día.
                            Terreno: Las remolachas necesitan de un suelo bien drenado, ligero, profundo, sin la presencia de piedras ni otros restos, fértil, rico en materia orgánica y con un pH de entre 6 a 7,5.
                            También debes tener en cuenta en lo que se refiere a como sembrar remolacha esta necesita de un suelo rico en boro para que pueda tener un mejor desarrollo, razón por la cual debe ser añadido
                            mediante el uso de fertilizantes que contienen boro o la adición de bórax al suelo.
                            Riego: Se debe regar el suelo con el fin de mantenerlo húmedo, sin que este se  encharque.
                            Siembra: Se debe sembrar a una profundidad de 1 cm y de preferencia en el lugar definitivo, ya que el trasplante puede llegar a dañar fácilmente la raíz. Se debe retirar las plantas invasoras
                            ya que compiten por recursos y nutrientes. Tampoco debes permitir que las raíces estén expuestos, ya que pueden endurecerse. Se debe cubrir las raíces expuestas con tierra o paja.'
