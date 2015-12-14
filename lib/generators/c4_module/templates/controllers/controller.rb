module C4
  class <%= name_.camelize -%>Controller < ApplicationController
    before_action :authenticate_user!
    before_action :set_<%= singular -%>, only: [:show, :edit, :update, :destroy]

    layout 'c4/admin'

    def index
      @<%= name_ -%> = <%= singular.capitalize -%>.all
    end

    def new
      @<%= singular -%> = <%= singular.capitalize -%>.new
    end

    def edit
    end

    def create
      @<%= singular -%> = <%= singular.capitalize -%>.new(<%= singular -%>_params)

      if @<%= singular -%>.save
        flash[:success] = 'Se han guardado los cambios.'
        redirect_to main_app.<%= name_ -%>_path
      else
        render :new
      end
    end

    def update
      if @<%= singular -%>.update(<%= singular -%>_params)
        flash[:success] = 'Se han guardado los cambios.'
        redirect_to main_app.<%= name_ -%>_path
      else
        render :edit
      end
    end

    def destroy
      flash[:warning] = "Se ha destruído: #{@<%= singular -%>.<%= @first %>}"
      @<%= singular -%>.destroy
      respond_to do |format|
        format.html { redirect_to main_app.<%= name_ -%>_url }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_<%= singular %>
        @<%= singular -%> = <%= singular.capitalize -%>.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def <%= singular -%>_params
        params.require(:<%= singular -%>).permit(<%= model_names.join(', ') -%>)
      end
      
  end
end
