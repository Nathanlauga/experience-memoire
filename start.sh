# docker build -t exp-memoire .
docker run -p 8888:8888 --mount type=bind,source="$(pwd)",target=/nb exp_memoire