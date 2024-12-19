/*
  Warnings:

  - The primary key for the `userbankdetails` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `users` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropIndex
DROP INDEX "userbankdetails_username_key";

-- DropIndex
DROP INDEX "users_username_key";

-- AlterTable
ALTER TABLE "userbankdetails" DROP CONSTRAINT "userbankdetails_pkey",
ADD CONSTRAINT "userbankdetails_pkey" PRIMARY KEY ("username");

-- AlterTable
ALTER TABLE "users" DROP CONSTRAINT "users_pkey",
ADD CONSTRAINT "users_pkey" PRIMARY KEY ("username");

-- AddForeignKey
ALTER TABLE "userbankdetails" ADD CONSTRAINT "userbankdetails_username_fkey" FOREIGN KEY ("username") REFERENCES "users"("username") ON DELETE RESTRICT ON UPDATE CASCADE;
