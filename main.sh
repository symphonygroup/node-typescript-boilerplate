# script arg - project dir
dir=$1

# script absolute path
script_dir=$(dirname -- "$( readlink -f -- "$0" )")

# create project dir
mkdir $1

# go to project dir
cd $dir

# init npm
npm init -y

# install boilerplate
npm i -D \
  typescript \
  @faker-js/faker \
  ts-node \
  nodemon \
  vitest \
  @vitest/coverage-c8 \
  prettier \
  @types/node \
  eslint \
  eslint-config-google \
  eslint-config-prettier \
  eslint-plugin-prettier \
  @typescript-eslint/eslint-plugin \
  @typescript-eslint/parser

# create src folder
mkdir src
touch src/main.ts

# create tests folder
mkdir tests

# copy configs
cp -a "$script_dir/assets/." $(pwd)

# add scripts
node -e "\
  f=require('fs');\
  p=require('./package.json');
  s=require('$script_dir/assets/scripts.json')
  p.main='dist/main.js';\
  p.scripts = s;\
  f.writeFileSync('package.json', JSON.stringify(p, null, 2))"