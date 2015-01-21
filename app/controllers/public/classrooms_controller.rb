class Public::ClassroomsController < Public::BaseController
  protect_from_forgery with: :exception
  layout 'layouts/public'

  def index
    @classrooms = Classroom.all
    @courses = Course.all
    @students = Student.all
  end

  def create
    @classroom = Classroom.new(params_classroom)

    if @classroom.valid?
      @classroom.save
      flash[:success] = "Matrícula criada."
    else
      flash[:danger] = "Matrícula não foi criada."
    end

    redirect_to public_classrooms_index_path
  end

  private

  def params_classroom
    params.required(:classroom).permit(:student_id, :course_id)
  end

end