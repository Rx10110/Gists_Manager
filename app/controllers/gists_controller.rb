require "open-uri"

class GistsController < ApplicationController
    before_action :set_gist, only: [:show, :edit, :update, :destroy]

    # GET /gists
    # GET /gists.json
    def index
        if !params[:category_id].nil?
            @gists = Gist.where(:id => params[:category_id])
        else
            @gists = Gist.all
        end
    end

    # GET /gists/1
    # GET /gists/1.json
    def show
    end

    def import
        10.times do |it|
            j = open("https://api.github.com/users/#{params[:username]}/gists?page=#{it+1}").read
            json = JSON.parse(j)
            break if json.empty?
            json.map do |g|
                gist = Gist.find_or_create_by("description" => g["description"], "url" => g["files"].first[1]["raw_url"])
                gist.save
            end
        end
        redirect_to({action: :index}, {:notice => "Import successfull"})
    end


    def import_form
    end

    # GET /gists/new
    def new
        @gist = Gist.new
    end

    # GET /gists/1/edit
    def edit
    end

    # POST /gists
    # POST /gists.json
    def create
        @gist = Gist.new(gist_params)

        respond_to do |format|
            if @gist.save
                format.html { redirect_to @gist, notice: 'Gist was successfully created.' }
                format.json { render :show, status: :created, location: @gist }
            else
                format.html { render :new }
                format.json { render json: @gist.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /gists/1
    # PATCH/PUT /gists/1.json
    def update
        respond_to do |format|
            if @gist.update(gist_params)
                format.html { redirect_to @gist, notice: 'Gist was successfully updated.' }
                format.json { render :show, status: :ok, location: @gist }
            else
                format.html { render :edit }
                format.json { render json: @gist.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /gists/1
    # DELETE /gists/1.json
    def destroy
        @gist.destroy
        respond_to do |format|
            format.html { redirect_to gists_url, notice: 'Gist was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_gist
        @gist = Gist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gist_params
        params.require(:gist).permit(:description, :user_id, :category_id, :username, :url)
    end
end
