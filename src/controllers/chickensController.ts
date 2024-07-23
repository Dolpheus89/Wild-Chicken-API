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

export const getChicken = async (req: Request, res: Response) => {
  const id = parseInt(req.params.id);
  console.log(id);

  try {
    const chicken = await ChickenModel.getChickenById(id);
    console.log(chicken);

    if (chicken) {
      res.status(200).json(chicken);
    } else {
      res.status(404).send("Chicken not found");
    }
  } catch (err) {
    res.status(500).json({ message: `Failed to load chickens ${err}` });
  }
};
