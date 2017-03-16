# encoding: UTF-8
require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  
  test "should create document" do
    d = Document.new

    d.source_protocol='10761' 
    d.source_date='17/04/2012' 
    d.target_protocol='134396/1549' 
    d.target_date='12/05/2012' 
    d.subject='Aίτημα έγκρισης διάθεσης πίστωσης εκτελούμενου έργου ενταγμένου στη ΣΑΕΠ 031/8 ΠΕΠ ΑΜΘ' 
    d.category_id='1' 
    d.assignment_date='1/5/2012' 
    d.task='1Αίτημα προς ΕΥΔ' 
    d.dispatch_deadline='01/06/2012' 
    d.dispatch_stage_id='1' 
    d.dispatch_protocol='134396/1549' 
    d.dispatch_date='' 
    d.comments='1μετά θα δούμε για περεταίρω ενέργειες'  
    d.owner = users(:angelina)
    d.institution = institutions(:nosokomeio_komotinis)
    d.departments << departments(:tmima_b)
    d.users << users(:sgouros)
    d.users << users(:nalmpantis)
   
    assert d.save
  end

end

