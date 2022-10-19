-- 회원 가입 모두 (U1 ~ U4)
INSERT INTO users (UNIQUE_ID,NAME,EMAIL,JOB)
VALUES ('U1', 'Paul', 'paul01@gmail.com', ' IT Billing');

INSERT INTO users(UNIQUE_ID,NAME,EMAIL,JOB)
VALUES('U2', 'Allen', 'texas@imfblog.org', 'Engineering');

INSERT INTO users(UNIQUE_ID,NAME,EMAIL,JOB)
VALUES('U3', 'Teddy', 'norway@iotm.com', 'IT Billing');

INSERT INTO users(UNIQUE_ID,NAME,EMAIL,JOB)
VALUES('U4', 'Paul', 'paul_p@naver.com', 'Developer');

-- USERS 확인
SELECT *
FROM users;

-- 권한 이름 (B1~B3)
INSERT INTO auth_names(AUTH_NAME,UNIQUE_ID)
VALUES ('GUEST', 'B1');

INSERT INTO auth_names(AUTH_NAME,UNIQUE_ID)
VALUES ('ADMIN', 'B2');

INSERT INTO auth_names(AUTH_NAME,UNIQUE_ID)
VALUES ('MANAGER', 'B3');

-- 권한 이름 확인
SELECT *
FROM auth_names;

-- 권한 연결
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B1');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B2');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B1');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B2');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B3');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U3', 'B1');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B2');
INSERT INTO auths(UNIQUE_ID,UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B1');

-- 권한 연결 확인
SELECT *
FROM auths;

-- 회원 탈퇴 U2, U4(조립의 역순)
-- 연결된 auths 제거
DELETE FROM auths
WHERE UNIQUE_ID IN ('U2','U4');

-- 지워졌나 확인
SELECT *
FROM auths;

-- USER U2, U4 삭제
DELETE FROM users
WHERE UNIQUE_ID IN ('U2','U4');

-- 지워졌나 확인
SELECT *
FROM users;
 





