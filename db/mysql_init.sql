-- auto-generated definition
create schema auth collate utf8mb4_general_ci;

-- auto-generated definition
create table refresh_tokens
(
    id              bigint auto_increment
        primary key,
    created_at      datetime(6)  null,
    deleted_at      datetime(6)  null,
    device_id       varchar(255) not null,
    expiration_date datetime(6)  not null,
    token           varchar(255) not null,
    updated_at      datetime(6)  null,
    user_id         bigint       not null
);

-- auto-generated definition
create table user_devices
(
    id                bigint auto_increment
        primary key,
    browser_name      varchar(255) null,
    browser_version   varchar(255) null,
    created_at        datetime(6)  null,
    deleted_at        datetime(6)  null,
    device_brand      varchar(255) null,
    device_class      varchar(255) null,
    device_id         varchar(255) not null,
    device_name       varchar(255) null,
    ip_address        varchar(255) null,
    last_login        datetime(6)  null,
    origin_user_agent varchar(255) null,
    os                varchar(255) null,
    os_version        varchar(255) null,
    updated_at        datetime(6)  null,
    user_id           bigint       not null
);

-- auto-generated definition
create table users
(
    id         bigint auto_increment
        primary key,
    created_at datetime(6)            null,
    deleted_at datetime(6)            null,
    email      varchar(255)           not null,
    password   varchar(255)           not null,
    role       enum ('ADMIN', 'USER') null,
    updated_at datetime(6)            null,
    constraint UK6dotkott2kjsp8vw4d0m25fb7
        unique (email)
);

-- auto-generated definition
create schema cms collate utf8mb4_general_ci;

-- auto-generated definition
create schema products collate utf8mb4_general_ci;