require 'byebug'

class ArtworksController < ApplicationController
    def index
        # debugger
        user_id = params[:user_id]
        # debugger
        @artworks = Artwork.left_outer_joins(:shares).where("(:user_id = artworks.artist_id) or (:user_id = artwork_shares.viewer_id)", user_id: user_id).distinct
        render json: @artworks
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else 
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def update 
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity 
        end
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        render json: @artwork
    end


    private

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end