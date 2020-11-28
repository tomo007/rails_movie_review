task :get_100_now_playing_movies => :environment do
	
	puts "Get movies ....."
	movies = Tmdb::Movie.now_playing
	size = movies.size
	puts (size)
	movies.each_with_index do |m, i|
		progress = (((i+1)/size)*100).round(2)
		printf("\rProgress: #{progress}%%")
		if !m.blank?
			mov=Movie.create!(title: m.title,decription: m.overview,rating: m.vote_average,image_file_name: "http://image.tmdb.org/t/p/w185" + m.poster_path,director: m.status,user_id: 1 ) 
		end
	end
	puts("done...")
end
end