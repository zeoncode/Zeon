FROM zeoncoin/zeon-builder:0.1 as builder

COPY --chown=andrey ./ /home/andrey/Zeon

WORKDIR /home/andrey/Zeon

RUN qmake GUI=0; make

FROM zeoncoin/zeon-runner:0.1

COPY --from=builder /home/andrey/Zeon/src/Zeon-qt /root/Zeon-qt

ENTRYPOINT ["/root/Zeon-qt", "-daemon=0"]
