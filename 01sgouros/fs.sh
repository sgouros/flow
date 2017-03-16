PATH="/home/george/.rvm/gems/ruby-1.9.2-p320/bin:/home/george/.rvm/gems/ruby-1.9.2-p320@global/bin:/home/george/.rvm/rubies/ruby-1.9.2-p320/bin:/home/george/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
rvm_path="/home/george/.rvm"
MY_RUBY_HOME="/home/george/.rvm/rubies/ruby-1.9.2-p320"
rvm_prefix="/home/george"
rvm_env_string="ruby-1.9.2-p320"
rvm_version="1.14.1"
HOME="/home/george"
rvm_ruby_string="ruby-1.9.2-p320"
GEM_PATH="/home/george/.rvm/gems/ruby-1.9.2-p320:/home/george/.rvm/gems/ruby-1.9.2-p320@global"

[[ -s "/home/george/.rvm/scripts/rvm" ]] 
source "/home/george/.rvm/scripts/rvm"

echo " "
echo "--------- starting flow server ---------------"
echo "cd ~/Dropbox/my_code/RoR/htdocs/flow/"
cd ~/Dropbox/my_code/RoR/htdocs/flow/
echo " booting Mongrel at port 3001"
echo " "
rails server -p3001


