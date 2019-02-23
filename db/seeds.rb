# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

user = User.create(name: 'okobit', email: 'okobit@email.com', acountType: 0, password: 'q1w2e3r4t5', password_confirmation: 'q1w2e3r4t5' )

array = [
    "Programador Python", "Programador Ruby", "Programador RubyOnRails", 
    "UX Designer", "UI e UI Designer", "Analista de sistema", "Programador Web", "Programador PHP",
    "Programador JAVA", "Programador C# e JAVA", "Programador Angular e C++"
]

array.each do |item| 
    vacancy = Vacancy.create(
        
        title: item,
        description: "Nada haver",
        typeCompany: 1,
        localization: "morro bento",
        level: 1,
        typeJob: 2,
        responsabily: "bom dia angoola",
        requeriment: "Muitos anos de expericncias",
        otherBenefits: "oferecemos bom salario e outrs",
        user_id: user.id
    )

    puts "====== > ", vacancy.title, , vacancy.user_id
end