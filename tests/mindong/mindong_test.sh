cd ../../
pwd

venv/bin/python train.py \
  --model_id lstm \
  --model_type lstm \
  --model_arch_desc test \
  --data_path data/forex/t_note.csv \
  --accelerator cpu \
  --num_layers 5 \
  --hidden_size 512 \
  --epoch 10 \
  --seq_len 96 \
  --pred_len 31 \
  --label_len 10 \
  --learning_rate 0.0001 \
  --weight_decay 0.0001 \
  --scale False
#
#venv/bin/python train.py \
#  --model_id n_linear \
#  --model_type nlinear \
#  --model_arch_desc test \
#  --accelerator mps \
#  --data_path data/forex/t_note.csv \
#  --epoch 10 \
#  --seq_len 730 \
#  --pred_len 30 \
#  --label_len 10 \
#  --learning_rate 0.0001 \
#  --weight_decay 0.0001 \
#  --scale True

# arima not working
#venv/bin/python train.py \
#  --model_id arima \
#  --model_type arima \
#  --model_arch_desc test \
#  --data_path data/forex/t_note.csv \
#  --accelerator cpu \
#  --epoch 10 \
#  --seq_len 730 \
#  --pred_len 30 \
#  --label_len 10 \
#  --learning_rate 0.0001 \
#  --weight_decay 0.0001 \
