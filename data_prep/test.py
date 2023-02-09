import sox

import numpy as np
import sox

tfm = sox.Transformer()
sample_rate = 44100
y = np.sin(2 * np.pi * 440.0 * np.arange(sample_rate * 1.0) / sample_rate)

out_path = '/Users/jiahong/Downloads/out_test.wav'

# output_array = tfm.build(input_filepath=in_path)
# output_array = tfm.build(input_array=y, sample_rate_in=sample_rate)

tfm.set_output_format(rate=8000)
# output_array = tfm.build(input_array=y, sample_rate_in=sample_rate)
success = tfm.build_file(input_array=y, sample_rate_in=sample_rate, output_filepath=out_path)
print(f"success:{success}")

a = 1329.56 + 1304.97 + 1280.28 + 1256.49 + 1230.60 + 1205.61 + 1144.01 + 1119.53 + 1094.95 + 1070.28 + 1045.52 + 1020.65 + 995.69 + 970.63 + 945.47 + 920.21 + 894.86 + 869.40 + 843.85 + 818.19 + 792.44 + 766.58 + 740.62 + 714.56 + 688.40 + 662.14 + 635.77 + 609.30 + 582.73 + 556.05 + 529.27 + 502.38 + 475.39 + 421.09 + 393.78 + 366.36 + 338.83 + 311.20 + 283.46 + 256.61 + 227.65 + 199.58 + 171.40 + 143.11 + 114.71 + 86.2 + 57.58 + 28.85



print(a)