class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def hotruby
    render json: RubyVM::InstructionSequence.compile(params[:src].to_s).to_a
  end
  
  def index
  end
end
