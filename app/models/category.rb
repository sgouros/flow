class Category < ActiveRecord::Base
  validates :description, :presence => true
  has_many :documents
  default_scope order('categories.description')



 def inspect
    text = "\n\n" +
    "Category id:"                    + "#{id}"                 + "\n" +
    "\tdescription:"       + "\t"     + "#{description}"        + "\n" 

    documents.each do |d|
      text+="\tdocument:"        + "\t"   + "#{d.id}"+" "+"#{d.full_target_protocol}"         + "\n"
    end
    text
  end

#



end
