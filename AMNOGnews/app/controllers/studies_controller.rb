class StudiesController < ApplicationController
    def index
    end
    def create
      @Studies = Studies.new(study_params)
      @Studies.save
      redirect_to controller:"main" ,action: "create"
    end

    def study_params
        params.require(:Studies).permit(:id,:gba_number , :study_name, :study_arm_number, :pivotal ,:cross_over , :extension , :controlled, :registry, :nhs , :randomized , :randomization , :population , :study_length , :evidenz , :annotation)
    end

end
