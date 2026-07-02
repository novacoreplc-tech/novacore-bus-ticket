const bcrypt = require('bcrypt');

async function generate() {
    const password = 'admin123';
    const hash = await bcrypt.hash('admin123', 10);
    console.log(hash);
}

generate();