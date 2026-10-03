get-key:
	printf "Y\n/lic\n" | docker run --rm -i --network=host -v "$$(pwd)":/lic gurobi/optimizer grbgetkey $(KEY)

up:
	docker compose up -d

down:
	docker compose down
