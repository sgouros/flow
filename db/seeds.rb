# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


=begin
@kourou=User.create(
id: '1',
name: 'Μαρίνα',
surname: 'Κούρου',
phone: '25313 52178',
email: 'mkourou@remth.gr',
hashed_password: '57f3b058534660559b443e263da01e3e28e7d131',
manager: 'true',
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)
=end

@angelina=User.create(
id:	'2',
name:	'Σιλειάνα',
surname:	'Αγγελίνα',
phone:	'25313 52125',
email:	'angelina@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'true',
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)

=begin
@u3=User.create(
id:	'3',
name:	'Kάκη',
surname:	'Αξωνίδου',
phone:	'25313 52194',
email:	'kakiax@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false',
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)

@u4=User.create(
id:	'4',
name:	'Άρης',
surname:	'Βασιλειάδης',
phone:	'25313 52162',
email:	'vasileiadis@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)

@u5=User.create(
id:	'5',
name:	'Χρύσα',
surname:	'Γκουντέλα',
phone:	'25313 52113',
email:	'goudela@pamth.gov.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'true' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)

@u6=User.create(
id:	'6',
name:	'Κοσμάς',
surname:	'Γρηγοριάδης',
phone:	'25313 52195',
email:	'kosmas@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'true' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)

@u7=User.create(
id:	'7',
name:	'Νατάσσα',
surname:	'Κιοσέογλου',
phone:	'25313 52192',
email:	'akiose@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)

@u8=User.create(
id:	'8',
name:	'Σπύρος',
surname:	'Κουτσομιχάλης',
phone:	'25313 52161',
email:	'koutsomixalis@pamth.gov.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35'
)
=end


@lamprinidou=User.create(
id:	'9',
name:	'Νατάσσα',
surname:	'Λαμπρινίδου',
phone:	'25313 52167',
email:	'nlamprinidou@pamth.gov.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

=begin
@u10=User.create(
id:	'10',
name:	'Μαρία',
surname:	'Λειβαδιώτου',
phone:	'25313 52168',
email:	'mlivadiotou@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@u11=User.create(
id:	'11',
name:	'Σεβαστός',
surname:	'Μαυρίδης',
phone:	'25313 52114',
email:	'smavridis@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@u12=User.create(
id:	'12',
name:	'Γιάννης',
surname:	'Νάκος',
phone:	'25313 52179',
email:	'nakos@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )
=end

@nalmpantis=User.create(
id:	'13',
name:	'Θανάσης',
surname:	'Ναλμπάντης',
phone:	'25313 52129',
email:	'analmpan@pamth.gov.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

=begin
@u14=User.create(
id:	'14',
name:	'Μαρίνα',
surname:	'Πανδρεμενίδου',
phone:	'25313 52174',
email:	'marinapand@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@u15=User.create(
id:	'15',
name:	'Σμαρώ',
surname:	'Παπαντωνίου',
phone:	'25313 52166',
email:	'papantoniou@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )
=end

@sgouros=User.create(
id:	'16',
name:	'Γιώργος',
surname:	'Σγούρος',
phone:	'25313 52127',
email:	'sgouros@remth.gr',
hashed_password:	'57f3b058534660559b443e263da01e3e28e7d131',
manager:	'false' ,
admin: 'false',
female: 'false',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@sotiriadou=User.create(
id:	'17',
name:	'Βάσω',
surname:	'Σωτηριάδου',
phone:	'25313 52164',
email:	'sotiriadou@pamth.gov.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@chouridou=User.create(
id:	'18',
name:	'Βούλα',
surname:	'Χουρίδου',
phone:	'25313 52126',
email:	'pchouridou@pamth.gov.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'true' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@psarikidou=User.create(
id:	'19',
name:	'Χρύσα',
surname:	'Ψαρικίδου',
phone:	'25313 52128',
email:	'xrysaps@remth.gr',
hashed_password:	'7110eda4d09e062aa5e4a390b0a572ac0d2c0220',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@archive=User.create(
id:	'20',
name:	'Αρχείο',
surname:	':',
phone:	'-',
email:	'-------@--------.gr',
hashed_password:	'57f3b058534660559b443e263da01e3e28e7d131',
manager:	'false' ,
admin: 'false',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )

@admin=User.create(
id:	'20',
name:	'admin',
surname:	':',
phone:	'-----------',
email:	'sgouros@anro.gr',
hashed_password:	'57f3b058534660559b443e263da01e3e28e7d131',
manager:	'false' ,
admin: 'true',
female: 'true',
created_at: '2012-03-17 20:13:10', 
updated_at: '2012-03-18 09:59:35' )





AssignmentUnit.create(
id:	'1',
description:	'Γενική Διεύθυνση' )

AssignmentUnit.create(
id:	'2',
description:	'Δ.ΑΝA.Π.' )

AssignmentUnit.create(
id:	'3',
description:	'Τμήμα Α' )

AssignmentUnit.create(
id:	'4',
description:	'Τμήμα Β' )



DispatchStage.create(
id:	'1',
description:	'υπο επεξεργασία' )

DispatchStage.create(
id:	'2',
description:	'προς υπογραφή' )

DispatchStage.create(
id:	'3',
description:	'διεκπεραιώθηκε' )




Category.create(
id: '1',
description: 'ΣΑΕ  031'
)

Category.create(
id: '2',
description: 'ΣΑΕΠ 031'
)

Category.create(
id: '3',
description: 'ΣΑΕΠ 131'
)

Category.create(
id: '4',
description: 'ΣΑΕΠ 231'
)

Category.create(
id: '5',
description: 'ΣΑΕΠ 0312'
)

Category.create(
id: '6',
description: 'ΣΑΕΠ 0313'
)

Category.create(
id: '7',
description: 'ΣΑΕΠ 0318'
)

Category.create(
id: '8',
description: 'ΣΑΕΠ 431'
)

Category.create(
id: '9',
description: 'ΣΑΕΠ 3312'
)

Category.create(
id: '10',
description: 'ΣΑΕΠ 3318'
)

Category.create(
id: '11',
description: 'ΣΑΕΠ 0313'
)

Category.create(
id: '12',
description: 'ΣΑΝΑ 020/3'
)

Category.create(
id: '13',
description: 'ΣΑΝΑ 036/3'
)

Category.create(
id: '14',
description: 'ΣΑΝΑ 008/8'
)

Category.create(
id: '15',
description: 'ΣΑΝΑ 020/8'
)

Category.create(
id: '16',
description: 'ΣΑΝΑ 036/8'
)

Category.create(
id: '17',
description: 'ΣΑΝΑ 041/8'
)

Category.create(
id: '18',
description: 'ΣΑΝΑ 010/8'
)

Category.create(
id: '19',
description: 'ΓΛΚ'
)

Category.create(
id: '20',
description: 'Χρηματοδοτήσεις'
)

Category.create(
id: '21',
description: 'Διάφορα ΠΔΕ'
)

Category.create(
id: '22',
description: 'Τουριστική Προβολή'
)

Category.create(
id: '23',
description: 'Επιχειρησιακό Πρόγραμμα ΑΜΘ'
)

Category.create(
id: '24',
description: 'Εγκύκλιοι - Ενημερωτικά'
)






