TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += \
    ../../ncnn/src    \
    ../../ncnn/src/layer    \
    ../../ncnn/src/layer/arm    \
    ../../ncnn/src/layer/x86    \
    ../../ncnn/autotest     \
    ../../ncnn/examples/squeezencnn/jni

HEADERS += \
    ../../ncnn/autotest/test_convlution.h \
    ../../ncnn/autotest/test_innerproduct.h \
    ../../ncnn/examples/squeezencnn/jni/squeezenet_v1.1.id.h \
    ../../ncnn/src/layer/arm/absval_arm.h \
    ../../ncnn/src/layer/arm/batchnorm_arm.h \
    ../../ncnn/src/layer/arm/bias_arm.h \
    ../../ncnn/src/layer/arm/convolution_1x1.h \
    ../../ncnn/src/layer/arm/convolution_2x2.h \
    ../../ncnn/src/layer/arm/convolution_3x3.h \
    ../../ncnn/src/layer/arm/convolution_4x4.h \
    ../../ncnn/src/layer/arm/convolution_5x5.h \
    ../../ncnn/src/layer/arm/convolution_7x7.h \
    ../../ncnn/src/layer/arm/convolution_arm.h \
    ../../ncnn/src/layer/arm/convolutiondepthwise_arm.h \
    ../../ncnn/src/layer/arm/deconvolution_3x3.h \
    ../../ncnn/src/layer/arm/deconvolution_4x4.h \
    ../../ncnn/src/layer/arm/deconvolution_arm.h \
    ../../ncnn/src/layer/arm/deconvolutiondepthwise_arm.h \
    ../../ncnn/src/layer/arm/eltwise_arm.h \
    ../../ncnn/src/layer/arm/innerproduct_arm.h \
    ../../ncnn/src/layer/arm/lrn_arm.h \
    ../../ncnn/src/layer/arm/neon_mathfun.h \
    ../../ncnn/src/layer/arm/pooling_2x2.h \
    ../../ncnn/src/layer/arm/pooling_3x3.h \
    ../../ncnn/src/layer/arm/pooling_arm.h \
    ../../ncnn/src/layer/arm/prelu_arm.h \
    ../../ncnn/src/layer/arm/relu_arm.h \
    ../../ncnn/src/layer/arm/scale_arm.h \
    ../../ncnn/src/layer/arm/sigmoid_arm.h \
    ../../ncnn/src/layer/arm/slice_arm.h \
    ../../ncnn/src/layer/arm/softmax_arm.h \
    ../../ncnn/src/layer/x86/avx_mathfun.h \
    ../../ncnn/src/layer/x86/convolution_3x3.h \
    ../../ncnn/src/layer/x86/convolution_5x5.h \
    ../../ncnn/src/layer/x86/convolution_x86.h \
    ../../ncnn/src/layer/x86/sse_mathfun.h \
    ../../ncnn/src/layer/absval.h \
    ../../ncnn/src/layer/argmax.h \
    ../../ncnn/src/layer/batchnorm.h \
    ../../ncnn/src/layer/bias.h \
    ../../ncnn/src/layer/binaryop.h \
    ../../ncnn/src/layer/bnll.h \
    ../../ncnn/src/layer/concat.h \
    ../../ncnn/src/layer/convolution.h \
    ../../ncnn/src/layer/convolutiondepthwise.h \
    ../../ncnn/src/layer/crop.h \
    ../../ncnn/src/layer/deconvolution.h \
    ../../ncnn/src/layer/deconvolutiondepthwise.h \
    ../../ncnn/src/layer/detectionoutput.h \
    ../../ncnn/src/layer/dropout.h \
    ../../ncnn/src/layer/eltwise.h \
    ../../ncnn/src/layer/elu.h \
    ../../ncnn/src/layer/embed.h \
    ../../ncnn/src/layer/exp.h \
    ../../ncnn/src/layer/expanddims.h \
    ../../ncnn/src/layer/flatten.h \
    ../../ncnn/src/layer/innerproduct.h \
    ../../ncnn/src/layer/input.h \
    ../../ncnn/src/layer/interp.h \
    ../../ncnn/src/layer/log.h \
    ../../ncnn/src/layer/lrn.h \
    ../../ncnn/src/layer/lstm.h \
    ../../ncnn/src/layer/memorydata.h \
    ../../ncnn/src/layer/mvn.h \
    ../../ncnn/src/layer/normalize.h \
    ../../ncnn/src/layer/padding.h \
    ../../ncnn/src/layer/permute.h \
    ../../ncnn/src/layer/pooling.h \
    ../../ncnn/src/layer/power.h \
    ../../ncnn/src/layer/prelu.h \
    ../../ncnn/src/layer/priorbox.h \
    ../../ncnn/src/layer/proposal.h \
    ../../ncnn/src/layer/reduction.h \
    ../../ncnn/src/layer/relu.h \
    ../../ncnn/src/layer/reshape.h \
    ../../ncnn/src/layer/rnn.h \
    ../../ncnn/src/layer/roipooling.h \
    ../../ncnn/src/layer/scale.h \
    ../../ncnn/src/layer/shufflechannel.h \
    ../../ncnn/src/layer/sigmoid.h \
    ../../ncnn/src/layer/slice.h \
    ../../ncnn/src/layer/softmax.h \
    ../../ncnn/src/layer/split.h \
    ../../ncnn/src/layer/spp.h \
    ../../ncnn/src/layer/squeeze.h \
    ../../ncnn/src/layer/tanh.h \
    ../../ncnn/src/layer/threshold.h \
    ../../ncnn/src/layer/tile.h \
    ../../ncnn/src/layer/unaryop.h \
    ../../ncnn/src/blob.h \
    ../../ncnn/src/cpu.h \
    ../../ncnn/src/layer.h \
    ../../ncnn/src/layer_type.h \
    ../../ncnn/src/mat.h \
    ../../ncnn/src/net.h \
    ../../ncnn/src/opencv.h \
    ../../ncnn/src/paramdict.h \
    ../../ncnn/src/layer/arm/shufflechannel_arm.h \
    ../../ncnn/src/layer/arm/convolutiondepthwise_3x3.h \
    ../../ncnn/src/layer/arm/convolution_3x3-my.h

SOURCES += \
    ../../ncnn/autotest/autotest.cpp \
    ../../ncnn/examples/squeezencnn/jni/squeezencnn_jni.cpp \
    ../../ncnn/examples/ssd/ssdmobilenet.cpp \
    ../../ncnn/examples/ssd/ssdsqueezenet.cpp \
    ../../ncnn/examples/fasterrcnn.cpp \
    ../../ncnn/examples/squeezenet.cpp \
    ../../ncnn/src/layer/arm/absval_arm.cpp \
    ../../ncnn/src/layer/arm/batchnorm_arm.cpp \
    ../../ncnn/src/layer/arm/bias_arm.cpp \
    ../../ncnn/src/layer/arm/convolution_arm.cpp \
    ../../ncnn/src/layer/arm/convolutiondepthwise_arm.cpp \
    ../../ncnn/src/layer/arm/deconvolution_arm.cpp \
    ../../ncnn/src/layer/arm/deconvolutiondepthwise_arm.cpp \
    ../../ncnn/src/layer/arm/eltwise_arm.cpp \
    ../../ncnn/src/layer/arm/innerproduct_arm.cpp \
    ../../ncnn/src/layer/arm/lrn_arm.cpp \
    ../../ncnn/src/layer/arm/pooling_arm.cpp \
    ../../ncnn/src/layer/arm/prelu_arm.cpp \
    ../../ncnn/src/layer/arm/relu_arm.cpp \
    ../../ncnn/src/layer/arm/scale_arm.cpp \
    ../../ncnn/src/layer/arm/sigmoid_arm.cpp \
    ../../ncnn/src/layer/arm/slice_arm.cpp \
    ../../ncnn/src/layer/arm/softmax_arm.cpp \
    ../../ncnn/src/layer/x86/convolution_x86.cpp \
    ../../ncnn/src/layer/absval.cpp \
    ../../ncnn/src/layer/argmax.cpp \
    ../../ncnn/src/layer/batchnorm.cpp \
    ../../ncnn/src/layer/bias.cpp \
    ../../ncnn/src/layer/binaryop.cpp \
    ../../ncnn/src/layer/bnll.cpp \
    ../../ncnn/src/layer/concat.cpp \
    ../../ncnn/src/layer/convolution.cpp \
    ../../ncnn/src/layer/convolutiondepthwise.cpp \
    ../../ncnn/src/layer/crop.cpp \
    ../../ncnn/src/layer/deconvolution.cpp \
    ../../ncnn/src/layer/deconvolutiondepthwise.cpp \
    ../../ncnn/src/layer/detectionoutput.cpp \
    ../../ncnn/src/layer/dropout.cpp \
    ../../ncnn/src/layer/eltwise.cpp \
    ../../ncnn/src/layer/elu.cpp \
    ../../ncnn/src/layer/embed.cpp \
    ../../ncnn/src/layer/exp.cpp \
    ../../ncnn/src/layer/expanddims.cpp \
    ../../ncnn/src/layer/flatten.cpp \
    ../../ncnn/src/layer/innerproduct.cpp \
    ../../ncnn/src/layer/input.cpp \
    ../../ncnn/src/layer/interp.cpp \
    ../../ncnn/src/layer/log.cpp \
    ../../ncnn/src/layer/lrn.cpp \
    ../../ncnn/src/layer/lstm.cpp \
    ../../ncnn/src/layer/memorydata.cpp \
    ../../ncnn/src/layer/mvn.cpp \
    ../../ncnn/src/layer/normalize.cpp \
    ../../ncnn/src/layer/padding.cpp \
    ../../ncnn/src/layer/permute.cpp \
    ../../ncnn/src/layer/pooling.cpp \
    ../../ncnn/src/layer/power.cpp \
    ../../ncnn/src/layer/prelu.cpp \
    ../../ncnn/src/layer/priorbox.cpp \
    ../../ncnn/src/layer/proposal.cpp \
    ../../ncnn/src/layer/reduction.cpp \
    ../../ncnn/src/layer/relu.cpp \
    ../../ncnn/src/layer/reshape.cpp \
    ../../ncnn/src/layer/rnn.cpp \
    ../../ncnn/src/layer/roipooling.cpp \
    ../../ncnn/src/layer/scale.cpp \
    ../../ncnn/src/layer/shufflechannel.cpp \
    ../../ncnn/src/layer/sigmoid.cpp \
    ../../ncnn/src/layer/slice.cpp \
    ../../ncnn/src/layer/softmax.cpp \
    ../../ncnn/src/layer/split.cpp \
    ../../ncnn/src/layer/spp.cpp \
    ../../ncnn/src/layer/squeeze.cpp \
    ../../ncnn/src/layer/tanh.cpp \
    ../../ncnn/src/layer/threshold.cpp \
    ../../ncnn/src/layer/tile.cpp \
    ../../ncnn/src/layer/unaryop.cpp \
    ../../ncnn/src/blob.cpp \
    ../../ncnn/src/cpu.cpp \
    ../../ncnn/src/layer.cpp \
    ../../ncnn/src/mat.cpp \
    ../../ncnn/src/mat_pixel.cpp \
    ../../ncnn/src/net.cpp \
    ../../ncnn/src/opencv.cpp \
    ../../ncnn/src/paramdict.cpp \
    ../../ncnn/tools/caffe/caffe2ncnn.cpp \
    ../../ncnn/tools/mxnet/mxnet2ncnn.cpp \
    ../../ncnn/tools/tensorflow/tensorflow2ncnn.cpp \
    ../../ncnn/tools/ncnn2mem.cpp \
    ../../ncnn/src/layer/arm/shufflechannel_arm.cpp

DISTFILES += \
    ../../ncnn/autotest/CMakeLists.txt \
    ../../ncnn/examples/ssd/CMakeLists.txt \
    ../../ncnn/examples/CMakeLists.txt \
    ../../ncnn/src/CMakeLists.txt \
    ../../ncnn/tools/caffe/CMakeLists.txt \
    ../../ncnn/tools/mxnet/CMakeLists.txt \
    ../../ncnn/tools/tensorflow/CMakeLists.txt \
    ../../ncnn/tools/CMakeLists.txt \
    ../../ncnn/CMakeLists.txt
