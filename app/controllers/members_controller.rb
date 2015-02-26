class MembersController < ActionController::Base
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Members.all
  end

  def show

  end

  def new
    @members = Member.new
  end

  def create
    @members = Member.new(member_params)

    respond_to do |format|
      if @members.save
      	format.html {redirect_to members_path, notice: 'Member created'}
      else
      	format.html {render :new}
      end
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @members.update(member_params)
      	format.html {redirect_to members_path, notice: 'Member created'}
      else
      	format.html {render :edit}
      end
    end
  end

  def destroy
  	@member.destroy
  	respond_to do |format|
  	  format.html {redirect_to members_url, notice: 'Member destroyed'}
  	end
  end

private

	def set_member
	  @member = Member.find(params[:id])
	end

	def member_params
	  params.require(:member).permit(:name, :room_id)
	end	 

end
