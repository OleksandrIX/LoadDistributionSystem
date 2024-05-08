DC = docker compose
BACKEND_SERVICE = load-distribution-api
FRONTEND_SERVICE = load-distribution-client


# Backend commands
backend-config:
	${DC} config ${BACKEND_SERVICE}

backend-build-and-up:
	${DC} up --build ${BACKEND_SERVICE}

backend-up:
	${DC} up ${BACKEND_SERVICE}

backend-down:
	${DC} down ${BACKEND_SERVICE}

backend-logs:
	${DC} logs ${BACKEND_SERVICE} -f


# Frontend commands
frontend-config:
	${DC} config ${FRONTEND_SERVICE}

frontend-build-and-up:
	${DC} up --build ${FRONTEND_SERVICE}

frontend-up:
	${DC} up ${FRONTEND_SERVICE}

frontend-down:
	${DC} down ${FRONTEND_SERVICE}

frontend-logs:
	${DC} logs ${FRONTEND_SERVICE} -f


# Compose commands
compose-config:
	${DC} config

compose-build-and-up:
	${DC} up --build

compose-up:
	${DC} up

compose-down:
	${DC} down

compose-logs:
	${DC} logs -f
