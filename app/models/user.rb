# encoding: UTF-8

require 'digest'

class User < ActiveRecord::Base
 
  attr_accessor :password

  validates :name, 					:presence => true
  validates :surname, 			:presence => true
  validates :phone, 				:presence => true
#  validates :manager, 			:presence => true
  
  validates :email, :uniqueness => true, 
  					:length => { :within => 5..50 },
  					:format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i } 

  validates :password, 	:confirmation => true,
						:length => { :within => 4..20 },
						:presence => true,
						:if => :password_validation_required?
						
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :departments

  has_many :owned_documents, :class_name => "Document", :foreign_key => "owner_id"
  
		  
#  has_many :applicants, :dependent => :nullify
#  has_many :support_messages, :dependent => :nullify
            
#  default_scope order('users.surname ASC' )
              
  before_save :encrypt_new_password

#  def self.unsupported()
#    where(:supported => false, :admin => false)
#  end

  def self.authenticate(email, password)
    user = find_by_email(email)
    return user if user && user.authenticated?(password)
  end

  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  def protocol?
    return  email == 'koutsomixalis@remth.gr'
  end

  def inspect
    text = "\n" +
    "User id:"                      + "#{id}"               + "\n" +
    "\tsurname:"          + "\t"    + "#{surname}"          + "\n" +
    "\tname:"             + "\t\t"  + "#{name}"             + "\n" +
    "\tphone:"            + "\t\t"  + "#{phone}"            + "\n" +
    "\temail:"            + "\t\t"  + "#{email}"            + "\n" +
    "\thashed_password:"            + "#{hashed_password}"  + "\n" +
    "\tmanager:"          + "\t"    + "#{manager}"          + "\n" +
    "\tadmin:"            + "\t\t"  + "#{admin}"            + "\n" +
    "\tcreated_at:"       + "\t"    + "#{created_at}"       + "\n" +
    "\tupdated_at:"       + "\t"    + "#{updated_at}"       + "\n" 

    text+="\tdepartments:" 

    departments.each do |d|
      text+="\t"   + "#{d.id}"+" "+"#{d.name}"         + "\n\t\t"
    end
    text+="\n"
    text

  end

  def full_name
    surname + " " + name
  end
  
  def imperative_name
    return "Σεβαστέ" if name == "Σεβαστός"
         
    if female
      name
    else 
      name.chop
    end
  end
  
  def self.all_except_admins
    where("users.admin <> ?",true).order(:surname)
  end
  
  def self.all_active_except_admins
    where("users.admin <> ? AND users.active == ?",true, true).order(:surname)
  end

  def pending_documents_assigned_by(owner)
    Document.joins(:users).where("users.id = ? AND documents.dispatch_stage_id < ? AND documents.owner_id = ?", id, G::DDS_DISPATCHED, owner.id).order("documents.dispatch_stage_id, documents.dispatch_deadline")
  end
  
  def overdue_documents_assigned_by(owner)
    Document.joins(:users).where("users.id = ? AND documents.dispatch_stage_id < ? AND documents.owner_id = ? AND documents.dispatch_deadline < ?", id, G::DDS_DISPATCHED, owner.id, Date.today).order("documents.dispatch_stage_id, documents.dispatch_deadline")
  end
  
  protected
  
  def password_validation_required?
    hashed_password.blank? || password.present?
  end
  
  def encrypt_new_password
    return if password.blank?
    self.hashed_password = encrypt(password)
  end

  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end



end

























