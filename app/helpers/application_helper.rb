module ApplicationHelper

  def devise_links
    if current_student #student_signed_in?
      link_to 'Log Out', destroy_student_session_path, method: :delete
    else
      link_to 'Log In', new_student_session_path
    end
  end

end
