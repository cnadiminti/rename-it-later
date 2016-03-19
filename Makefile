all:
	@echo "==> Building ..."
	bash build.sh
	@echo "==> Running ..."
	bash selfextract_app.bin
clean:
	@echo "==> Cleaning ..."
	rm -rf *.bin *.tar *.tar.gz
