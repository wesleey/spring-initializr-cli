#!/bin/bash

SETTINGS_PATH="settings.sh"
INSTALL_PATH="/usr/local/bin/spring"
SHARE_PATH="/usr/local/share/spring"


if [ -f "$SETTINGS_PATH" ]; then
  source "$SETTINGS_PATH"
elif [ -f "$SHARE_PATH/$SETTINGS_PATH" ]; then
  source "$SHARE_PATH/$SETTINGS_PATH"
else
  echo "Error: $SETTINGS_PATH not found" >&2
  exit 1
fi


if [ -f VERSION ]; then
  local_version=$(cat VERSION)
elif [ -f "$SHARE_PATH/$SETTINGS_PATH" ]; then
  local_version=$(cat "$SHARE_PATH/VERSION")
else
  echo "${Warn} Local VERSION file not found."
  local_version="0.0.0"
fi

remote_version=$(curl -s "https://raw.githubusercontent.com/wesleey/spring-initializr-cli/main/VERSION")

if [ -z "$remote_version" ]; then
  echo "${Warn} Error getting remote version."
  remote_version="0.0.0"
fi


echo ""
echo "  .   ____          _            __ _ _"
echo " /\\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \ "
echo "( ( )\___ | '_ | '_| | '_ \/ _\` | \ \ \ \ "
echo " \\\/  ___)| |_)| | | | | || (_| |  ) ) ) )"
echo "  '  |____| .__|_| |_|_| |_\__, | / / / /"
echo " =========|_|==============|___/=/_/_/_/"
echo ""
echo -en " ${Green}:: Spring Initializr ::${Color_Off}          "

if [ "$local_version" != "$remote_version" ]; then
  echo -en "${Red}"
else
  echo -en "${Zinc}"
fi

echo -e "(v$local_version)${Color_Off}"
echo ""


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Output${BWhite} >------------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Enter project output:${Color_Off} "
read -r project_output

if [ -z "$project_output" ]; then
  echo -e "${Error} project output is required."
  exit 1
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Dependencies${BWhite} >------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Do you want to provide custom dependencies? (y/N): ${Color_Off}"
read -r answer
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
  echo -en "${Info} ${BWhite}Enter your dependencies (default: ${BYellow}web,data-jpa,devtools,h2,lombok${BWhite}):${Color_Off} "
  read -r dependencies

  if [ -z "$dependencies" ]; then
    dependencies="web,data-jpa,devtools,h2,lombok"
  fi
else
  dependencies="web,data-jpa,devtools,h2,lombok"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Build${BWhite} >-------------------------------------${Color_Off}"

echo -e "${BWhite}1) ${BGreen}Maven${Color_Off}"
echo -e "${BWhite}2) ${BGreen}Gradle${Color_Off}"
echo -en "${Info} ${BWhite}Enter (default: ${BYellow}1${BWhite}):${Color_Off} "
read -r build_tool

if [ "$build_tool" == "2" ]; then
  build_tool="gradle-project"
  build_file_extension="build.gradle"
else
  build_tool="maven-project"
  build_file_extension="pom.xml"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Language${BWhite} >----------------------------------${Color_Off}"

echo -e "${BWhite}1) ${BGreen}Java${Color_Off}"
echo -e "${BWhite}2) ${BGreen}Kotlin${Color_Off}"
echo -en "${Info} ${BWhite}Enter (default: ${BYellow}1${BWhite}):${Color_Off} "
read -r language

if [ "$language" == "2" ]; then
  language="kotlin"
  language_extension="kt"
else
  language="java"
  language_extension="java"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Version${BWhite} >-----------------------------------${Color_Off}"

echo -e "${BWhite}1) ${BGreen}Java 23${Color_Off}"
echo -e "${BWhite}2) ${BGreen}Java 21${Color_Off}"
echo -e "${BWhite}3) ${BGreen}Java 17${Color_Off}"
echo -en "${Info} ${BWhite}Enter (default: ${BYellow}2${BWhite}):${Color_Off} "
read -r java_version

if [ "$java_version" == "1" ]; then
  java_version="23"
elif [ "$java_version" == "3" ]; then
  java_version="17"
else
  java_version="21"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Group ID${BWhite} >----------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Enter groupId (default: ${BYellow}com.example${BWhite}):${Color_Off} "
read -r group_id

if [ -z "$group_id" ]; then
  group_id="com.example"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Artifact ID${BWhite} >-------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Enter artifactId (default: ${BYellow}app${BWhite}):${Color_Off} "
read -r artifact_id

if [ -z "$artifact_id" ]; then
  artifact_id="app"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Name${BWhite} >--------------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Enter name (default: ${BYellow}$artifact_id${BWhite}):${Color_Off} "
read -r name

if [ -z "$name" ]; then
  name=$artifact_id
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Description${BWhite} >-------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Enter description (default: ${BYellow}Demo project for Spring Boot${BWhite}):${Color_Off} "
read -r description

if [ -z "$description" ]; then
  description="Demo project for Spring Boot"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Package name${BWhite} >------------------------------${Color_Off}"

echo -en "${Info} ${BWhite}Enter packageName (default: ${BYellow}$group_id.$artifact_id${BWhite}):${Color_Off} "
read -r package_name

if [ -z "$package_name" ]; then
  package_name="$group_id.$artifact_id"
fi


echo -e "${Info} ${BWhite}--------------------------< ${Cyan}Packaging${BWhite} >---------------------------------${Color_Off}"

echo -e "${BWhite}1) ${BGreen}jar${Color_Off}"
echo -e "${BWhite}2) ${BGreen}war${Color_Off}"
echo -en "${Info} ${BWhite}Enter (default: ${BYellow}1${BWhite}):${Color_Off} "
read -r packaging

if [ "$packaging_choice" == "2" ]; then
  packaging="war"
else
  packaging="jar"
fi


curl https://start.spring.io/starter.zip \
  -d dependencies="$dependencies" \
  -d type="$build_tool" \
  -d language="$language" \
  -d javaVersion="$java_version" \
  -d groupId="$group_id" \
  -d artifactId="$artifact_id" \
  -d name="$name" \
  -d description="$description" \
  -d packageName="$package_name" \
  -o spring.zip

mkdir -p "$project_output"
unzip spring.zip -d "$project_output"
rm -f spring.zip


echo -e "${Info} ${BWhite}------------------------------------------------------------------------${Color_Off}"
echo -e "${Info} ${BGreen}GENERATED SPRING BOOT PROJECT${Color_Off}"
echo -e "${Info} ${BWhite}------------------------------------------------------------------------${Color_Off}"

echo -e "${Info} Dependencies: $dependencies"
echo -e "${Info} Build tool used: $build_tool ($build_file_extension)"
echo -e "${Info} Language used: $language ($language_extension)"
echo -e "${Info} ------------------------------------------------------------------------"
