v4l2_fb: camera_pic.o fb.o
	arm-poky-linux-gnueabi-gcc -o $@ $^ -static
%.o: %.c
	arm-poky-linux-gnueabi-gcc -c -o $@ $< -static
clean:
	rm -f *.o v4l2_fb
