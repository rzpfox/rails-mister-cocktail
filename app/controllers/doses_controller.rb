class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save

    redirect_to cocktails_path
  end

  def destroy

    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

   def dose_params
    params.require(:cocktail).permit(:name, :description, :ingredient_ids, :dose_ids)
   end
end
