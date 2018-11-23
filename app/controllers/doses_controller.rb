class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save

    redirect_to cocktails_path
  end

  def destroy

    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

   def dose_params
    params.require(:dose).permit(:name, :description, :ingredient_id, :cocktail_id, :dose_id)
   end
end
