import mysql from "mysql2";
import fs from "node:fs";
import "dotenv/config";

const DB_HOST = process.env.DB_HOST as string;
const DB_PORT = process.env.DB_PORT ? parseInt(process.env.DB_PORT) : 3306;
const DB_USER = process.env.DB_USER as string;
const DB_PASSWORD = process.env.DB_PASSWORD as string;
const DB_NAME = process.env.DB_NAME as string;

export const db = mysql.createConnection({
  host: DB_HOST,
  port: DB_PORT,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
});

const connectToDatabase = () => {
  db.connect((err) => {
    if (err) {
      console.error("Erreur de connexion à la base de données:", err);
      setTimeout(connectToDatabase, 2000); // Retry connection after 2 seconds
      return;
    }
    console.log("Connexion à la base de données MySQL réussie.");
  });

  db.on("error", (err) => {
    if (err.code === "PROTOCOL_CONNECTION_LOST") {
      console.error("Connexion à la base de données perdue. Reconnexion...");
      connectToDatabase();
    } else {
      console.error("Erreur de la base de données:", err);
      throw err;
    }
  });
};

connectToDatabase();

export const initDB = async () => {
  try {
    const sqlContent = fs.readFileSync("./src/utils/queries.sql", {
      encoding: "utf-8",
    });

    const sqlCommands = sqlContent
      .split(";")
      .filter((command) => command.trim() !== "");

    for (const command of sqlCommands) {
      await new Promise<void>((resolve, reject) => {
        db.query(command, (err) => {
          if (err) {
            reject(err);
          } else {
            resolve();
          }
        });
      });
    }

    console.log("Requêtes SQL exécutées avec succès.");
  } catch (error) {
    console.error("Échec de l'exécution des requêtes SQL:", error);
  }
};

process.on("exit", () => {
  db.end((err) => {
    if (err) {
      console.error("Erreur lors de la fermeture de la connexion:", err);
    } else {
      console.log("Connexion fermée.");
    }
  });
});

// Handle SIGINT and SIGTERM for graceful shutdown
process.on("SIGINT", () => {
  db.end((err) => {
    if (err) {
      console.error("Erreur lors de la fermeture de la connexion:", err);
    } else {
      console.log("Connexion fermée.");
    }
    process.exit();
  });
});

process.on("SIGTERM", () => {
  db.end((err) => {
    if (err) {
      console.error("Erreur lors de la fermeture de la connexion:", err);
    } else {
      console.log("Connexion fermée.");
    }
    process.exit();
  });
});
