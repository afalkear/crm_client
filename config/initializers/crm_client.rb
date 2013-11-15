module Crm
	HYDRA = Typhoeus::Hydra.new
	HOST = case Rails.env
      when "production"
       "crm.padm.am"
      when "development"
       "localhost:3000"
      when "staging"
       "padma-crm-staging.herokuapp.com"
      when "test"
       "localhost:3000"
    end
end