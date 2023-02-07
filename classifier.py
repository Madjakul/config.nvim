# classifier.py

import torch
import torch.nn as nn
import torch.nn.functional as F


class Classifier(nn.Module):
    """Simple neural network.

    parameters
    ----------
    input_size: ``int``
        Input dimension.
    output_size: ``int``
        Number of labels.

    Attributes
    ----------
    fc1: ``torch.nn.Linear``
        Fully connected layer.
    fc2: ``torch.nn.Linear``
        Fully connected layer.

    Examples
    --------
    >>> input_size = 64
    >>> output_size = 2
    >>> classifier = Classifier(input_size, output_size)
    >>> batch_size = 2
    >>> input = torch.randn(batch_size, input_size)
    >>> logits = classifier(input)
    >>> logits
    tensor([[0.3220, 0.6780],
        [0.3856, 0.6144]], grad_fn=<SoftmaxBackward0>)
    """

    def __init__(self, input_size: int, output_size: int):
        super(Classifier, self).__init__()
        self.fc1 = nn.Linear(input_size, 32)
        self.fc2 = nn.Linear(32, output_size)

    def forward(self, x: torch.Tensor):
        """Performs the forward pass.

        Parameters
        ----------
        x: ``torch.Tensor``
            Input batch.

        Returns
        -------
        logits: ``torch.Tensor``
            Computed probabilities.
        """
        x = F.relu(self.fc1(x))
        logits = F.softmax(self.fc2(x), -1)
        return logits

