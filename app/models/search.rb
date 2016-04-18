class Search

  def service
    NrelService.new
  end

  def find_by_zip(zip)
    token = ENV['NREL_KEY']
    service.find_by_zip(token, zip)
  end
end
