class EmployeeSweeper < ActionController::Caching::Sweeper
  observe Employee
  
  def after_save(employee)
    expire_cache(employee)
  end
  
  def after_destroy(employee)
    expire_cache(employee)
  end
  
  def expire_cache(employee)
    expire_fragment 'all_employees'
  end
end