class ExamsController < ApplicationController

	def index
    	@exams = Exam.all
    end


	def new
	end

	def create
		@exam = Exam.new(exam_params)
 
  		@exam.save
  		redirect_to exams_url
	end

	def show
		@exam = Exam.find(params[:id])
	end

	private
	  def exam_params
	    params.require(:exam).permit(:name, :client)
	  end
end
