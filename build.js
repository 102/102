const fs = require("fs").promises;

const template = ({ number }) => `# Hey there 👋

I don’t really know what to add here, so here is the random number that will be updated once an hour: **${number}**
`;

const generate = async () => {
  const number = Math.round(Math.random() * 100);
  await fs.writeFile("./README.md", template({ number }));
};

generate()
  .then(() => console.log("Success"))
  .catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
