# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

vacancy = Vacancy.create(
    title: "Programdor web Ruby On Rails",
    category: "FullStak",
    level: "Pleno",
    skills: "Boostrap, Jquery, Ruby Puro, Rails, HTMLss/CSS",
    companyName: "Okobit, Lda",
    location: "Maianga, Rua 2",
    city: "Luanda",
    salary: "3000000",
    description: "A Moon oferece um cadastro de maneira intuitiva e simples, bem como testes com os quais você pode demonstrar suas habilidades. Em pouco tempo consegui agendar entrevistas e estar inserido no mercado.",
    bonus: "Transporte, Alimentação, Plafom de compras mensal",
    user_id: "iHyyCBOUEPdRhsBcRPKgJdE3Z603"
)

puts "====== > ", vacancy.title, vacancy.user_id


