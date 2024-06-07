FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    luarocks \
    gcc \
    make \
    libssl-dev

# Install LuaRocks
RUN wget https://luarocks.org/releases/luarocks-3.7.0.tar.gz \
    && tar -xzvf luarocks-3.7.0.tar.gz \
    && cd luarocks-3.7.0 \
    && ./configure \
    && make build \
    && make install

# Add OpenResty repository and install
RUN wget -qO - https://openresty.org/package/pubkey.gpg | apt-key add - \
    && echo "deb http://openresty.org/package/debian bullseye openresty" > /etc/apt/sources.list.d/openresty.list \
    && apt-get update \
    && apt-get install -y openresty

# Install lua-resty-jwt
RUN luarocks install lua-resty-jwt

# Copy nginx configuration
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Expose port 80
EXPOSE 80

CMD ["openresty", "-g", "daemon off;"]
