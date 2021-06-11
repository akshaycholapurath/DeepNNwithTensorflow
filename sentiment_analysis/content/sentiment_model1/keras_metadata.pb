
�[root"_tf_keras_network*�Z{"name": "model_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_16"}, "name": "input_16", "inbound_nodes": []}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization", "trainable": true, "dtype": "string", "max_tokens": 20000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 25, "pad_to_max_tokens": true, "vocabulary_size": 20000}, "name": "text_vectorization", "inbound_nodes": [[["input_16", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "token_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "input_dim": 20000, "output_dim": 20, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": 25}, "name": "token_embedding", "inbound_nodes": [[["text_vectorization", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_24", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_24", "inbound_nodes": [[["token_embedding", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_25", "inbound_nodes": [[["conv1d_24", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_26", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_26", "inbound_nodes": [[["conv1d_25", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_27", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_27", "inbound_nodes": [[["conv1d_26", 0, 0, {}]]]}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d_5", "inbound_nodes": [[["conv1d_27", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_51", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_51", "inbound_nodes": [[["global_max_pooling1d_5", 0, 0, {}]]]}], "input_layers": [["input_16", 0, 0]], "output_layers": [["dense_51", 0, 0]]}, "shared_object_id": 20, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "string", "input_16"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_16"}, "name": "input_16", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization", "trainable": true, "dtype": "string", "max_tokens": 20000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 25, "pad_to_max_tokens": true, "vocabulary_size": 20000}, "name": "text_vectorization", "inbound_nodes": [[["input_16", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Embedding", "config": {"name": "token_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "input_dim": 20000, "output_dim": 20, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": 25}, "name": "token_embedding", "inbound_nodes": [[["text_vectorization", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Conv1D", "config": {"name": "conv1d_24", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_24", "inbound_nodes": [[["token_embedding", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Conv1D", "config": {"name": "conv1d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_25", "inbound_nodes": [[["conv1d_24", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Conv1D", "config": {"name": "conv1d_26", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_26", "inbound_nodes": [[["conv1d_25", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Conv1D", "config": {"name": "conv1d_27", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_27", "inbound_nodes": [[["conv1d_26", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d_5", "inbound_nodes": [[["conv1d_27", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_51", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_51", "inbound_nodes": [[["global_max_pooling1d_5", 0, 0, {}]]], "shared_object_id": 19}], "input_layers": [["input_16", 0, 0]], "output_layers": [["dense_51", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 22}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_16", "dtype": "string", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_16"}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "text_vectorization", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": true, "must_restore_from_config": true, "class_name": "TextVectorization", "config": {"name": "text_vectorization", "trainable": true, "dtype": "string", "max_tokens": 20000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 25, "pad_to_max_tokens": true, "vocabulary_size": 20000}, "inbound_nodes": [[["input_16", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [1600000, 1]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "token_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "token_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 25]}, "dtype": "float32", "input_dim": 20000, "output_dim": 20, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": 25}, "inbound_nodes": [[["text_vectorization", 0, 0, {}]]], "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25]}}2
�	root.layer_with_weights-2"_tf_keras_layer*�	{"name": "conv1d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_24", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["token_embedding", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 20}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 20]}}2
�	root.layer_with_weights-3"_tf_keras_layer*�	{"name": "conv1d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv1d_24", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 64]}}2
�	root.layer_with_weights-4"_tf_keras_layer*�	{"name": "conv1d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_26", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv1d_25", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 128}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 128]}}2
�	root.layer_with_weights-5"_tf_keras_layer*�	{"name": "conv1d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_27", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv1d_26", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 64]}}2
�root.layer-7"_tf_keras_layer*�{"name": "global_max_pooling1d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["conv1d_27", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 27}}2
�	root.layer_with_weights-6"_tf_keras_layer*�{"name": "dense_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_51", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["global_max_pooling1d_5", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}2
�-root.layer_with_weights-0._index_lookup_layer"_tf_keras_layer*�{"name": "string_lookup", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": true, "must_restore_from_config": true, "class_name": "StringLookup", "config": {"name": "string_lookup", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "string", "invert": false, "max_tokens": 20000, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "output_mode": "int", "pad_to_max_tokens": true, "vocabulary_size": 20000, "vocabulary": null, "encoding": "utf-8"}, "shared_object_id": 29}2
�jroot.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 30}2
�kroot.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 22}2