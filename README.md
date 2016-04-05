##### Bob The Builder
A wrapper around docker that makes it easy to build and run containers for development of your software

#### Usage
### Setting up a container
`bob create arm-cross containers/arm-gnueabihf-cross.dockerfile`
This will create a container with name `arm-cross` based on `containers/arm-gnueabihf-cross.dockerfile` included in the repository.

### Running commands in your container
`bob run arm-cross make -j8`
This will run `make -j8` in the current directory, mapped into your container.
