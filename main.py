# main.py

import torch

from classifier import Classifier


if __name__=="__main__":
    input_size = 64
    output_size = 2
    classifier = Classifier(input_size, output_size)
    batch_size = 2
    input = torch.randn(batch_size, input_size)
    logits = classifier(input)
    print(logits)

