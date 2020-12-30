class ApplicationController < ActionController::Base    
     def after_sign_in_path_for(resource)
        if current_user.admin?
          book_ragisters_path
        else
          student_path(current_user.student_id)
        end
     end
end


#  if admin_user?  # typically this is helper 
#     student_path(current_user.id) # adjust to your app.. i.e. where you want to go
#  else
#    root_url
#  end