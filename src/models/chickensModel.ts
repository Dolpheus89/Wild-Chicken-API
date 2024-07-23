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
    const query = "SELECT * FROM chickens";

    db.query(query, (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve(results as Chicken[]);
      }
    });
  });
};

export const getChickenById = async (id: number): Promise<Chicken | null> => {
  return new Promise((resolve, reject) => {
    const query = "SELECT * FROM chickens WHERE id = ?";

    db.query(query, [id], (err, results) => {
      if (err) {
        reject(err);
      } else {
        resolve((results as Chicken[])[0] || null);
      }
    });
  });
};
