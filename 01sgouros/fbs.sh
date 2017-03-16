DATE="$(date +"%Y.%b.%d_%H.%M")"
echo "backup hot flow to hot dropbox"
echo -n "   copying directory ~/Dropbox/my_code/RoR/htdocs/flow/ to ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/$DATE/"
echo -n " ..."
cp -R ~/Dropbox/my_code/RoR/htdocs/flow/ ~/Dropbox/my_code/RoR/htdocs/flow_old_versions/$DATE/
echo "done."
echo " "
echo "Flow server backup complete!"

