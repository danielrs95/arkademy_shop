module Admin
  class HomeController < BaseController

    def index
      @products = Product.all # Heres the previously missing line
      @users_count = User.all.size
      @products_count = Product.all.size
      render :index, locals: { users_count: @users_count, products_count: @products_count }
    end
  end
end
