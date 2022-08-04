require "pry"
class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    # Add your routes here
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end
    get "/GymBros" do
     gymbro=Gymbro.all
      gymbro.to_json(include: {musclegroups: {include: :exercise} })
    end
    get "/GymBros/:id" do
      gymbro=Gymbro.find(params[:id])
       gymbro.to_json(include: {musclegroups: {include: :exercise} })
     end
    get "/Exercise" do
      exercise=Exercise.all
      exercise.to_json
    end
    delete "/Exercise/:id" do
      deleteexc=Exercise.find(params[:id])
      deleteexc.destroy
      deleteexc.to_json
    end
    patch '/Exercise/:id' do
      not_a_bum=Exercise.find(params[:id])
      not_a_bum.update(completed_workout: params[:completed_workout])
      not_a_bum.to_json
    end
    post "/Exercise" do
    createexc=Exercise.create(exercise:params[:exercise], weight: params[:weight], completed_workout:  params[:completed_workout],img:params[:img],description: params[:description], musclegroup_id:params[:musclegroup_id] )
    createexc.to_json
    end
     get "/Musclegroup" do
      musclegroup=Musclegroup.all
      musclegroup.to_json
     end
  end






