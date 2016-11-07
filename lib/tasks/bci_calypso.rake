namespace :bci_calypso do
  desc "Exports table information from database"
  task datos_web: :environment do
    Users.order(:id).all.each do |user|
      puts "Users.create(#{user.serializable_hash.delete_if {|key, value| ['created_at','update_at','id'].include? (key)}.to_s.gsub(/[{}]/,'')})"
  end
end

end
