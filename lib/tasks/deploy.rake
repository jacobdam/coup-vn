task :deploy do
  exec 'git push heroku master'
  exec 'heroku rake db:migrate'
  exec 'heroku restart'
end
