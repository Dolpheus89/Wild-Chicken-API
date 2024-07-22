import express from "express";
import cors from "cors";
import path from "path";
import { logger } from "./middlewares/logger";
import { initDB } from "./utils/db";
import "dotenv/config";
import chickensRoute from "./routes/chickensRoutes";

const app = express();

initDB();
app.use(cors());
app.use(logger);
app.use(express.json());

app.use("/images", express.static(path.join(__dirname, "../public/images")));

app.get("/", (req, res) => {
  res.send("Server is running");
});

app.use("/chickens", chickensRoute);

export default app;
