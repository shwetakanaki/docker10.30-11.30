# FROM baseImage: Set the baseImage to use for subsequent instructions.
#                   FROM must be the first instruction in a Dockerfile
# COPY source dest: Copy files or folders from source to the dest path in the image's filesystem.
# ADD source dest: Similar to COPY, but also supports URL sources and automatically extracts compressed files.
# RUN command: Execute a command in the shell and create a new layer in the image.
# CMD command: it is also exicuteble command, this instruction will exicute when the container is creating 
# CMD [ "executable" ]: it will overrride with privious cmd instruction
# ENTRYPOINT [ "executable" ]: It is used to set the main command for the container. It cannot be overridden by CMD.
# EXPOSE port: Expose a port to the outside world. This is a documentation instruction and does not actually publish
# WORKDIR /the/workdir/path: Set the working directory for subsequent instructions.

FROM  openjdk 
WORKDIR /app
COPY . /app 
RUN java Main.java
CMD ["java", "Main.java"]