# EDSR baseline model (x2)
python main.py --model EDSR --scale 2 --patch_size 96 --save edsr_baseline_x2 --reset

# EDSR baseline model (x4) - from EDSR baseline model (x2)
#python main.py --model EDSR --scale 4 --patch_size 192 --save edsr_baseline_x4 --reset --pre_train [pre-trained EDSR_baseline_x2 model dir]

# EDSR baseline model (x8) - from EDSR baseline model (x4)
#python main.py --model EDSR --scale 8 --patch_size 384 --save edsr_baseline_x8 --reset --pre_train [pre-trained EDSR_baseline_x4 model dir]

# EDSR baseline model + Attention (x2)
#python main.py --model MODEL --scale 2 --patch_size 96 --save model_baseline_x2 --reset

# EDSR baseline model + Attention (x4) - from EDSR baseline model + Attention (x2)
#python main.py --model MODEL --scale 4 --patch_size 192 --save model_baseline_x4 --reset --pre_train [pre-trained MODEL_baseline_x2 model dir]

# EDSR baseline model + Attention (x8) - from EDSR baseline model + Attention (x4)
#python main.py --model MODEL --scale 8 --patch_size 384 --save model_baseline_x4 --reset --pre_train [pre-trained MODEL_baseline_x4 model dir]

# EDSR baseline model + Kernel (5x5) (x4)
#python main.py --model KERNEL_5 --scale 4 --patch_size 192 --save kernel5_baseline_x4 --reset

# EDSR baseline model + Kernel (7x7 -> 1x1 -> 5x5) (x4)
#python main.py --model KERNEL_715 --scale 4 --patch_size 192 --save kernel715_baseline_x4 --reset

# EDSR baseline model + Kernel (7x7 -> 5x5 -> 1x1) (x4)
#python main.py --model KERNEL_751 --scale 4 --patch_size 192 --save kernel751_baseline_x4 --reset

# Standard benchmarks (Ex. MODEL_baseline_x4)
#python main.py --model MODEL --data_test Set5+Set14+B100+Urban100+DIV2K --data_range 801-900 --scale 4 --pre_train download --test_only --self_ensemble

# Test your own images
#python main.py --data_test Demo --scale 4 --pre_train download --test_only --save_results

