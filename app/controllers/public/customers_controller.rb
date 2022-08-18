class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @sake_posts = @customer.sake_posts.order("created_at DESC").limit(3)
    @count = @customer.sake_posts.count
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if  @customer.update(customer_params)
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  def check
  end

  def out
    @customer = current_customer
    @customer.name = "退会済み"
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :introduction, :profile_image)
  end

end
