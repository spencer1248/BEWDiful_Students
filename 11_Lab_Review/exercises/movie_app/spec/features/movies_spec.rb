require 'spec_helper'

describe "Movies" do

	subject { page }
	
	describe "index page" do
		before do
			visit root_path
		end
	  		it {should have_selector('h1', text: "Welcome to RentFlix") }
	end

		describe "Create new movie with Signed in user" do
			let(:user) { FactoryGirl.create(:user)}
	  		before do
	  			sign_in(user)
	  		end

	  		describe "Add movie page" do
	  		    self.use_transactional_fixtures = false
		  			before do
		  				visit root_path
		  				click_link "Add new movie"
		  			end
		  		
			  		it "displays new movie page", :js => true do
			  			expect(page).to have_content("Add new movie")
			  		end

		  		describe "create new movie" do
			  		before do
			  			fill_in "Title",			with: "Flight"
			  			fill_in "Description",		with: "Hero pilot lands failing plane"
			  			fill_in "Release Date",		with: 2001
			  			fill_in "Rating",			with: 3	
			  		end

			  		it "Should create a new movie" do
			  			expect { click_button "Add New Movie"}.to change(Movie, :count).by(1)
			  		end

		  		end
			end

			describe "Edit Movie" do
				let(:movie) { FactoryGirl.build(:movie, user_id: user.id)}
				
					before do
						movie.save
						visit movie_path(movie)
						click_link "edit movie"
					end
					it {should have_content("Edit Movie")}
			end
	  	end

	  	
	  		
end
