require_relative '../current_age_for_birth_year.rb'

describe "current_age_for_birth_year method" do
  it "returns the age of a person based on the year of birth" do
  	current_year = Time.now.year
  	birth_year = 1984
  	answer = current_year - birth_year
    age_of_person = current_age_for_birth_year(1984)

    expect(age_of_person).to eq(answer)
  end

  it "should return the current year for a person born in year 0" do
    age = current_age_for_birth_year(0)
   
    expect(age).to eq(2003)
  end
end
