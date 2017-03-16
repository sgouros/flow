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


@d1=Document.create(
id:	                '1',
source_name:        'Δήμος Σαμοθράκης',
source_protocol:    '10761',
source_date:        '17/04/2012',
target_protocol:    '134396/1549',
target_date:        '12/05/2012',
subject:            'Aίτημα έγκρισης διάθεσης πίστωσης εκτελούμενου έργου ενταγμένου στη ΣΑΕΠ 031/8 ΠΕΠ ΑΜΘ',
category_id:        '1',
assignment_unit_id: '3',
assignment_date:    '1/5/2012',
task:               '1Αίτημα προς ΕΥΔ',
dispatch_deadline:  '01/06/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '134396/1549',
dispatch_date:      '',
comments:           '1μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d2=Document.create(
id:	                '2',
source_name:        'ΔΕΥΑΚ',
source_protocol:    '10761',
source_date:        '17/04/2012',
target_protocol:    '134396/1549',
target_date:        '12/05/2012',
subject:            'Αίτημα έγκρισης διάθεσης πίστωσης εκτελούμενου έργου ενταγμένου στη ΣΑΕΠ 031/8 ΠΕΠ ΑΜΘ',
category_id:        '1',
assignment_unit_id: '3',
assignment_date:    '2/5/2012',
task:               '2Αίτημα προς ΕΥΔ',
dispatch_deadline:  '02/06/2012',
dispatch_stage_id:  '2',
dispatch_protocol:  '134396/1549',
dispatch_date:      '',
comments:           '2μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d3=Document.create(
id:	                '3',
source_name:        'Δήμος Σουφλίου',
source_protocol:    '320761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Οδοιπορικά 2012',
category_id:        '1',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               '3Αίτημα προς ΕΥΔ',
dispatch_deadline:  '03/06/2012',
dispatch_stage_id:  '2',
dispatch_protocol:  '134396/1549',
dispatch_date:      '',
comments:           '3μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d4=Document.create(
id:	                '4',
source_name:        'Οικονομική Υπηρεσία ΠΑΜΘ',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Έγκριση Προυπολογισμού έργου με κωδ. ΟΠΣ 45126',
category_id:        '1',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '04/06/2012',
dispatch_stage_id:  '3',
dispatch_protocol:  '134396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d5=Document.create(
id:	                '5',
source_name:        'Διεύθυνση Τεχνικών Έργων',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Εξοδα μετακίνησης 2012',
category_id:        '1',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '5/6/2012',
dispatch_stage_id:  '3',
dispatch_protocol:  '134396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d6=Document.create(
id:	                '6',
source_name:        'ΙΘ Εφορία βυζαντινών αρχαιοτήτων',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Ορισμός υπολόγων ΠΣΥΠΟΔΕ',
category_id:        '1',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '6/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d7=Document.create(
id:	                '7',
source_name:        'Ενδιάμεση Διαχειριστική Αρχή ΑΜΘ',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Απόφαση ένταξης έργου με τίτλο "Τουριστική Προβολή Περιφέρειας ΑΜΘ',
category_id:        '5',
assignment_unit_id: '4',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '7/6/2012',
dispatch_stage_id:  '3',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d8=Document.create(
id:	                '8',
source_name:        'Ενδιάμεση Διαχειριστική Αρχή ΑΜΘ',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Aίτημα έγκρισης διάθεσης πίστωσης εκτελούμενου έργου ενταγμένου στη ΣΑΕΠ 031/8 ΠΕΠ ΑΜΘ',
category_id:        '1',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '8/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d9=Document.create(
id:	                '9',
source_name:        'Περιφερειακό Ταμείο ΑΜΘ',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Εντολή χρηματοδότησης',
category_id:        '1',
assignment_unit_id: '4',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '9/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d10=Document.create(
id:	                '10',
source_name:        'Τράπεζα της Ελλάδος',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Ορισμός υπολόγου',
category_id:        '1',
assignment_unit_id: '3',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '10/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d11=Document.create(
id:	                '11',
source_name:        'Δήμος Κομοτηνής',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Αίτημα έγκρισης διάθεσης πίστωσης',
category_id:        '1',
assignment_unit_id: '3',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '11/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d12=Document.create(
id:	                '12',
source_name:        'ΔΕΥΑΚ',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Ορισμός υπολόγων ΠΔΥΠΟΔΕ',
category_id:        '1',
assignment_unit_id: '3',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '12/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d13=Document.create(
id:	                '13',
source_name:        'Δήμος Σουφλίου',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Παροχή 2ης δόσης για το έργο Βοήθεια στο Σπίτι',
category_id:        '1',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '13/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d14=Document.create(
id:	                '14',
source_name:        'Υπουργείο Ανάπτυξης',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Τροποποίηση ΣΑ 2012',
category_id:        '3',
assignment_unit_id: '4',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '14/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d15=Document.create(
id:	                '15',
source_name:        'Γενικό Λογιστήριο του Κράτους',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Υπόλοιπα 2012',
category_id:        '3',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '15/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '6',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )

@d16=Document.create(
id:	                '16',
source_name:        'ΠΕ Έβρου',
source_protocol:    '20761',
source_date:        '27/04/2012',
target_protocol:    '34396/1549',
target_date:        '02/05/2012',
subject:            'Αλλαγη υπολόγων ΠΣΥΠΟΔΕ',
category_id:        '2',
assignment_unit_id: '2',
assignment_date:    '3/5/2012',
task:               'Αίτημα προς ΕΥΔ',
dispatch_deadline:  '16/6/2012',
dispatch_stage_id:  '1',
dispatch_protocol:  '34396/1549',
dispatch_date:      '',
comments:           'μετά θα δούμε για περεταίρω ενέργειες' ,
owner_id:           '1',
created_at:         '2012-03-17 20:13:10', 
updated_at:         '2012-03-18 09:59:35' )



@d1.users << @sgouros
@d1.users << @psarikidou
@d1.users << @sotiriadou
@d1.users << @chouridou

@d2.users << @sgouros
@d2.users << @nalmpantis

@d3.users << @sgouros
@d3.users << @psarikidou


@d4.users << @sgouros
@d4.users << @sotiriadou

@d5.users << @lamprinidou
@d5.users << @sotiriadou
@d5.users << @angelina

@d6.users << @angelina
@d6.users << @sotiriadou
@d6.users << @nalmpantis

@d7.users << @lamprinidou
@d7.users << @psarikidou

@d8.users << @sgouros
@d8.users << @sotiriadou
@d8.users << @angelina

@d9.users << @sgouros
@d9.users << @sotiriadou

@d10.users << @sotiriadou

@d11.users << @sgouros
@d11.users << @sotiriadou
@d11.users << @chouridou
@d11.users << @nalmpantis

@d12.users << @psarikidou
@d12.users << @sotiriadou
@d12.users << @angelina

@d13.users << @lamprinidou
@d13.users << @sotiriadou

@d14.users << @sgouros
@d14.users << @lamprinidou
@d14.users << @chouridou

@d15.users << @psarikidou
@d15.users << @chouridou

@d16.users << @sgouros
@d16.users << @sotiriadou


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






