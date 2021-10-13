import os
fn color_scheme(file string,path string) string
pub fn ls(path string)?{
	files:=os.ls(path) ?
	for file in files{
		println(file)
	}
}
ls(os.getwd())?