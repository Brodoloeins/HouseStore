-- CreateTable
CREATE TABLE "House" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "adress" TEXT NOT NULL,
    "house_description" TEXT NOT NULL,
    "author_Id" INTEGER NOT NULL,

    CONSTRAINT "House_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "avatar" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- AddForeignKey
ALTER TABLE "House" ADD CONSTRAINT "House_author_Id_fkey" FOREIGN KEY ("author_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
