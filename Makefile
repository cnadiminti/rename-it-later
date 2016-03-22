run: build
	@echo "==> Running ..."
	sh selfextract_app.bin
build: clean
	@echo "==> Building ..."
	sh build.sh
clean:
	@echo "==> Cleaning ..."
	rm -rf *.bin *.tar *.tar.gz

.PHONY: build run clean
