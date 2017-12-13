rm keras_frcnn/*.pyc
rm results_imgs/*
#python train_frcnn.py --network=fcnet --parser=simple --path=../faster-rcnn/dataset/PNG_train/gt.txt --config_filename=simple_config.pickle --output_weight_path='./model_frcnn_zfnet.hdf5'
#python test_frcnn.py --network=fcnet --path=../faster-rcnn/dataset/PNG_test --config_filename=simple_config.pickle
#python train_frcnn.py --path=../faster-rcnn/dataset/PNG_train/gt.txt --config_filename=simple_config.pickle --output_weight_path='./model_frcnn_zfnet.hdf5'
#python test_frcnn.py --path=../faster-rcnn/dataset/PNG_test --config_filename=simple_config.pickle
python train_frcnn.py --network=zfnet --parser=simple --num_epochs=12 --epoch_length=600 --path=../faster-rcnn/dataset/PNG_train/gt.txt --config_filename=zfnet_config_8_stride.pickle --output_weight_path='./model_frcnn_zfnet_8_stride.hdf5'
#python test_frcnn.py --network=vgg --path=../faster-rcnn/dataset/PNG_test --config_filename=zfnet_config_8_stride.pickle
python train_frcnn.py --network=vgg --parser=simple --num_epochs=12 --epoch_length=600 --path=../faster-rcnn/dataset/PNG_train/gt.txt --config_filename=vgg_config_8_stride.pickle --output_weight_path='./model_frcnn_vgg_8_stride.hdf5'
#python test_frcnn.py --network=vgg --path=../faster-rcnn/dataset/PNG_test --config_filename=vgg_config_8_stride.pickle