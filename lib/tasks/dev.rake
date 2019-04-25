namespace :dev do 
  task :fake => :environment do
    Post.destroy_all

    500.times do |i|
      Post.create!(
          title: "post #{i.to_s}",
          content: FFaker::Lorem.paragraph 
        )
    end  

    puts "now you have #{Post.count} post data"
  end
end    