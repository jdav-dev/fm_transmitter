app: rds.o waveforms.o pi_fm_rds.o rds_strings.o fm_mpx.o control_pipe.o mailbox.o
	$(CC) $(LDFLAGS) -o pi_fm_rds rds.o rds_strings.o waveforms.o mailbox.o pi_fm_rds.o fm_mpx.o control_pipe.o -lsndfile -lm

rds_wav: rds.o rds_strings.o waveforms.o rds_wav.o fm_mpx.o
	$(CC) $(LDFLAGS) -o rds_wav rds_wav.o rds.o rds_strings.o waveforms.o fm_mpx.o -lsndfile -lm

rds_strings.o: rds_strings.c rds_strings.h
	$(CC) $(CFLAGS) rds_strings.c

rds_strings_test: rds_strings.o rds_strings_test.c
	$(CC) -Wall -std=gnu99 -o rds_strings_test rds_strings.o rds_strings_test.c
	./rds_strings_test

rds.o: rds.c waveforms.h rds_strings.o
	$(CC) $(CFLAGS) rds.c

control_pipe.o: control_pipe.c control_pipe.h rds.h
	$(CC) $(CFLAGS) control_pipe.c

waveforms.o: waveforms.c waveforms.h
	$(CC) $(CFLAGS) waveforms.c

mailbox.o: mailbox.c mailbox.h
	$(CC) $(CFLAGS) mailbox.c

pi_fm_rds.o: pi_fm_rds.c control_pipe.h fm_mpx.h rds.h mailbox.h
	$(CC) $(CFLAGS) pi_fm_rds.c

rds_wav.o: rds_wav.c
	$(CC) $(CFLAGS) rds_wav.c

fm_mpx.o: fm_mpx.c fm_mpx.h
	$(CC) $(CFLAGS) fm_mpx.c

clean:
	rm -f *.o *_test
