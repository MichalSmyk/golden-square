require 'password_checker'

describe PasswordChecker do 
    context 'checks for a valid password' do 
        it 'if it is greater or equal to 8' do 
            password = PasswordChecker.new
            expect(password.check("password")).to eq true
        end 
        it 'prints error message' do 
            password = PasswordChecker.new
            expect { password.check('passwor')}.to raise_error "Invalid password, must be 8+ characters."
        end
    end 
end
            