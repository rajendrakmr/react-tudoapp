FROM node:20

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm","run","dev","3000"]


# #stage 1
# FROM node:20 as builder

# WORKDIR /app

# COPY . .

# RUN npm install

# #stage 2
# FROM node:20-slim as production

# WORKDIR /app


# COPY --from=builer /app ./

# RUN npm install

# EXPOSE 3000

# CMD [ "npm","run","dev","3000"]