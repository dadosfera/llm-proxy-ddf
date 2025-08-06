#!/bin/bash

echo "🧹 Limpando espaço do Docker..."

# Parar containers em execução
echo "Parando containers..."
docker compose down

# Remover containers parados
echo "Removendo containers parados..."
docker container prune -f

# Remover imagens não utilizadas
echo "Removendo imagens não utilizadas..."
docker image prune -a -f

# Remover volumes não utilizados
echo "Removendo volumes não utilizados..."
docker volume prune -f

# Remover redes não utilizadas
echo "Removendo redes não utilizadas..."
docker network prune -f

# Limpar cache de construção
echo "Limpando cache de construção..."
docker builder prune -f

# Mostrar espaço recuperado
echo "📊 Status do espaço Docker:"
docker system df

echo "✅ Limpeza concluída!" 