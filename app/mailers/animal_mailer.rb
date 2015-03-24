class AnimalMailer < ApplicationMailer

  def new_animal_created_email(animal, to_address)
    @animal = animal
    mail(to: to_address, subject: "A new animal was created")
  end
end
