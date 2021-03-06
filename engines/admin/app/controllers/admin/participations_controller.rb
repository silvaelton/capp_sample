require_dependency 'admin/application_controller'

module Admin
  class ParticipationsController < ApplicationController 
    before_action :set_project
    
    layout 'sub_application'

    def index
      @participations = ::SubscribeParticipation.where(participation_id: 1)
    end

    def show_candidates
      @participations = ::SubscribeParticipation.where(participation_id: 1)
    end
    
    private

    def set_project
      @project = ::Project.friendly.find(params[:project_id])
    end

  end
end