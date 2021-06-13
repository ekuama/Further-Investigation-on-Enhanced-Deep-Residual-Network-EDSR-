# Further-Investigation-on-Enhanced-Deep-Residual-Network-EDSR-
We aimed to provide an idea from the original [EDSR](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w12/papers/Lim_Enhanced_Deep_Residual_CVPR_2017_paper.pdf) baseline paper and provide possible enhancement in the model of the EDSR by comparing PSNR values. Our framework includes 1) Studies on various kernel sizes on EDSR baseline model to show impact of different kernel sizes in performance. 2) We introduce a residual block with attention mechanism which showed decent improvement in the PSNR value from the original EDSR baseline paper.

## Kernel Changes

# Dataset
We used the [DIV2K](http://www.vision.ee.ethz.ch/~timofter/publications/Agustsson-CVPRW-2017.pdf) for training which can be downloaded from [here](https://drive.google.com/file/d/1qhNjHjfiDI1Eao5AD0fmcZeYsvQhfSUc/view?usp=sharing). We also used standard datasets [Set5](http://people.rennes.inria.fr/Aline.Roumy/results/SR_BMVC12.html), [Set14](https://sites.google.com/site/romanzeyde/research-interests), [B100](https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/bsds/), and [Urban100](https://sites.google.com/site/jbhuang0604/publications/struct_sr) to evaluate our architecture. These datasets can be downloaded from [here](https://drive.google.com/file/d/1fAIQQZWuLGpBFx7jrpDuriDB1_7QGb2M/view?usp=sharing) Set the --dir_data in the src/option.py to your directory that holds the DIV2K dataset for training or the benchmark datasets for evaluation.

# Models
Our models can be downloaded from [here](https://drive.google.com/file/d/1_2A4NFuI5SZykVWz7UPz1PsObm4FvVHA/view?usp=sharing) The kernel models provided are for (x4) scale from scratch. You can train with x2 and pretrain x4 with x2 scale. We trained the EDSR baseline models ourselves but you can also used the pretrained models from [here](https://cv.snu.ac.kr/research/EDSR/model_pytorch.tar).

# Requirements
* Torch >= 1.0.0
* imageio
* Python 3.6
* numpy
* skimage
* matplotlib
* tqdm

# Training the Model
Change the dir_data argument in src/option.py to the place where DIV2K images are located.

We recommend you to pre-process the images before training. This step will decode all png files and save them as binaries. Use --ext sep_reset argument on your first run. You can skip the decoding part and use saved binaries with --ext sep argument.

You can train EDSR and MODEL by yourself.The scripts are provided in the src/demo.sh. Note that EDSR and MODEL (x4) requires pre-trained EDSR and MODEL (x2). This is also valid for x8. You can ignore this constraint by removing --pre_train argument.

# Results
Model |	X2|	X4	|X8
------|---|-----|---
EDSR baseline (paper)|	34.674dB |	28.987dB |	25.308dB
Attention block |	34.725dB |	29.120dB |	25.407dB
----------------------------------------------------------
Head Kernel Studies
Model |X4	
------|---
EDSR baseline (paper)|28.987dB 
5x5	|28.994dB
Three layers (751)|28.976dB
Three layers (715)|	28.987dB 
-------------------------------
Comparison of Implemented Attention Block with EDSR using Benchmark datasets

Dataset	|Scale	|EDSR baseline	|Implemented Mode
--------|-------|---------------|----------------
Set5	|x2	|37.968dB	|37.973dB
Set5  |x4	|32.112dB	|32.170dB
Set14	|x2	|33.547dB	|33.543dB
Set14 |x4	|28.562dB	|28.607dB
B100	|x2	|32.136dB	|32.168dB
B100  |x4	|27.558dB	|27.586dB
Urban100	|x2	|31.941dB	|32.019dB
Urban100  |x4	|26.027dB	|26.140dB
----------------------------------------------

# Test Your Own Image
Place your images in test folder. (like test/<your_image>)
