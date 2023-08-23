#rails g scaffold RankType name:string acronym:string type:string
#rails g scaffold Rank full_rank:string short_rank:string acronym:string type:string rate:number
#rails g scaffold Person name:string cpf:string rg:string birthdate:date placebirth:string gender:string email:string phone:string
#rails g scaffold Military person:references nickname:string military_code:string military_register:string rank:references rank_type:references
#rails g scaffold Address person:references cep:string street:string number:string neighborhood:string city:string state:string country:string complement:string


puts "Creating Ranks"
Rank.create!(
    full_rank: "SOLDADO BM",
    short_rank:"SD BM",
    acronym:"SD",
    rank_type:"PRACA",
    rate:"1"
)
Rank.create!(
    full_rank: "CABO BM",
    short_rank:"CB BM",
    acronym:"CB",
    rank_type:"PRACA",
    rate:"2"
)
Rank.create!(
    full_rank: "3º SARGENTO BM",
    short_rank:"3ºSGT BM",
    acronym:"3ºSGT",
    rank_type:"PRACA",
    rate:"3"
)
Rank.create!(
    full_rank: "2º SARGENTO BM",
    short_rank:"2ºSGT BM",
    acronym:"2ºSGT",
    rank_type:"PRACA",
    rate:"4"
)
Rank.create!(
    full_rank: "1º SARGENTO BM",
    short_rank:"1º SGT BM",
    acronym:"1ºSGT",
    rank_type:"PRACA",
    rate:"5"
)
Rank.create!(
    full_rank: "SUBTENENTE BM",
    short_rank:"SUBTEN BM",
    acronym:"ST",
    rank_type:"PRACA",
    rate:"6"
)
Rank.create!(
    full_rank: "ASPIRANTE BM",
    short_rank:"ASP BM",
    acronym:"ASP",
    rank_type:"OFICIAL",
    rate:"7"
)
Rank.create!(
    full_rank: "2º TENENTE BM",
    short_rank:"2º TEN BM",
    acronym:"2ºTEN",
    rank_type:"OFICIAL",
    rate:"8"
)
Rank.create!(
    full_rank: "1º TENENTE BM",
    short_rank:"1º TEN BM",
    acronym:"1ºTEN",
    rank_type:"OFICIAL",
    rate:"9"
)
Rank.create!(
    full_rank: "CAPITAO BM",
    short_rank:"CAP BM",
    acronym:"CAP",
    rank_type:"OFICIAL",
    rate:"10"
)
Rank.create!(
    full_rank: "MAJOR BM",
    short_rank:"MAJ BM",
    acronym:"MAJ",
    rank_type:"OFICIAL",
    rate:"11"
)
Rank.create!(
    full_rank: "TENENTE CORONEL BM",
    short_rank:"TEN CEL BM",
    acronym:"TC BM",
    rank_type:"OFICIAL",
    rate:"12"
)
Rank.create!(
    full_rank: "CORONEL BM",
    short_rank:"CEL BM",
    acronym:"CEL",
    rank_type:"OFICIAL",
    rate:"13"
)
puts "Created "+ Rank.cout.to_s + " ranks!"

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
    type:"PRÇA"
)