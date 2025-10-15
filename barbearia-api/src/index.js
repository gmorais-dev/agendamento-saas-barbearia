import express from "express";
import { PrismaClient } from "@prisma/client";

const app = express();
const prisma = new PrismaClient();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("🚀 API Barbearia funcionando!");
});

app.listen(process.env.PORT || 3000, () => {
  console.log(`✅ Servidor rodando na porta ${process.env.PORT || 3000}`);
});