
# $^    代表所有的依赖文件
# $@  代表所有的目标文件
# $<   代表第一个依赖文件


FINAL:=main
OBJECTS:=main.o func.o #代表后面所有的依赖文件
$(FINAL):$(OBJECTS)
    gcc $^ -o $(FINAL)#$^代表左边第一个依赖文件
%.o:%.c
    gcc -c $< -o $@
clean:
    rm *.o $(FINAL)