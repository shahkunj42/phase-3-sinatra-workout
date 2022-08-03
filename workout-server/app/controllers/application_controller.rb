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
    end

    post "/Exercise" do
    createexc=Exercise.create(exercise:params[:exercise], weight: 0, completed_workout: false, musclegroup: m1 ,img:params[:img],description: params[:description], )
    createexc.to_json
    end


     get "/Musclegroup" do
      musclegroup=Musclegroup.all
      musclegroup.to_json
     end

     
  end