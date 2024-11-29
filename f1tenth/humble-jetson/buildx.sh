#/bin/bash
# Docker Buildx 활성화 및 빌드 실행
# docker buildx create --use --name mybuilder --driver docker-container
# docker buildx use mybuilder
# docker buildx inspect --bootstrap

# docker buildx build --platform linux/arm64 -t jsryu118/f1tenth:humble-orin-nx-jetpack6.1 . --no-cache

# docker buildx build --platform linux/arm64 -t jsryu118/f1tenth:humble-orin-nx-jetpack6.1 --load . 

docker buildx build --platform linux/arm64 -t jsryu118/f1tenth:humble-orin-nx-jetpack6.1 --push . 