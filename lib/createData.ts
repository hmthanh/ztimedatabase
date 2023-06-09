const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function createData() {
  try {
    const newData = await prisma.HTTPStatusCode.create({
      data: [
        {
          server_id: 3,
          app_id: 4,
          servername: "VNPT",
          appname: "Baomoi",
          Total200: 9000000,
          Total301: 9000000,
          Total302: 9000000,
          Total304: 9000000,
          Total400: 9000000,
          Total403: 9000000,
          Total404: 9000000,
          Total500: 9000000,
          Total502: 9000000,
          TotalClose: 90000000,
          TotalUnknown: 90000000,
        },
      ],
    });
    console.log("Data created:", newData);
  } catch (error) {
    console.error("Error creating data:", error);
  } finally {
    await prisma.$disconnect();
  }
}

export default createData;
