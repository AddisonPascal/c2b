# c2b compiler in python (work in progress)

def compile_string(fileToCompile):
    fileCompiled = ''
    fileToCompile = fileToCompile.split('\n')
    if len(fileToCompile)==0: return ''
    elif len(fileToCompile)!=1:
        for line in fileToCompile:
            fileCompiled += '\n'
            fileCompiled += compile_string(line)
        return fileCompiled
    else:
        if line.startswith(" "):
            return compile_string(line[1:])
        elif line.startswith("\t"):
            return compile_string(line[1:])
        elif line.startswith("#"):
            return printf_(line)
        elif line.startswith("print"):
            return print_(line)
        elif line.startswith("wait"):
            return wait_(line)
        elif line.startswith("end"):
            return end_(line)
        elif line.startswith("export"):
            return export_(line)
        elif line.startswith("disp"):
            return disp_(line)
        elif line.startswith("clear"):
            return clear_(line)
        elif line.startswith("ifin"):
            return ifin_(line)
        elif line.startswith("if.event"):
            return ifevent_(line)
        elif line.startswith("if"):
            return if_(line)
        elif line.startswith("} elif"):
            return elif_(line)
        elif line.startswith("cmd"):
            return cmd_(line)
        elif line.startswith("title"):
            return title_(line)
        elif line.startswith("define"):
            return define_(line)
        elif line.startswith("place"):
            return place_(line)
        elif line.startswith("goto"):
            return goto_(line)
        elif line.startswith("$"):
            return callFunction_(line)
        elif line.startswith("prompt"):
            return prompt_(line)
        elif line.startswith("download"):
            return download_(line)
        elif line.startswith("ren"):
            return ren_(line)
        elif line.startswith("del"):
            return del_(line)
        elif line.startswith("mkfile"):
            return mkfile_(line)
        elif line.startswith("mkfolder"):
            return mkfolder_(line)
        elif line.startswith("file"):
            return file_(line)
        elif line.startswith("play"):
            return play_(line)
        elif line.startswith("while"):
            return while_(line)
        elif line.startswith("incr"):
            return incr_(line)
        elif line.startswith("repeat"):
            return repeat_(line)
        elif line.startswith("break"):
            return break_(line)
        elif line.startswith("returnf"):
            return returnf_(line)
        elif line.startswith("return"):
            return return_(line)
        elif line.startswith("open"):
            return open_(line)
        elif line.startswith("skey"):
            return skey_(line)
        elif line.startswith("ps"):
            return ps_(line)
        elif line.startswith("alert"):
            return alert_(line)
        elif line.startswith("color"):
            return color_(line)
        elif line.startswith("colour"):
            return colour_(line)
        elif line.startswith("restart"):
            return restart_(line)
        elif line.startswith("out"):
            return out_(line)
        elif line.startswith("rewrite"):
            return rewrite_(line)
        elif line.startswith("choice"):
            return choice_(line)
        elif line.startswith("stop"):
            return stop_(line)
        elif line.startswith("close"):
            return close_(line)
        elif line.startswith("import"):
            return import_(line)
        elif line.startswith("raise"):
            return raise_(line)
        elif line.startswith("f$"):
            return callf_(line)
        elif line.startswith("process"):
            return process_(line)
        elif line.startswith("event"):
            return event_(line)
        elif line.startswith("setf"):
            return setf_(line)
        elif line.startswith("mathf"):
            return mathf_(line)
        elif line.startswith("["):
            return setQuick_(line)
        elif line=="}":
            return closeBracket_(line)
        elif line=="} else {":
            return else_(line)
        else:
            return ""