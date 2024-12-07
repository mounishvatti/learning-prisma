-- CreateTable
CREATE TABLE "Transaction" (
    "id" SERIAL NOT NULL,
    "from_upi_id" VARCHAR(255) NOT NULL,
    "to_upi_id" VARCHAR(255) NOT NULL,
    "amount" DECIMAL(10,2) NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Transaction" ADD CONSTRAINT "Transaction_from_upi_id_fkey" FOREIGN KEY ("from_upi_id") REFERENCES "userbankdetails"("upiid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Transaction" ADD CONSTRAINT "Transaction_to_upi_id_fkey" FOREIGN KEY ("to_upi_id") REFERENCES "userbankdetails"("upiid") ON DELETE RESTRICT ON UPDATE CASCADE;
