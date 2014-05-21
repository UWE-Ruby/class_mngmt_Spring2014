module StudentsHelper

  def short_bio student
    bio = student.bio.to_s
    if @read_more.to_i == student.id
      read_less = link_to ' Read Less', students_path(read_more: 0)
      bio + read_less
    else
      read_more = link_to 'Read More', students_path(read_more: student.id)
      t = truncate bio, length: 30, omission: '... '
      t.gsub('... ', "... #{read_more}")
    end
  end

end
