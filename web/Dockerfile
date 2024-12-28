FROM oven/bun AS base
LABEL authors="moses"

WORKDIR /app

COPY . .

RUN bun install

EXPOSE 3000

CMD bun run dev