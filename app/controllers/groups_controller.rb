class GroupsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @group = Group.new
  end

  def create
    current_user.groups << Group.create(group_params)
    redirect_to groups_path
  end

  def index
    @groups = current_user.groups
  end

  def show
    @group = current_user.groups.find(params[:id])
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
