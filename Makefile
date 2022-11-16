tag:=1.65

build:
			docker build -t 'rustlang:$(tag)' .
			docker tag rustlang:$(tag) jyd119/rustlang:$(tag)
			docker tag rustlang:$(tag) jyd119/rustlang:latest

publish:
			docker tag rustlang:$(tag) jyd119/rustlang:$(tag)
			docker push jyd119/rustlang:$(tag)
			docker tag rustlang:$(tag) jyd119/rustlang:latest
			docker push jyd119/rustlang:latest
