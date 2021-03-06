FATE_VOICE += fate-g722dec-1
fate-g722dec-1: CMD = framecrc -i $(SAMPLES)/g722/conf-adminmenu-162.g722

FATE_VOICE += fate-g722enc
fate-g722enc: tests/data/asynth-16000-1.sw
fate-g722enc: CMD = md5 -ar 16000 -ac 1 -f s16le -i $(TARGET_PATH)/tests/data/asynth-16000-1.sw -acodec g722 -ac 1 -f g722

FATE_VOICE += fate-gsm
fate-gsm: CMD = framecrc -i $(SAMPLES)/gsm/sample-gsm-8000.mov -t 10

FATE_VOICE += fate-gsm-ms
fate-gsm-ms: CMD = framecrc -i $(SAMPLES)/gsm/ciao.wav

FATE_VOICE += fate-qcelp
fate-qcelp: CMD = pcm -i $(SAMPLES)/qcp/0036580847.QCP
fate-qcelp: CMP = oneoff
fate-qcelp: REF = $(SAMPLES)/qcp/0036580847.pcm

FATE_VOICE += fate-truespeech
fate-truespeech: CMD = pcm -i $(SAMPLES)/truespeech/a6.wav
fate-truespeech: CMP = oneoff
fate-truespeech: REF = $(SAMPLES)/truespeech/a6.pcm

FATE_TESTS += $(FATE_VOICE)
fate-voice: $(FATE_VOICE)
