class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found(invalid)
      render json: {error: "#{invalid.model} not found"}
  end

end
