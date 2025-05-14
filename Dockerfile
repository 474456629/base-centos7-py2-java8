FROM centos:7

# 安装 Python 2.7.5、zip/unzip 和 Java 8
RUN yum update -y && \
    yum install -y \
    python \
    zip \
    unzip \
    java-1.8.0-openjdk-devel && \
    yum clean all

# 设置 Java 环境变量
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

# 验证版本信息
RUN java -version && python --version && zip -v && unzip -v
