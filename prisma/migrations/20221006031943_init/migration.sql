/*
  Warnings:

  - Added the required column `name` to the `project` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_project" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "inspiration" TEXT NOT NULL,
    "objective" TEXT NOT NULL,
    "nameOfCreator" TEXT,
    "cpf" TEXT,
    "email" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_project" ("cpf", "createdAt", "description", "email", "id", "inspiration", "nameOfCreator", "objective") SELECT "cpf", "createdAt", "description", "email", "id", "inspiration", "nameOfCreator", "objective" FROM "project";
DROP TABLE "project";
ALTER TABLE "new_project" RENAME TO "project";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
