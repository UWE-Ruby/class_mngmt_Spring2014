class Api::StudentsController < ApiController

  def index
    students = Student.all

    respond_to do |format|
      format.json { render json: students.to_json }
      format.xml  { render xml: students.to_xml }
    end
  end
end