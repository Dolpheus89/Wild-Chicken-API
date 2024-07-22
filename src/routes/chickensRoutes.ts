import { Router } from "express"
import * as ChickensControllers from "../controllers/chickensController"

const router = Router()

router.get("/", ChickensControllers.getChickens)


export default router