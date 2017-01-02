class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
    @answers = @question.answers.order(updated_at: :asc)
    @chosen_answer = @answers.find { |answer| answer.chosen == true }
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @html_string = @markdown.render(@question.body)
  end

  def new
    @question = Question.new
  end

  def edit
    @queston = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to @question, notice: 'Question was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_url, notice: 'Question was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def question_params
    params.require(:question).permit(:title, :body, :username)
  end
end
