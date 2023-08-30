include ApplicationHelper
#rails g scaffold RankType name:string acronym:string type:string
#rails  scaffold Rank full_rank:string short_rank:string acronym:string type:string rate:number rank_type:reference
#rails g scaffold Person name:string cpf:string rg:string birthdate:date placebirth:string gender:string email:string phone:string
#rails g scaffold Military person:references nickname:string military_code:string military_register:string rank:references
#rails g scaffold Address person:references cep:string street:string number:string neighborhood:string city:string state:string country:string complement:string

#Rails.db.dropDatabse()

puts "Creating Rank Type..."

RankType.create!(
    name:"QOCBM",
    acronym:"QOC",
    type:"OFICIAL"
)
RankType.create!(
    name:"QOABM",
    acronym:"QOA",
    type:"OFICIAL"
)
RankType.create!(
    name:"QBMG-1",
    acronym:"QBMG-1",
    type:"PRAÇA"
)

puts "Created "+ RankType.count.to_s + " ranks type!"

puts "Creating Ranks..."
Rank.create!(
    rank_type: RankType.find_by(type: "PRACA"),
    full_rank: "SOLDADO BM",
    short_rank:"SD BM",
    acronym:"SD",
    type:"PRACA",
    rate:1
)
Rank.create!(
    rank_type: RankType.find_by(type: "PRACA"),
    full_rank: "CABO BM",
    short_rank:"CB BM",
    acronym:"CB",
    type:"PRACA",
    rate:2
)
Rank.create!(
    rank_type: RankType.find_by(type: "PRACA"),
    full_rank: "3º SARGENTO BM",
    short_rank:"3ºSGT BM",
    acronym:"3ºSGT",
    type:"PRACA",
    rate:3
)
Rank.create!(
    rank_type: RankType.find_by(type: "PRACA"),
    full_rank: "2º SARGENTO BM",
    short_rank:"2ºSGT BM",
    acronym:"2ºSGT",
    type:"PRACA",
    rate:4
)
Rank.create!(
    rank_type: RankType.find_by(type: "PRACA"),
    full_rank: "1º SARGENTO BM",
    short_rank:"1º SGT BM",
    acronym:"1ºSGT",
    type:"PRACA",
    rate:5
)
Rank.create!(
    rank_type: RankType.find_by(type: "PRACA"),
    full_rank: "SUBTENENTE BM",
    short_rank:"SUBTEN BM",
    acronym:"ST",
    type:"PRACA",
    rate:6
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "ASPIRANTE BM",
    short_rank:"ASP BM",
    acronym:"ASP",
    type:"OFICIAL",
    rate:7
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "2º TENENTE BM",
    short_rank:"2º TEN BM",
    acronym:"2ºTEN",
    type:"OFICIAL",
    rate:8
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "1º TENENTE BM",
    short_rank:"1º TEN BM",
    acronym:"1ºTEN",
    type:"OFICIAL",
    rate:9
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "CAPITAO BM",
    short_rank:"CAP BM",
    acronym:"CAP",
    type:"OFICIAL",
    rate:10
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "MAJOR BM",
    short_rank:"MAJ BM",
    acronym:"MAJ",
    type:"OFICIAL",
    rate:11
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "TENENTE CORONEL BM",
    short_rank:"TEN CEL BM",
    acronym:"TC BM",
    type:"OFICIAL",
    rate:12
)
Rank.create!(
    rank_type: RankType.where(name: "QOC"),
    full_rank: "CORONEL BM",
    short_rank:"CEL BM",
    acronym:"CEL",
    type:"OFICIAL",
    rate:13
)
puts "Created "+ Rank.count.to_s + " ranks!"

puts "Creating Person from JSON file..."
if Peron.count == 0
    path = File.join(File.dirname(__FILE__), "./seeds/efetivo_person.json")
    records = JSON.parse(File.read(path))
    records.each do |record|
        person = Person.new
        person.name = record.name
        person.cpf = record.cpf
        person.rg = record.rg
        person.birthdate = record.birthdate
        person.placebirth = record.placebirth
        person.gender = record.gender
        person.email = record.email
        person.phone = record.phone
        Person.create!(person)
        military = Military.new
        military.nickname = record.nickname
        military.military_code = record.military_code
        military.military_register = record.military_register
        military.person = Person.find(cpf: record.cpf)
        military.rank = Rank.find(short_rank: record.short_rank)
        Military.create!(military)
    end
    puts Person.count + " People are seeded!"    
end

@people = Person.all

puts "Creating Address"
@people.each do |p|	
	Address.create!(
        person: Person.find(p.id),
        cep: Faker::Address.postcode,
        street: Faker::Address.street_name,
        number: Faker::Address.building_number,
        neighborhood: Faker::Name.name_with_middle,
        city: Faker::Address.city,
        state: Faker::Address.state,
        country: Faker::Address.country,
        complement: Faker::Address.secondary_address
    )
end
puts "Created " + Address.count.to_s + " addresses!"
