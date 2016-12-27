class AnswersController < ApplicationController
  # before_action :set_answer, only: [:new]

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    if @answer.save
      redirect_to @question, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @question.answers.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_answer
    @answer = Answer.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def answer_params
    params.require(:answer).permit(:title, :body, :username)
  end
end
