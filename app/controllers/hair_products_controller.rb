class HairProductsController < ApplicationController
  before_action :set_hair_product, only: [:show, :edit, :update, :destroy]

  # GET /hair_products
  # GET /hair_products.json
  def index
    @hair_products = HairProduct.all
  end

  # GET /hair_products/1
  # GET /hair_products/1.json
  def show
  end

  # GET /hair_products/new
  def new
    @hair_product = HairProduct.new
  end

  # GET /hair_products/1/edit
  def edit
  end

  # POST /hair_products
  # POST /hair_products.json
  def create
    @hair_product = HairProduct.new(hair_product_params)

    respond_to do |format|
      if @hair_product.save
        format.html { redirect_to @hair_product, notice: 'Hair product was successfully created.' }
        format.json { render :show, status: :created, location: @hair_product }
      else
        format.html { render :new }
        format.json { render json: @hair_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hair_products/1
  # PATCH/PUT /hair_products/1.json
  def update
    respond_to do |format|
      if @hair_product.update(hair_product_params)
        format.html { redirect_to @hair_product, notice: 'Hair product was successfully updated.' }
        format.json { render :show, status: :ok, location: @hair_product }
      else
        format.html { render :edit }
        format.json { render json: @hair_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hair_products/1
  # DELETE /hair_products/1.json
  def destroy
    @hair_product.destroy
    respond_to do |format|
      format.html { redirect_to hair_products_url, notice: 'Hair product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hair_product
      @hair_product = HairProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hair_product_params
      params.require(:hair_product).permit(:name, :type, :description, :size, :price, :ingredients)
    end
end
