json.array!(@api_v1_robots) do |api_v1_robot|
  json.extract! api_v1_robot, :id, :name, :profession, :image
  json.url api_v1_robot_url(api_v1_robot, format: :json)
end
