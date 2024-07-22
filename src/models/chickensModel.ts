import { db } from '../utils/db';

export interface Chicken {
    id:number,
    name: string,
    imgSrc:string,
    position:string,
    biography:string
}


export const getAllChickens = async ():Promise<Chicken[]> => {
    return new Promise((resolve, reject) => {
        let query = "SELECT * FROM chickens"

        db.all(query,(err: Error | null, rows) => {
            if (err) {
                reject(err)
            } else {
                resolve(rows as Chicken[])
            }
        })
    })
}