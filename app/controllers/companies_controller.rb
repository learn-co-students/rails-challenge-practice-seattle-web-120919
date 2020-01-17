class CompaniesController < ApplicationController
    before_action :find_company, only: [:show, :edit]
    
    def index
        @companies = Company.all
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.new(company_params)
        if @company.save
            redirect_to @company
        else 
            render :new 
        end
    end

    def update
        @company = Company.find(params[:id])
        @company.update(company_params)
        if @company.save
            redirect_to @company
        else
            render :edit
        end
    end

    private
    def find_company
        @company = Company.find(params[:id])
    end

    def company_params
        params.require(:company).permit(:name)
    end
end