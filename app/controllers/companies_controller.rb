class CompaniesController < ApplicationController

    def new
        @company = Company.new
    end

    def create
        @company = Company.create(company_params)
        if @company.save
            flash[:success] = "Company created"
            redirect_to company_path(@company)
        else
            flash[:error] = "Failed to create company"
            # redirect_back(fallback_location: root_path)
            render 'new'
        end
    end

    def show
        @company = Company.find(params[:id])
    end

    private

    def company_params
        params.require(:company).permit(:company_name, :industry, :country, :company_reg, :contact_person, :contact_num)
    end

end
