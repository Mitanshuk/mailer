class TransactionsController < ApplicationController

  def index
    @transaction = Transaction.all
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to @transaction, notice: 'Transaction was successfully created.'
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:course_id, :student_id, :tutor_id, :status)
  end
end
