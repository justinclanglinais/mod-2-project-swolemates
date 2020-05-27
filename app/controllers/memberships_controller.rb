class MembershipsController < ApplicationsController
    def new
      @memberships = Membership.new
    end
    def create
      @membership = Membership.create
    end

    private
    def memberships_params
      params.require(:membership).permit(:member_id, :gym_id)
    end
end