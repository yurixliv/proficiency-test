class Public::CadastreController < Public::BaseController
  protect_from_forgery with: :exception

  def index
    @check = params[:check]
  end

  def create
    model, message, path,  params_model = extract
    @object = model.new(params_model)

    if @object.valid?
      @object.save
      flash[:success] = "#{message} criado."
    else
      flash[:danger] = "#{message} não foi criado."
    end

    redirect_to path
  end

  private

  def extract
    if params.include? :course
      return [Course, "Curso", "/?check=false", params.required(:course).permit(:name, :description)]
    elsif params.include? :student
      return [Student, "Estudante","/?check=true",  params.required(:student).permit(:name, :register_number)]
    end
  end
end