bundle exec jekyll build
cp -a _site/. ../nial-prod/
cd ../nial-prod/
git add .
git commit -m "$1"
git push