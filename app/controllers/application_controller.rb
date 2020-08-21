class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_counter

  private

  def set_counter
    @chef_count = Chef.count
  end
end
