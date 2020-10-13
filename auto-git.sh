#!/bin/bash
echo -e "\n"
echo -e "\e[1m\e[32mAuto Git joined the game.\e[0m\n"

#git add part
echo -e "Wich files you want to add:\n"
read -e files_staged
git add $files_staged

git status

#auto clang-format
#clang-format -i $files_staged/*

#git commit part
git commit

#git tag part
echo -e "Give a \e[1m\e[95mtag name:\e[0m\n"
read tag_name

echo -e "Give a \e[1m\e[95mtag message:\e[0m\n"
read tag_msg

git tag -a "$tag_name" -m "$tag_msg"

#git push part
echo -e "Commit will be push...\n"
git push --follow-tags

#end
echo -e "\e[1m\e[93mAuto Git left the game.\e[0m\n"
