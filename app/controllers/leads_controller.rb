class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, only: [:index, :show, :edit, :update, :destroy]

  # GET /leads
  def index
    @leads = Lead.all
  end

  # GET /leads/1
  def show
  end

  # GET /leads/new
  def new
    @lead = Lead.new
    @lead.phone_number = PhoneNumber.new
  end
  
  # GET /leads/1/edit
  def edit
  end
  
  # POST /leads
  def create
    @lead = Lead.new(lead_params)

    respond_to do |format|
      if @lead.save
        format.html do
          if current_user
            redirect_to leads_path, notice: 'Lead was successfully created.'
          else
            redirect_to root_path, notice: 'Thanks! Your information was successfully submitted.'
          end
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /leads/1
  def update
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /leads/1
  def destroy
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: 'Lead was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lead_params
      params.require(:lead).permit(:name, :email, :postal_code, phone_number_attributes: [:id, :number])
    end

    def check_admin
      redirect_to root_path unless current_user
    end
end
