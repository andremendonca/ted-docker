# Ted docker container

[Docker](https://www.docker.io/) container for the source distribution of [Ted](https://nllgg.nl/Ted/), an easy rich text processor


A `/source` directory is created in the container, which can be mapped for use with relative file paths. Ted will always be run from the `/source` directory in the container.

    docker run -v `pwd`:/source andrelmb/ted --saveTo input-file.rtf output-file.html
