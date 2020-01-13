# c2b compiler in python (work in progress)
def comment_(l):
    return l
def goto_(l):
    raise TypeError('"goto" statement is not supported in c2b to Python')
def incr_(l):
    l=l[5:-1]
    return l+"+=1"
def raise_(l):
    l=l[6:-1]
    return "raise Exception('"+l.replace("'",'"')+"')"
def print_(l):
    l=l[6:-1]
    return 'print("'+l.replace('"',"'")+'")'
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
        line = fileToCompile[0]
        if line.lower().startswith(" "):
            return compile_string(line[1:])
        elif line.lower().startswith("\t"):
            return compile_string(line[1:])
        elif line.lower().startswith("#"):
            return comment_(line[1:])
        #elif line.lower().startswith("printf"):
        #    return printf_(line)
        elif line.lower().startswith("print"):
            return print_(line)
        #elif line.lower().startswith("wait"):
        #    return wait_(line)
        #elif line.lower().startswith("end"):
        #    return end_(line)
        #elif line.lower().startswith("export"):
        #    return export_(line)
        #elif line.lower().startswith("disp"):
        #    return disp_(line)
        #elif line.lower().startswith("clear"):
        #    return clear_(line)
        #elif line.lower().startswith("ifin"):
        #    return ifin_(line)
        #elif line.lower().startswith("if.event"):
        #    return ifevent_(line)
        #elif line.lower().startswith("if"):
        #    return if_(line)
        #elif line.lower().startswith("} elif"):
        #    return elif_(line)
        #elif line.lower().startswith("cmd"):
        #    return cmd_(line)
        #elif line.lower().startswith("title"):
        #    return title_(line)
        #elif line.lower().startswith("define"):
        #    return define_(line)
        #elif line.lower().startswith("place"):
        #    return place_(line)
        elif line.lower().startswith("goto"):
            return goto_(line)
        #elif line.lower().startswith("$"):
        #    return callFunction_(line)
        #elif line.lower().startswith("prompt"):
        #    return prompt_(line)
        #elif line.lower().startswith("download"):
        #    return download_(line)
        #elif line.lower().startswith("ren"):
        #    return ren_(line)
        #elif line.lower().startswith("del"):
        #    return del_(line)
        #elif line.lower().startswith("mkfile"):
        #    return mkfile_(line)
        #elif line.lower().startswith("mkfolder"):
        #    return mkfolder_(line)
        #elif line.lower().startswith("file"):
        #    return file_(line)
        #elif line.lower().startswith("play"):
        #    return play_(line)
        #elif line.lower().startswith("while"):
        #    return while_(line)
        elif line.lower().startswith("incr"):
            return incr_(line)
        #elif line.lower().startswith("repeat"):
        #    return repeat_(line)
        #elif line.lower().startswith("break"):
        #    return break_(line)
        #elif line.lower().startswith("returnf"):
        #    return returnf_(line)
        #elif line.lower().startswith("return"):
        #    return return_(line)
        #elif line.lower().startswith("open"):
        #    return open_(line)
        #elif line.lower().startswith("skey"):
        #    return skey_(line)
        #elif line.lower().startswith("ps"):
        #    return ps_(line)
        #elif line.lower().startswith("alert"):
        #    return alert_(line)
        #elif line.lower().startswith("color"):
        #    return color_(line)
        #elif line.lower().startswith("colour"):
        #    return colour_(line)
        #elif line.lower().startswith("restart"):
        #    return restart_(line)
        #elif line.lower().startswith("out"):
        #    return out_(line)
        #elif line.lower().startswith("rewrite"):
        #    return rewrite_(line)
        #elif line.lower().startswith("choice"):
        #    return choice_(line)
        #elif line.lower().startswith("stop"):
        #    return stop_(line)
        #elif line.lower().startswith("close"):
        #    return close_(line)
        #elif line.lower().startswith("import"):
        #    return import_(line)
        elif line.lower().startswith("raise"):
            return raise_(line)
        #elif line.lower().startswith("f$"):
        #    return callf_(line)
        #elif line.lower().startswith("process"):
        #    return process_(line)
        #elif line.lower().startswith("event"):
        #    return event_(line)
        #elif line.lower().startswith("setf"):
        #    return setf_(line)
        #elif line.lower().startswith("mathf"):
        #    return mathf_(line)
        #elif line.lower().startswith("["):
        #    return setQuick_(line)
        #elif line=="}":
        #    return closeBracket_(line)
        #elif line=="} else {":
        #    return else_(line)
        else:
            return ""
