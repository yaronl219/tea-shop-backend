class TeaController < ApplicationController
    before_action :set_tea, only: [:show]


    def index
        @tea = Tea.all
        json_response(@tea, :created)
    end

    def show
        json_response(@tea)
    end

    def featured
        @tea = Tea.all
        @filtered_tea = @tea.select{|tea| tea.price > 50}
        json_response(@filtered_tea, :created)
    end

    
    private
    def set_tea
        @tea = Tea.find(params[:id])
    end
end
