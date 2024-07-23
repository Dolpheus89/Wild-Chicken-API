import { db } from "../utils/db";

export interface Chicken {
  id: number;
  name: string;
  imgSrc: string;
  position: string;
  biography: string;
}

export const getAllChickens = async (): Promise<Chicken[]> => {
  return new Promise((resolve, reject) => {
    let query = "SELECT * FROM chickens";

    db.all(query, (err: Error | null, rows) => {
      if (err) {
        reject(err);
      } else {
        resolve(rows as Chicken[]);
      }
    });
  });
};


export const getChickenById = async (id:number): Promise<Chicken> => {
  return new Promise((resolve, reject) => {
    let query = "SELECT * FROM chickens WHERE id = ?";

    db.get(query, [id] ,(err: Error | null, row: Chicken) => {
      if (err) {
        reject(err);
      } else {
        resolve(row as Chicken || null);
      }
    });
  });
};