class FeedbacksController < ApplicationController
    def create
      @feedback = Feedback.new(feedback_params)
  
      if @feedback.save
        redirect_to transactions_path, notice: 'Feedback submitted successfully.'
      else
        render :new
      end
    end
  
    private
  
    def feedback_params
        params.require(:feedback).permit(:student_id, :course_id, :comment)
    end      
  end
  