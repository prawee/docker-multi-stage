FROM node as builder
COPY ./ ./
RUN yarn install
RUN yarn build

FROM nginx
COPY --from=builder ./build /usr/share/nginx/html