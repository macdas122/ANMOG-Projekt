class StudyArmsController < ApplicationController
    def index
    end
    def create
      @Study_arm = StudyArm.new(study_arms_params)
      @Study_arm.save
      redirect_to controller:"main" ,action: "create"
    end


    def study_arms_params
      params.require(:Study_arms).permit(:id, :controlled_intervention, :gba_number, :medication ,:dosing , :blinded , :itc ,:number_patient)
    end
end
