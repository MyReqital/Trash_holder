@echo off
start "zapret: http,https,quic,discord" /min "%~dp0winws.exe" ^
--wf-tcp=80,443 --wf-udp=443,50000-50090 ^
--filter-tcp=80 --hostlist="%~dp0netrogat.txt" --new ^
--filter-tcp=443 --hostlist="%~dp0netrogat.txt" --new ^
--filter-udp=443 --hostlist="%~dp0russia-youtubeQ.txt" --dpi-desync=fake --dpi-desync-repeats=2 --dpi-desync-cutoff=n2 --dpi-desync-fake-quic="%~dp0quic_pl_by_ori.bin" --new ^
--filter-tcp=443 --hostlist="%~dp0russia-youtubeGV.txt" --dpi-desync=split --dpi-desync-split-pos=1 --dpi-desync-fooling=badseq --dpi-desync-repeats=10  --dpi-desync-autottl --new ^
--filter-tcp=443 --hostlist="%~dp0russia-youtube.txt" --dpi-desync=fake,split2 --dpi-desync-split-seqovl=2 --dpi-desync-split-pos=2 --dpi-desync-fake-tls="%~dp0tls_clienthello_www_google_com.bin" --dpi-desync-autottl --new ^
--filter-tcp=80 --hostlist="%~dp0russia-blacklist.txt" --dpi-desync=fake,split2 --dpi-desync-fooling=md5sig --dpi-desync-autottl --new ^
--filter-tcp=443 --hostlist="%~dp0russia-blacklist.txt" --hostlist="%~dp0myhostlist.txt" --dpi-desync=fake,split2 --dpi-desync-split-seqovl=1 --dpi-desync-split-tls=sniext --dpi-desync-fake-tls="%~dp0tls_clienthello_www_google_com.bin" --dpi-desync-autottl --new ^
--filter-udp=443 --hostlist="%~dp0russia-discord.txt" --dpi-desync=fake --dpi-desync-udplen-increment=10 --dpi-desync-repeats=7 --dpi-desync-udplen-pattern=0xDEADBEEF --dpi-desync-fake-quic="%~dp0quic_pl_by_ori.bin" --dpi-desync-cutoff=n2 --new ^
--filter-udp=50000-50090 --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d2 --dpi-desync-fake-quic="%~dp0quic_pl_by_ori.bin" --new ^
--filter-tcp=443 --hostlist="%~dp0russia-discord.txt" --dpi-desync=split --dpi-desync-split-pos=1 --dpi-desync-fooling=badseq --dpi-desync-repeats=10 --dpi-desync-autottl --new ^
--filter-tcp=443 --hostlist-auto="%~dp0autohostlist.txt" --hostlist-exclude="%~dp0netrogat.txt" --dpi-desync=split --dpi-desync-split-pos=1 --dpi-desync-fooling=badseq --dpi-desync-repeats=10 --dpi-desync-autottl
