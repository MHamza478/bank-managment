class AccountsController < ApplicationController
  skip_before_action :verify_authenticity_token
  

  def index
    @account = Account.last
  end

  def details
    @account = Account.last
  end

  def open_account
    @account = Account.last
  end

  def create_account
    @account = Account.last
    if @account.present?
      @account.update(name:params[:name], userID:params[:userid], password:params[:password])
      redirect_to root_path
    else
      Account.create(name:params[:name], userID:params[:userid], password:params[:password])
      redirect_to root_path
    end
  end
  
  def deposit
    @account = Account.last
  end

  def deposit_amount
    @todo = Account.find_by(userID:params[:userid])
    if @todo.present?
      amount = @todo.amount.to_i + params[:amount].to_i
      @todo.update(amount: amount)
      redirect_to '/'
    else
      redirect_to '/deposit-amount'
    end
  end

  def withdraw
  end

  def withdraw_amount
    @todo = Account.find_by(userID:params[:userid])
    if @todo.present?
      amount = @todo.amount.to_i - params[:withdraw].to_i
      @todo.update(amount: amount)
      redirect_to '/'
    else
      redirect_to '/deposit-amount'
    end
  end
end
