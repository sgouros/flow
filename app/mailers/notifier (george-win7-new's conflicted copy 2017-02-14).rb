class Notifier < ActionMailer::Base
default :from => "flow@remth.gr"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_user.subject
  #
  
  def email_user_about_updated_document(target_user, document)
    @document=document
    @target_user=target_user
    @email_subject= "[" + t(:flow) +"]" + " " + t(:updated_document) + ": " + document.full_source_protocol + " " + document.subject 
#    mail(:to => target_user.email, :subject => @email_subject).deliver
  end


  def email_user_about_assigned_document(target_user, document)
    @document=document
    @target_user=target_user
    @email_subject = "[" + t(:flow) +"]" + " " + t(:assigned_document) + ": " + document.full_source_protocol + " " + document.subject 
#    mail(:to => target_user.email, :subject => @email_subject).deliver
  end

  
  def email_user_about_dispatched_document(target_user, document)
    @document=document
    @target_user=target_user
    @email_subject = "[" + t(:flow) +"]" + " " + t(:dispatched_document) + ": " + document.full_source_protocol + " " + @document.subject     
#    mail(:to => target_user.email, :subject => @email_subject).deliver
  end

end
