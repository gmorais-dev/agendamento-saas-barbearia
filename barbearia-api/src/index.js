import express from "express";
import { PrismaClient } from '@prisma/client';

const app = express();
const prisma = new PrismaClient();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("🚀 teste de reload novamanteee .");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`✅ Servidor rodando na porta ${PORT} no container.`);
  

  prisma.$connect()
    .then(() => console.log("Database connected successfully!"))
    .catch((e) => console.error("Database connection failed:", e));
});