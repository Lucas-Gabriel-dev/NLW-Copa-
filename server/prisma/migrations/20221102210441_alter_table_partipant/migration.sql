/*
  Warnings:

  - Made the column `userId` on table `Participant` required. This step will fail if there are existing NULL values in that column.
  - Made the column `poolId` on table `Participant` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Participant" DROP CONSTRAINT "Participant_poolId_fkey";

-- DropForeignKey
ALTER TABLE "Participant" DROP CONSTRAINT "Participant_userId_fkey";

-- AlterTable
ALTER TABLE "Participant" ALTER COLUMN "userId" SET NOT NULL,
ALTER COLUMN "poolId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Participant" ADD CONSTRAINT "Participant_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Participant" ADD CONSTRAINT "Participant_poolId_fkey" FOREIGN KEY ("poolId") REFERENCES "Pool"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
