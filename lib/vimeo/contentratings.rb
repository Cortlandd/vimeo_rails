module Vimeo
   class Contentratings < Vimeo::Base

     ##################### ContentRatings ####################

     # Get all valid content ratings. GET #

     def self.all
       get('/contentratings')
     end
   end
end