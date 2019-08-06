require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }

  it { should validate_presence_of :name }
end

describe Survey do
  it("titleizes the name of a survey") do
    survey = Survey.create({name: "hello there"})
    expect(survey.name()).to(eq("Hello There"))
  end
end
