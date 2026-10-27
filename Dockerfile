# 1. Start from a tiny, ready-made web server image (nginx on Alpine Linux)
FROM nginx:alpine

# 2. Default port. Render uses 10000 and sets PORT for us; this is a fallback.
ENV PORT=10000

# 3. Copy our nginx config template. The nginx image swaps ${PORT}
#    for the real value when the container starts.
COPY default.conf.template /etc/nginx/templates/default.conf.template

# 4. Copy our web page into the folder nginx serves files from
COPY index.html /usr/share/nginx/html/index.html

# 5. Make sure nginx can read our files (prevents 403 Forbidden)
RUN chmod 644 /usr/share/nginx/html/index.html \
 && chmod 644 /etc/nginx/templates/default.conf.template

# 6. Document which port the container listens on
EXPOSE 10000

# nginx:alpine already knows how to start itself, so no CMD is needed.
