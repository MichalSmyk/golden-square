require 'present'

describe Present do

    it 'fails' do
      present = Present.new
      present.wrap(5)
      expect { present.wrap(4) }.to raise_error "A contents has already been wrapped."
    end 
    it 'gives error when unwrapping an unwraped value' do
      present = Present.new
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
    it 'wraps and unraps a value' do 
      present = Present.new
      present.wrap(10)
      expect(present.unwrap).to eq 10
    end

end