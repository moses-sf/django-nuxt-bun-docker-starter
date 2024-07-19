FROM oven/bun as base
LABEL authors="moses"

WORKDIR /app

COPY . .

RUN bun install

EXPOSE 3000

CMD bun run dev