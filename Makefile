SITE_SRC_DIR=src
SITE_DEST_DIR=../dist

start: start-site

build: build-site

build-site:
	cd $(SITE_SRC_DIR) && mkdocs build -d $(SITE_DEST_DIR)

start-site:
	cd $(SITE_SRC_DIR) && mkdocs serve -a 0.0.0.0:8000

clean: clean-site

clean-site:
	cd $(SITE_SRC_DIR) && rm -rf $(SITE_DEST_DIR)