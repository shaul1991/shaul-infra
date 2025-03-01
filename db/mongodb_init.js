use cms

db.createUser({
    user: "cms",
    pwd: `password`,
    roles: [{
        role: "readWrite",
        db: "cms"
    }]
})

use files

db.createUser({
    user: "files",
    pwd: `password`,
    roles: [{
        role: "readWrite",
        db: "files"
    }]
})

use products

db.createUser({
    user: "products",
    pwd: `password`,
    roles: [{
        role: "readWrite",
        db: "products"
    }]
})