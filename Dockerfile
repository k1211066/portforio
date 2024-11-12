# ベースイメージを指定 (Javaのランタイムを含む)
FROM openjdk:11-jdk-alpine

# 作業ディレクトリを設定
WORKDIR /app

# JARファイルをコピー
COPY target/*.jar app.jar

# ポートを公開 (アプリケーションが使用するポートに合わせて調整)
EXPOSE 8080

# コンテナ起動時に実行するコマンド
ENTRYPOINT ["java","-jar","/app.jar"]
