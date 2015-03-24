class AnimalSweeper < ActionController::Caching::Sweeper
  observe Animal
  
  def after_save(animal)
    expire_cache(animal)
  end
  
  def after_destroy(animal)
    expire_cache(animal)
  end
  
  def expire_cache(animal)
    expire_fragment 'all_animals'
  end
end