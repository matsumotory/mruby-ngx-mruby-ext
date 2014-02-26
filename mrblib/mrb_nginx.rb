class Nginx
  class Headers_in
    def user_agent
      self["User-Agent"]
    end
  end
end
