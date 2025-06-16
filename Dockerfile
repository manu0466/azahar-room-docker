FROM opensauce04/azahar-build-environment:latest AS builder

# Download the source
RUN git clone --recurse-submodules https://github.com/azahar-emu/azahar.git /azahar
RUN mkdir /azahar/build
WORKDIR /azahar/build

# Compile the application
RUN cmake .. &&  make citra_room_standalone -j8

# Create the final image
FROM debian:trixie-slim

# Copy the binary
COPY --from=builder /azahar/build/bin/Release/azahar-room /usr/bin/azahar-room

ENTRYPOINT ["azahar-room"]

