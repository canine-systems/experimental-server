DOWNLOADS = .downloads
PUMPKIN = ${DOWNLOADS}/pumpkin

PUMPKIN_URL = https://github.com/Pumpkin-MC/Pumpkin/releases/download/nightly/pumpkin-X64-Linux

all:
	@echo "all		print this text"
	@echo "run		run the server"
	@echo "pumpkin		download pumpkin"
	@echo "clean		remove generated files"
	@echo "veryclean	like clean, but also remove downloaded files (e.g. pumpkin)"

run: pumpkin
	${PUMPKIN}

pumpkin ${PUMPKIN}:
	mkdir -p "${DOWNLOADS}"
	wget "${PUMPKIN_URL}" -O "${PUMPKIN}"
	chmod +x "${PUMPKIN}"

clean:
	@echo ???

veryclean: clean
	rm -rf "${DOWNLOADS}"
