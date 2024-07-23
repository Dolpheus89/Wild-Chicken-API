import { Router } from "express";
import * as ChickensControllers from "../controllers/chickensController";

const router = Router();

router.get("/", ChickensControllers.getChickens);
router.get("/:id",ChickensControllers.getChicken)

export default router;
