class TokensController < ApplicationController
  before_action :authenticate_user!
  before_action :set_token, only: %i[ show edit update destroy ]

  def index
    @tokens = current_user.tokens
  end

  def show

  end

  def new
    @token = Token.new
  end

  def edit

  end

  def create
    @token = Token.new(token_params)
    @token.user = current_user

    respond_to do |format|
      if @token.save
        format.html { redirect_to @token }
        format.json { render :show, status: :created, location: @token }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @token.update(token_params)
        format.html { redirect_to @token }
        format.json { render :show, status: :ok, location: @token }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @token.destroy
    respond_to do |format|
      format.html { redirect_to tokens_url }
      format.json { head :no_content }
    end
  end

  private
    def set_token
      @token = Token.find(params[:id])
    end

    def token_params
      params.require(:token).permit(:token_use, :social_name, :target_id)
    end
end
