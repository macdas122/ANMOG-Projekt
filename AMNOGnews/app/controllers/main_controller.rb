class MainController < ApplicationController
    def index
      @posts = Subgroup.all
    end




    def create
      @Main = Main.new(main_params)
      respond_to do |format|
        if @Main.save
          flash[:notice] = 'Employee was successfully created.'
          format.html { redirect_to action: "create" }
          format.xml  { render :xml => @Main,
            :status => :created, :location => @Main }
        else
          @departments = Department.find(:all)
          format.html { render :action => "create" }
          format.xml  { render :xml => @Main.errors,
            :status => :unprocessable_entity }
          end
        end
    end


    def main_params
        params.require(:Main).permit(:id, :gba_number, :drug_name, :brand_name, :manufacturer, :orphan_drug, :new_field, :expired_time, :basic_evidence, :exceedance_money, :lors_of_odd, :start_procedure, :end_procedure, :status, :field_of_application, :indication, :subgroups,:benefit_percentige ,:benefit, :market_availability)
    end
end
