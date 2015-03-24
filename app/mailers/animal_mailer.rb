class AnimalMailer < ApplicationMailer

  def new_animal_created_email(id, to_address)
    @animal = Animal.find(id)
    mail(to: to_address, subject: "A new animal was created")
  end
end
