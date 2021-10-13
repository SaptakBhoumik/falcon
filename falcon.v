module main
import os
import color

fn main() {
	name:="saptak"
	computer:=os.hostname()
	mut path:=""
	mut instruction:=""
	for true{
		path=os.getwd().replace(r"\","/").split("/").last()
		println("${color.fg(color.style("╭-","bold"),"blue")}${color.fg(color.style(name,"bold"),"yellow")}@${color.fg(color.style(computer,"bold"),"green")} in ${color.fg(color.style(path,"bold"),"cyan")}")
		instruction=os.input("${color.fg(color.style("╰─λ ","bold"),"blue")}")
		if instruction=="exit"{
			break
		}
		else{
			os.system(instruction)
		}
	}
}
