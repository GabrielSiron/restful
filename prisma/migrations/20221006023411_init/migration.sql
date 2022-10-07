-- CreateTable
CREATE TABLE "project" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "description" TEXT NOT NULL,
    "inspiration" TEXT NOT NULL,
    "objective" TEXT NOT NULL,
    "nameOfCreator" TEXT,
    "cpf" TEXT,
    "email" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
