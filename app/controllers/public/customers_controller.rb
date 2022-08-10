class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @sake_posts = @customer.sake_posts.order("created_at DESC").limit(3)
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end

  def check
  end

  def out
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :introduction, :profile_image)
  end

end
