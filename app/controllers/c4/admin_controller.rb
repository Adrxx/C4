module C4
  class AdminController < ApplicationController

    before_action :authenticate_user!
    before_action :get_prefs, only: [:contact]

    def index
    end

    def contact
      
      if request.patch?

        if @prefs.valid?
          save_extra_fields(@prefs)
        end

        if @prefs.update(prefs_params)
          flash[:success] = 'Se han guardado los cambios.'
          redirect_to main_app.contact_path
        else
          render :contact
        end
      end
    end


    private

      def save_extra_fields(prefs)
        extra_fields = params[:extra]
        if extra_fields
          final_fields = []

          extra_fields.each_pair do |i,field|
            if field[:_destroy] != '1'
              final_fields << { key: field[:key] , value: field[:value] }
            end
          end

          prefs.values = final_fields
        end
      end

      def get_prefs
        if Preference.first.nil?
          p = Preference.new
          p.save
        end
        @prefs = Preference.first
        if @prefs.values.nil?
          @prefs.values = []
        end
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def prefs_params
        params.require(:preference).permit(:facebook,:twitter,:telephone,:telephone2,:email)
      end

  end
end