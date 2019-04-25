class GroupsController < ApplicationController
    before_action :group_find, only: [:show, :edit, :update]

    def show
    end

    def edit
    end

    def update
        @group.update(update_params)
    end

    private
    def group_find
        @group = Group.find(params[:id])
    end

    def update_params
        params.require(:group).permit(:key, :detail)
    end
end
