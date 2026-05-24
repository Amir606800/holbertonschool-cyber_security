#!/usr/bin/env ruby

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  # Encrypt message
  def encrypt(message)
    cipher(message, @shift)
  end

  # Decrypt message (reverse shift)
  def decrypt(message)
    cipher(message, -@shift)
  end

  # Internal method (used only inside class)
  def cipher(message, shift)
    message.chars.map do |char|
      if char.match?(/[a-z]/)
        (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
      elsif char.match?(/[A-Z]/)
        (((char.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
      else
        char
      end
    end.join
  end
  private :cipher
end
