module StudentsHelper

  def short_bio student
    bio = student.bio
    if params[:read_more].to_i == student.id
      bio
    else
      truncate bio, length: 30, omission: "..."
    end
  end

end
