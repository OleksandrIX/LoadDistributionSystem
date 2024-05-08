DC = docker compose
BACKEND_SERVICE = load-distribution-api
FRONTEND_SERVICE = load-distribution-client
DATABASE_FILE = database/docker-compose.yml
MINIO_STORAGE_FILE = minio-sorage/docker-compose.yml


# Backend commands
backend-config:
	${DC} config ${BACKEND_SERVICE}

backend-build-and-up:
	${DC} up --build ${BACKEND_SERVICE} -d

backend-up:
	${DC} up ${BACKEND_SERVICE} -d

backend-down:
	${DC} down ${BACKEND_SERVICE} -d

backend-logs:
	${DC} logs ${BACKEND_SERVICE} -f


# Frontend commands
frontend-config:
	${DC} config ${FRONTEND_SERVICE}

frontend-build-and-up:
	${DC} up --build ${FRONTEND_SERVICE} -d

frontend-up:
	${DC} up ${FRONTEND_SERVICE} -d

frontend-down:
	${DC} down ${FRONTEND_SERVICE}

frontend-logs:
	${DC} logs ${FRONTEND_SERVICE} -f


# Database commands
database-config:
	${DC} -f ${BACKEND_SERVICE} config

database-build-and-up:
	${DC} -f ${BACKEND_SERVICE} up --build -d

database-up:
	${DC} -f ${BACKEND_SERVICE} up -d

database-down:
	${DC} -f ${BACKEND_SERVICE} down

database-logs:
	${DC} -f ${BACKEND_SERVICE} logs -f


# MinIO commands
minio-storage-config:
	${DC} -f ${MINIO_STORAGE_FILE} config

minio-storage-build-and-up:
	${DC} -f ${MINIO_STORAGE_FILE} up --build -d
	${DC} -f ${MINIO_STORAGE_FILE} down create-minio-buckets

minio-storage-up:
	${DC} -f ${MINIO_STORAGE_FILE} up -d
	${DC} -f ${MINIO_STORAGE_FILE} down create-minio-buckets

minio-storage-down:
	${DC} -f ${MINIO_STORAGE_FILE} down

minio-storage-logs:
	${DC} -f ${BACKEND_SERVICE} logs -f
