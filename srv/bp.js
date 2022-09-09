const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
  const api = await cds.connect.to("OP_API_BUSINESS_PARTNER_SRV");

  this.on("READ", "BusinessPartner", async (req) => {
    return api.run(req.query);
  });
});
