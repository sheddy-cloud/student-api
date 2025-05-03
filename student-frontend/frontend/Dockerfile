# Step 1: Build stage
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Step 2: Production stage
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html

# Add custom header to show which node responded
RUN echo '\nadd_header X-Node-ID $hostname always;' >> /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
