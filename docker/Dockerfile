FROM tensorflow/tensorflow:latest-gpu-py3

RUN pip3 install keras \
                ipython 

ENV PASSWD='sha1:67713fc6f549:630dc62d754b3a85bcd1d93745a5caa7b9d72e08'

# for jupyter
EXPOSE 8888
# for tensorboard
EXPOSE 6006

CMD ["/bin/bash", "-c", "jupyter notebook --allow-root --no-browser --ip=0.0.0.0 --NotebookApp.password=${PASSWD}"]