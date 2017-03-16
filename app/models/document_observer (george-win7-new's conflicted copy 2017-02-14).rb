class DocumentObserver < ActiveRecord::Observer
  
  def after_create(document)
    document.email_all_users_about_assigned
  end

  def after_update(document)
    document.email_new_users_about_assigned
    document.email_old_users_about_updated unless (document.dispatched? or document.users.count<2)
    document.email_all_users_about_dispatched if document.dispatched?
  end

end
