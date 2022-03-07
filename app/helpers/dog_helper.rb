module DogHelper
  def dog_size(dog)
    case dog.size.to_s
    when "small"
      "S"
    when "medium"
      "M"
    when "big"
      "L"
    when "large"
      "L"
    else
      "M"
    end
  end
end
