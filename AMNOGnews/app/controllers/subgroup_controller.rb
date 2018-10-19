class SubgroupController < ApplicationController
    def index
    end
    def create
      @Subgroup = Subgroup.new(subgroup_params)
      @Subgroup.save
      redirect_to controller:"main" ,action: "create"
    end

    def subgroup_params
      params.require(:Subgroups).permit(:id, :manufacturer , :gba_number,:sub_name , :act , :evidence, :itc, :studies  , :population_min , :population_max ,:cost_zvt , :cost_drug, :lightihood , :benefit)
    end

end
