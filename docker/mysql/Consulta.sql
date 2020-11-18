

CREATE TABLE users (
  user_id int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  firstname varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  lastname varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  user_name varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT users name, unique,
  user_password_hash varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT users password in salted and hashed format,
  user_email varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT users email, unique,
  date_added datetime NOT NULL
);

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO users (user_id, firstname, lastname, user_name, user_password_hash, user_email, date_added) VALUES
(1, Alver, Rubiano, admin, $2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO, admin@admin.com, 2016-12-19 15:06:00);

--
-- Indices de la tabla `users`
--
ALTER TABLE users
  ADD PRIMARY KEY (user_id),
  ADD UNIQUE KEY user_name (user_name),
  ADD UNIQUE KEY user_email (user_email);

