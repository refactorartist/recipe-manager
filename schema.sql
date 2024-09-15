CREATE TABLE
    user (
        id BIGSERIAL PRIMARY KEY,
        first_name CHAR NOT NULL,
        last_name CHAR NOT NULL,
        username CHAR NOT NULL,
        password CHAR NOT NULL
    )
CREATE TABLE
    user_image (
        user_id PRIMARY KEY,
        image_data BYTEA,
        FOREIGN KEY (user_id) REFERENCES user (id)
    )
CREATE TABLE
    location (
        user_id PRIMARY KEY,
        country CHAR,
        state CHAR,
        city CHAR,
        FOREIGN KEY (user_id) REFERENCES user (id)
    )
CREATE TABLE
    user_metadata (
        user_id PRIMARY KEY,
        start DATE NOT NULL,
        end DATE NOT NULL,
        time_spendt INT NOT NULL,
        friend INT NOT NULL,
        subs INT NOT NULL,
        comments INT NOT NULL,
        repices INT NOT NULL,
        bio INT NOT NULL,
        FOREIGN KEY (user_id) REFERENCES user (id)
    )
CREATE TABLE
    email (
        user_id PRIMARY KEY,
        email CHAR NOT NULL,
        email_password CHAR NOT NULL,
        FOREIGN KEY (user_id) REFERENCES user (id)
    )
CREATE TABLE
    group (
        id BIGSERIAL PRIMARY KEY,
        name CHAR NOT NULL,
        user INT NOT NULL
    )
CREATE TABLE
    group_user (
        group_id CHAR NOT NULL,
        user_id CHAR NOT NULL,
        FOREIGN KEY (group_id) REFERENCES group (id),
        FOREIGN KEY (user_id) REFERENCES user (id)
    )
CREATE TABLE
    friends (
        friend_id CHAR NOT NULL,
        user_id CHAR NOT NULL,
        FOREIGN KEY (friend_id) REFERENCES user (id),
        FOREIGN KEY (user_id) REFERENCES user (id)
    )

