class SecretsController < ApplicationController

    before_action :validate_login

    def show
        
    end

    private

    def validate_login
        redirect_to '/login' unless session.include? :name
    end

end