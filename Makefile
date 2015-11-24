run:
		open http://localhost:1313/ && rm -rf public && hugo server --buildDrafts -w


gen:
		ruby doc/generate_files.rb

deploy:
		sh/deploy

