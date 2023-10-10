to run go this directory and do
```sh
docker build -t "okaml" .
cd ..
docker run -it --rm -it -v `pwd`:/data okaml     
```