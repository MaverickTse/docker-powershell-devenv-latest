FROM microsoft/powershell:latest
MAINTAINER Maverick Tse "mavericktse@gmail.com"
RUN ["apt", "update"]
RUN ["apt", "upgrade", "-y"]
RUN ["apt", "install", "-y", "build-essential", "pkg-config","subversion", "curl", "wget", "texinfo", "bison", "flex", "doxygen", "cvs", "yasm", "nasm", "automake", "libtool", "autoconf", "m4", "cmake", "ninja-build","git", "zlib1g-dev", "mercurial", "unzip", "pax", "p7zip-full", "bash"]
RUN ["apt", "autoremove", "-y"]
LABEL REFRESHDATE="20170203-00"
COPY build_app.ps1 /script/
COPY build_compiler.ps1 /script/
