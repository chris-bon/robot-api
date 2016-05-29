json.array! @robots do |robot|
  json.extract! robot, :id, :name, :profession, :image
  json.url robot_url(robot, format: :json)
end
