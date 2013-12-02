class OwnersController < ApplicationController
  def new
    @owner = Owner.new
    @owner.build_user
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      redirect_to @owner
    else
      render "new"
    end
  end

  private

  def owner_params
    params.require(:owner).permit(user_attributes: [:email, :password,
                                                    :password_confirmation])
  end
end
