# FROM texlive/texlive:latest
# FROM aruneko/texlive:latest
FROM ompugao/texlive:latest
COPY entrypoint.sh /entrypoint.sh
COPY .latexmkrc /.latexmkrc
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT [ "/entrypoint.sh" ]
