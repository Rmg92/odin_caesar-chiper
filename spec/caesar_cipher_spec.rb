# caesar_cipher_spec.rb
require './lib/caesar_cipher'

describe CaesarCipher do
  describe 'encrypt' do
    it 'returns the correct encrypted message' do
      caesar_cipher = CaesarCipher.new
      expect(caesar_cipher.encrypt('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end
end
