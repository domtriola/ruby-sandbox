class Fixnum
  def in_words
    words = number_words

    return "negative #{(self * -1).in_words}" if self < 0
    return "#{words[self]}" if self < 21

    divisor = words.keys.select { |num| num <= self }.max
    quotient = self / divisor
    remainder = self % divisor

    if self < 100
      return "#{words[divisor]}" if remainder == 0
      return "#{words[divisor]} #{remainder.in_words}"
    else
      return "#{quotient.in_words} #{words[divisor]}" if remainder == 0
      return "#{quotient.in_words} #{words[divisor]} #{remainder.in_words}"
    end
  end

  private

    def number_words
      words = {}

      ones =   %w{zero one two three four five six seven eight nine}
      tens =   %w{ten twenty thirty forty fifty
                  sixty seventy eighty ninety hundred}
      teens =  %w{eleven twelve thirteen fourteen fifteen
                  sixteen seventeen eighteen nineteen}
      powers = %w{thousand million billion trillion quadrillion
                  quintillion}

      def assign_object!(object, array, &prc)
        array.each_with_index { |word, index| object[prc.call(index)] = word }
      end

      assign_object!(words, ones) { |index| index }
      assign_object!(words, tens) { |index| (index + 1) * 10 }
      assign_object!(words, teens) { |index| index + 11 }
      assign_object!(words, powers) { |index|  10 ** ((index + 1) * 3) }

      words
    end
end

p 4_578_429_760_169_836_423.in_words
# =>
# "four quintillion five hundred seventy eight quadrillion four hundred twenty
# nine trillion seven hundred sixty billion one hundred sixty nine million eight
# hundred thirty six thousand four hundred twenty three"
