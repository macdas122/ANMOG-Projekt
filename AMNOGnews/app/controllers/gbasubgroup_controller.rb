class GbasubgroupController < ApplicationController
    def index
    end
    def create
      @Duo = Gbasubgroup.new(duo_params)
      @Duo.save
      redirect_to controller:"main" ,action: "create"
    end
    def duo_params
        params.require(:Gbasubgroups).permit(:id, :manufacturer, :gba_number, :name, :act, :evidence, :itc, :study_one, :study_two, :study_thre ,:study_four,:study_five,:study_six, :population_min, :population_max , :cost_zvt , :cost_drug , :benefit)
    end
end
