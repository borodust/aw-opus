;; Generated by :claw at 2021-10-31T22:18:33.062096Z
(uiop:define-package :%opus (:use))
(uiop:define-package :aw-opus-bindings~pristine (:use :cl))
(common-lisp:in-package :aw-opus-bindings~pristine)

(defparameter %opus::+alloc-fail+ -7)

(defparameter %opus::+application-audio+ 2049)

(defparameter %opus::+application-restricted-lowdelay+ 2051)

(defparameter %opus::+application-voip+ 2048)

(defparameter %opus::+auto+ -1000)

(defparameter %opus::+bad-arg+ -1)

(defparameter %opus::+bandwidth-fullband+ 1105)

(defparameter %opus::+bandwidth-mediumband+ 1102)

(defparameter %opus::+bandwidth-narrowband+ 1101)

(defparameter %opus::+bandwidth-superwideband+ 1104)

(defparameter %opus::+bandwidth-wideband+ 1103)

(defparameter %opus::+bitrate-max+ -1)

(defparameter %opus::+buffer-too-small+ -2)

(defparameter %opus::+defines-h+ nil)

(defparameter %opus::+export+ nil)

(defparameter %opus::+framesize-100-ms+ 5008)

(defparameter %opus::+framesize-10-ms+ 5003)

(defparameter %opus::+framesize-120-ms+ 5009)

(defparameter %opus::+framesize-20-ms+ 5004)

(defparameter %opus::+framesize-2-5-ms+ 5001)

(defparameter %opus::+framesize-40-ms+ 5005)

(defparameter %opus::+framesize-5-ms+ 5002)

(defparameter %opus::+framesize-60-ms+ 5006)

(defparameter %opus::+framesize-80-ms+ 5007)

(defparameter %opus::+framesize-arg+ 5000)

(defparameter %opus::+get-application-request+ 4001)

(defparameter %opus::+get-bandwidth-request+ 4009)

(defparameter %opus::+get-bitrate-request+ 4003)

(defparameter %opus::+get-complexity-request+ 4011)

(defparameter %opus::+get-dtx-request+ 4017)

(defparameter %opus::+get-expert-frame-duration-request+ 4041)

(defparameter %opus::+get-final-range-request+ 4031)

(defparameter %opus::+get-force-channels-request+ 4023)

(defparameter %opus::+get-gain-request+ 4045)

(defparameter %opus::+get-inband-fec-request+ 4013)

(defparameter %opus::+get-in-dtx-request+ 4049)

(defparameter %opus::+get-last-packet-duration-request+ 4039)

(defparameter %opus::+get-lookahead-request+ 4027)

(defparameter %opus::+get-lsb-depth-request+ 4037)

(defparameter %opus::+get-max-bandwidth-request+ 4005)

(defparameter %opus::+get-packet-loss-perc-request+ 4015)

(defparameter %opus::+get-phase-inversion-disabled-request+ 4047)

(defparameter %opus::+get-pitch-request+ 4033)

(defparameter %opus::+get-prediction-disabled-request+ 4043)

(defparameter %opus::+get-sample-rate-request+ 4029)

(defparameter %opus::+get-signal-request+ 4025)

(defparameter %opus::+get-vbr-constraint-request+ 4021)

(defparameter %opus::+get-vbr-request+ 4007)

(defparameter %opus::+h+ nil)

(defparameter %opus::+have-opus-projection-h+ nil)

(defparameter %opus::+inline+ nil)

(defparameter %opus::+internal-error+ -3)

(defparameter %opus::+invalid-packet+ -4)

(defparameter %opus::+invalid-state+ -6)

(defparameter %opus::+ok+ 0)

(defparameter %opus::+reset-state+ 4028)

(defparameter %opus::+restrict+ nil)

(defparameter %opus::+set-application-request+ 4000)

(defparameter %opus::+set-bandwidth-request+ 4008)

(defparameter %opus::+set-bitrate-request+ 4002)

(defparameter %opus::+set-complexity-request+ 4010)

(defparameter %opus::+set-dtx-request+ 4016)

(defparameter %opus::+set-expert-frame-duration-request+ 4040)

(defparameter %opus::+set-force-channels-request+ 4022)

(defparameter %opus::+set-gain-request+ 4034)

(defparameter %opus::+set-inband-fec-request+ 4012)

(defparameter %opus::+set-lsb-depth-request+ 4036)

(defparameter %opus::+set-max-bandwidth-request+ 4004)

(defparameter %opus::+set-packet-loss-perc-request+ 4014)

(defparameter %opus::+set-phase-inversion-disabled-request+ 4046)

(defparameter %opus::+set-prediction-disabled-request+ 4042)

(defparameter %opus::+set-signal-request+ 4024)

(defparameter %opus::+set-vbr-constraint-request+ 4020)

(defparameter %opus::+set-vbr-request+ 4006)

(defparameter %opus::+signal-music+ 3002)

(defparameter %opus::+signal-voice+ 3001)

(defparameter %opus::+types-h+ nil)

(defparameter %opus::+unimplemented+ -5)

(defparameter %opus::+warn-unused-result+ nil)

(defparameter %opus::+int+ nil)

(defparameter %opus::+int64+ nil)

(defparameter %opus::+int8+ nil)

(defparameter %opus::+uint+ nil)

(defparameter %opus::+uint64+ nil)

(defparameter %opus::+uint8+ nil)

(cffi:defcstruct (%opus::opus-decoder :size 0))

(cffi:defctype %opus::opus-decoder (:struct %opus::opus-decoder))

(cffi:defctype %opus::int32 :int)

(cffi:defctype %opus::int16 :short)

(declaim (inline %opus::decode))

(cffi:defcfun ("opus_decode" %opus::decode)
              :int
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-decoder))
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::pcm (claw-utils:claw-pointer %opus::int16))
              (%opus::frame-size :int)
              (%opus::decode-fec :int))

(declaim (inline %opus::decode-float))

(cffi:defcfun ("opus_decode_float" %opus::decode-float)
              :int
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-decoder))
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::pcm (claw-utils:claw-pointer :float))
              (%opus::frame-size :int)
              (%opus::decode-fec :int))

(declaim (inline %opus::decoder-create))

(cffi:defcfun ("opus_decoder_create" %opus::decoder-create)
              (claw-utils:claw-pointer %opus::opus-decoder)
              (%opus::fs %opus::int32)
              (%opus::channels :int)
              (%opus::error (claw-utils:claw-pointer :int)))

(declaim (inline %opus::decoder-ctl))

(cffi:defcfun ("opus_decoder_ctl" %opus::decoder-ctl)
              :int
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-decoder))
              (%opus::request :int)
              &rest)

(declaim (inline %opus::decoder-destroy))

(cffi:defcfun ("opus_decoder_destroy" %opus::decoder-destroy)
              :void
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-decoder)))

(declaim (inline %opus::decoder-get-nb-samples))

(cffi:defcfun ("opus_decoder_get_nb_samples"
               %opus::decoder-get-nb-samples)
              :int
              (%opus::dec
               (claw-utils:claw-pointer %opus::opus-decoder))
              (%opus::packet
               (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32))

(declaim (inline %opus::decoder-get-size))

(cffi:defcfun ("opus_decoder_get_size" %opus::decoder-get-size)
              :int
              (%opus::channels :int))

(declaim (inline %opus::decoder-init))

(cffi:defcfun ("opus_decoder_init" %opus::decoder-init)
              :int
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-decoder))
              (%opus::fs %opus::int32)
              (%opus::channels :int))

(cffi:defcstruct (%opus::opus-encoder :size 0))

(cffi:defctype %opus::opus-encoder (:struct %opus::opus-encoder))

(declaim (inline %opus::encode))

(cffi:defcfun ("opus_encode" %opus::encode)
              %opus::int32
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-encoder))
              (%opus::pcm (claw-utils:claw-pointer %opus::int16))
              (%opus::frame-size :int)
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::max-data-bytes %opus::int32))

(declaim (inline %opus::encode-float))

(cffi:defcfun ("opus_encode_float" %opus::encode-float)
              %opus::int32
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-encoder))
              (%opus::pcm (claw-utils:claw-pointer :float))
              (%opus::frame-size :int)
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::max-data-bytes %opus::int32))

(declaim (inline %opus::encoder-create))

(cffi:defcfun ("opus_encoder_create" %opus::encoder-create)
              (claw-utils:claw-pointer %opus::opus-encoder)
              (%opus::fs %opus::int32)
              (%opus::channels :int)
              (%opus::application :int)
              (%opus::error (claw-utils:claw-pointer :int)))

(declaim (inline %opus::encoder-ctl))

(cffi:defcfun ("opus_encoder_ctl" %opus::encoder-ctl)
              :int
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-encoder))
              (%opus::request :int)
              &rest)

(declaim (inline %opus::encoder-destroy))

(cffi:defcfun ("opus_encoder_destroy" %opus::encoder-destroy)
              :void
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-encoder)))

(declaim (inline %opus::encoder-get-size))

(cffi:defcfun ("opus_encoder_get_size" %opus::encoder-get-size)
              :int
              (%opus::channels :int))

(declaim (inline %opus::encoder-init))

(cffi:defcfun ("opus_encoder_init" %opus::encoder-init)
              :int
              (%opus::st
               (claw-utils:claw-pointer %opus::opus-encoder))
              (%opus::fs %opus::int32)
              (%opus::channels :int)
              (%opus::application :int))

(declaim (inline %opus::get-version-string))

(cffi:defcfun ("opus_get_version_string" %opus::get-version-string)
              claw-utils:claw-string)

(declaim (inline %opus::multistream-packet-pad))

(cffi:defcfun ("opus_multistream_packet_pad"
               %opus::multistream-packet-pad)
              :int
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::new-len %opus::int32)
              (%opus::nb-streams :int))

(declaim (inline %opus::multistream-packet-unpad))

(cffi:defcfun ("opus_multistream_packet_unpad"
               %opus::multistream-packet-unpad)
              %opus::int32
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::nb-streams :int))

(declaim (inline %opus::packet-get-bandwidth))

(cffi:defcfun ("opus_packet_get_bandwidth"
               %opus::packet-get-bandwidth)
              :int
              (%opus::data (claw-utils:claw-pointer :unsigned-char)))

(declaim (inline %opus::packet-get-nb-channels))

(cffi:defcfun ("opus_packet_get_nb_channels"
               %opus::packet-get-nb-channels)
              :int
              (%opus::data (claw-utils:claw-pointer :unsigned-char)))

(declaim (inline %opus::packet-get-nb-frames))

(cffi:defcfun ("opus_packet_get_nb_frames"
               %opus::packet-get-nb-frames)
              :int
              (%opus::packet
               (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32))

(declaim (inline %opus::packet-get-nb-samples))

(cffi:defcfun ("opus_packet_get_nb_samples"
               %opus::packet-get-nb-samples)
              :int
              (%opus::packet
               (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::fs %opus::int32))

(declaim (inline %opus::packet-get-samples-per-frame))

(cffi:defcfun ("opus_packet_get_samples_per_frame"
               %opus::packet-get-samples-per-frame)
              :int
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::fs %opus::int32))

(declaim (inline %opus::packet-pad))

(cffi:defcfun ("opus_packet_pad" %opus::packet-pad)
              :int
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::new-len %opus::int32))

(declaim (inline %opus::packet-parse))

(cffi:defcfun ("opus_packet_parse" %opus::packet-parse)
              :int
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32)
              (%opus::out-toc
               (claw-utils:claw-pointer :unsigned-char))
              (%opus::frames
               (claw-utils:claw-pointer
                (claw-utils:claw-pointer :unsigned-char)))
              (%opus::size (:array %opus::int16 48))
              (%opus::payload-offset (claw-utils:claw-pointer :int)))

(declaim (inline %opus::packet-unpad))

(cffi:defcfun ("opus_packet_unpad" %opus::packet-unpad)
              %opus::int32
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32))

(declaim (inline %opus::pcm-soft-clip))

(cffi:defcfun ("opus_pcm_soft_clip" %opus::pcm-soft-clip)
              :void
              (%opus::pcm (claw-utils:claw-pointer :float))
              (%opus::frame-size :int)
              (%opus::channels :int)
              (%opus::softclip-mem (claw-utils:claw-pointer :float)))

(cffi:defcstruct (%opus::opus-repacketizer :size 0))

(cffi:defctype %opus::opus-repacketizer
               (:struct %opus::opus-repacketizer))

(declaim (inline %opus::repacketizer-cat))

(cffi:defcfun ("opus_repacketizer_cat" %opus::repacketizer-cat)
              :int
              (%opus::rp
               (claw-utils:claw-pointer %opus::opus-repacketizer))
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::len %opus::int32))

(declaim (inline %opus::repacketizer-create))

(cffi:defcfun ("opus_repacketizer_create" %opus::repacketizer-create)
              (claw-utils:claw-pointer %opus::opus-repacketizer))

(declaim (inline %opus::repacketizer-destroy))

(cffi:defcfun ("opus_repacketizer_destroy"
               %opus::repacketizer-destroy)
              :void
              (%opus::rp
               (claw-utils:claw-pointer %opus::opus-repacketizer)))

(declaim (inline %opus::repacketizer-get-nb-frames))

(cffi:defcfun ("opus_repacketizer_get_nb_frames"
               %opus::repacketizer-get-nb-frames)
              :int
              (%opus::rp
               (claw-utils:claw-pointer %opus::opus-repacketizer)))

(declaim (inline %opus::repacketizer-get-size))

(cffi:defcfun ("opus_repacketizer_get_size"
               %opus::repacketizer-get-size)
              :int)

(declaim (inline %opus::repacketizer-init))

(cffi:defcfun ("opus_repacketizer_init" %opus::repacketizer-init)
              (claw-utils:claw-pointer %opus::opus-repacketizer)
              (%opus::rp
               (claw-utils:claw-pointer %opus::opus-repacketizer)))

(declaim (inline %opus::repacketizer-out))

(cffi:defcfun ("opus_repacketizer_out" %opus::repacketizer-out)
              %opus::int32
              (%opus::rp
               (claw-utils:claw-pointer %opus::opus-repacketizer))
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::maxlen %opus::int32))

(declaim (inline %opus::repacketizer-out-range))

(cffi:defcfun ("opus_repacketizer_out_range"
               %opus::repacketizer-out-range)
              %opus::int32
              (%opus::rp
               (claw-utils:claw-pointer %opus::opus-repacketizer))
              (%opus::begin :int)
              (%opus::end :int)
              (%opus::data (claw-utils:claw-pointer :unsigned-char))
              (%opus::maxlen %opus::int32))

(declaim (inline %opus::strerror))

(cffi:defcfun ("opus_strerror" %opus::strerror)
              claw-utils:claw-string
              (%opus::error :int))

(cffi:defctype %opus::int64 :long)

(cffi:defctype %opus::int8 :char)

(cffi:defctype %opus::uint16 :unsigned-short)

(cffi:defctype %opus::uint32 :unsigned-int)

(cffi:defctype %opus::uint64 :unsigned-long)

(cffi:defctype %opus::uint8 :unsigned-char)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%opus::+get-last-packet-duration-request+ :%opus)
  (export '%opus::+set-signal-request+ :%opus)
  (export '%opus::+int8+ :%opus)
  (export '%opus::decoder-destroy :%opus)
  (export '%opus::repacketizer-create :%opus)
  (export '%opus::+get-force-channels-request+ :%opus)
  (export '%opus::+set-application-request+ :%opus)
  (export '%opus::uint16 :%opus)
  (export '%opus::decoder-create :%opus)
  (export '%opus::+application-voip+ :%opus)
  (export '%opus::uint8 :%opus)
  (export '%opus::encoder-destroy :%opus)
  (export '%opus::encoder-init :%opus)
  (export '%opus::encoder-get-size :%opus)
  (export '%opus::+framesize-120-ms+ :%opus)
  (export '%opus::repacketizer-destroy :%opus)
  (export '%opus::repacketizer-out-range :%opus)
  (export '%opus::+bandwidth-narrowband+ :%opus)
  (export '%opus::+export+ :%opus)
  (export '%opus::+bandwidth-fullband+ :%opus)
  (export '%opus::packet-get-nb-channels :%opus)
  (export '%opus::packet-get-samples-per-frame :%opus)
  (export '%opus::+framesize-20-ms+ :%opus)
  (export '%opus::encoder-create :%opus)
  (export '%opus::+get-signal-request+ :%opus)
  (export '%opus::+get-final-range-request+ :%opus)
  (export '%opus::+set-prediction-disabled-request+ :%opus)
  (export '%opus::decode :%opus)
  (export '%opus::+set-complexity-request+ :%opus)
  (export '%opus::+set-gain-request+ :%opus)
  (export '%opus::packet-unpad :%opus)
  (export '%opus::opus-decoder :%opus)
  (export '%opus::+uint+ :%opus)
  (export '%opus::+get-phase-inversion-disabled-request+ :%opus)
  (export '%opus::decoder-get-size :%opus)
  (export '%opus::+types-h+ :%opus)
  (export '%opus::+set-bandwidth-request+ :%opus)
  (export '%opus::+get-inband-fec-request+ :%opus)
  (export '%opus::+signal-voice+ :%opus)
  (export '%opus::repacketizer-out :%opus)
  (export '%opus::int16 :%opus)
  (export '%opus::encode-float :%opus)
  (export '%opus::+set-lsb-depth-request+ :%opus)
  (export '%opus::+int+ :%opus)
  (export '%opus::+get-pitch-request+ :%opus)
  (export '%opus::+set-phase-inversion-disabled-request+ :%opus)
  (export '%opus::+set-dtx-request+ :%opus)
  (export '%opus::+auto+ :%opus)
  (export '%opus::+invalid-packet+ :%opus)
  (export '%opus::+framesize-100-ms+ :%opus)
  (export '%opus::+get-dtx-request+ :%opus)
  (export '%opus::+unimplemented+ :%opus)
  (export '%opus::+framesize-2-5-ms+ :%opus)
  (export '%opus::+get-complexity-request+ :%opus)
  (export '%opus::+framesize-arg+ :%opus)
  (export '%opus::pcm-soft-clip :%opus)
  (export '%opus::encode :%opus)
  (export '%opus::+bandwidth-superwideband+ :%opus)
  (export '%opus::+reset-state+ :%opus)
  (export '%opus::+signal-music+ :%opus)
  (export '%opus::+uint64+ :%opus)
  (export '%opus::+warn-unused-result+ :%opus)
  (export '%opus::multistream-packet-unpad :%opus)
  (export '%opus::+internal-error+ :%opus)
  (export '%opus::int8 :%opus)
  (export '%opus::+uint8+ :%opus)
  (export '%opus::+ok+ :%opus)
  (export '%opus::+set-expert-frame-duration-request+ :%opus)
  (export '%opus::+get-bandwidth-request+ :%opus)
  (export '%opus::+set-vbr-request+ :%opus)
  (export '%opus::decode-float :%opus)
  (export '%opus::encoder-ctl :%opus)
  (export '%opus::+framesize-5-ms+ :%opus)
  (export '%opus::repacketizer-get-size :%opus)
  (export '%opus::+bandwidth-mediumband+ :%opus)
  (export '%opus::+get-packet-loss-perc-request+ :%opus)
  (export '%opus::repacketizer-init :%opus)
  (export '%opus::+get-gain-request+ :%opus)
  (export '%opus::+get-bitrate-request+ :%opus)
  (export '%opus::uint64 :%opus)
  (export '%opus::+application-audio+ :%opus)
  (export '%opus::+inline+ :%opus)
  (export '%opus::+framesize-80-ms+ :%opus)
  (export '%opus::int64 :%opus)
  (export '%opus::+get-in-dtx-request+ :%opus)
  (export '%opus::+framesize-40-ms+ :%opus)
  (export '%opus::+h+ :%opus)
  (export '%opus::+have-opus-projection-h+ :%opus)
  (export '%opus::+bitrate-max+ :%opus)
  (export '%opus::+framesize-60-ms+ :%opus)
  (export '%opus::packet-parse :%opus)
  (export '%opus::packet-get-nb-frames :%opus)
  (export '%opus::repacketizer-get-nb-frames :%opus)
  (export '%opus::uint32 :%opus)
  (export '%opus::multistream-packet-pad :%opus)
  (export '%opus::strerror :%opus)
  (export '%opus::decoder-get-nb-samples :%opus)
  (export '%opus::packet-get-nb-samples :%opus)
  (export '%opus::opus-repacketizer :%opus)
  (export '%opus::+get-lookahead-request+ :%opus)
  (export '%opus::+set-inband-fec-request+ :%opus)
  (export '%opus::+get-max-bandwidth-request+ :%opus)
  (export '%opus::+bandwidth-wideband+ :%opus)
  (export '%opus::get-version-string :%opus)
  (export '%opus::+set-bitrate-request+ :%opus)
  (export '%opus::+alloc-fail+ :%opus)
  (export '%opus::+get-prediction-disabled-request+ :%opus)
  (export '%opus::+get-expert-frame-duration-request+ :%opus)
  (export '%opus::+invalid-state+ :%opus)
  (export '%opus::packet-get-bandwidth :%opus)
  (export '%opus::+get-vbr-constraint-request+ :%opus)
  (export '%opus::+int64+ :%opus)
  (export '%opus::+framesize-10-ms+ :%opus)
  (export '%opus::+set-max-bandwidth-request+ :%opus)
  (export '%opus::decoder-ctl :%opus)
  (export '%opus::repacketizer-cat :%opus)
  (export '%opus::+application-restricted-lowdelay+ :%opus)
  (export '%opus::+get-sample-rate-request+ :%opus)
  (export '%opus::+set-force-channels-request+ :%opus)
  (export '%opus::packet-pad :%opus)
  (export '%opus::+set-vbr-constraint-request+ :%opus)
  (export '%opus::+get-application-request+ :%opus)
  (export '%opus::+buffer-too-small+ :%opus)
  (export '%opus::int32 :%opus)
  (export '%opus::+restrict+ :%opus)
  (export '%opus::+bad-arg+ :%opus)
  (export '%opus::+get-vbr-request+ :%opus)
  (export '%opus::decoder-init :%opus)
  (export '%opus::+defines-h+ :%opus)
  (export '%opus::opus-encoder :%opus)
  (export '%opus::+get-lsb-depth-request+ :%opus)
  (export '%opus::+set-packet-loss-perc-request+ :%opus))

