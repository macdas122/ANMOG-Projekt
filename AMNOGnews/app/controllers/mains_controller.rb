class MainsController < ApplicationController
    def index
      @mains = Main.all.order(:gba_number)
    end

    def show
        if params[:keywords].present?
            @keywords = params[:keywords]
            main_search_term = MainSearchTerm.new(@keywords)
            @mains = Main.where(
                main_search_term.where_clause,
                main_search_term.where_args).
                order(main_search_term.order)

            @result = Main.where(
                main_search_term.where_clause,
                main_search_term.where_args).
                group(:field_of_application)

            @orphan = Main.where(
                main_search_term.where_clause,
                main_search_term.where_args).
                group(:orphan_drug)
        else
            @mains = Main.all
            @result = Main.all.group(:field_of_application)
            @orphan = Main.all.group(:orphan_drug)
        end
        @temp = Array.new
        @mains.each do |main|
            @temp << main.field_of_application
        end
    end
end
