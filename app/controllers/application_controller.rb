class ApplicationController < ActionController::API

    # creates and returns our token 
    def encode_token(payload)
        JWT.encode payload, 'iLoveButtsAndTrivia', 'HS256'
    end

    def user_payload(user)
        {user_id: user.id}
    end
    

end
