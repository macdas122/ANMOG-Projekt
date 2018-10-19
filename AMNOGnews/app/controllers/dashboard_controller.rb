class DashboardController < ApplicationController
    def index
      @mains = Main.order(end_procedure: :desc)
      @orphan = {"Orphan" => Main.where("orphan_drug = 'true'").count ,"NonOprhan" => Main.where("orphan_drug ='false'").count}
      @storphan = 0
      @sforphan = 0


      @temp = Subgroup.where("benefit ='major'")
      @temp.each do |temp|
         @check = Main.where("number= 'temp.number'")

             @storphan = @storphan +1


             @sforphan = @sforphan +1
      end

    end
end
