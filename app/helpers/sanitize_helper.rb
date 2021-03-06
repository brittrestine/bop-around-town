module SanitizeHelper

  def self.sanitize_input(input)
    if is_match(input[:user_input])
      page_counter = input[:user_input].slice!(/\d+ weeks from now/).slice!(/\d{1,2}/).to_i
      user_genre = input[:user_input].downcase
    else
      page_counter = input[:page].to_i
      user_genre = input[:user_input].downcase
    end
    user_genre = user_genre.chop if user_genre[-1] == " "
    return user_genre, page_counter
  end

  def self.is_match(string)
    !!(string =~ /\d+ weeks from now/)
  end

end

