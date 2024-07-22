import { Request, Response } from "express";
import * as ChickenModel from "../models/chickensModel";

export const getChickens = async (req: Request, res: Response) => {
  try {
    const chickens = await ChickenModel.getAllChickens();
    res.status(200).json(chickens);
  } catch (err) {
    res.status(500).json({ message: `Failed to load chickens ${err}` });
  }
};
