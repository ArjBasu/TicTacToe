function showhelp(){
    if(help.visible===true)
        help.visible = false
    else
        help.visible = true
}

function checkenable( status){
    var areaEnabled
    if(status===1)
        areaEnabled = true
    else
        areaEnabled = false

    area0.enabled= areaEnabled
    area1.enabled= areaEnabled
    area2.enabled= areaEnabled
    area3.enabled= areaEnabled
    area4.enabled= areaEnabled
    area5.enabled= areaEnabled
    area6.enabled= areaEnabled
    area7.enabled= areaEnabled
    area8.enabled= areaEnabled

}

function reset(){
    var i,j
    for(i=0;i<3;i++){
        for(j=0;j<3;j++){
            ticTacToe.setPosition(i,j,-1)
            setValue(10*i+j,0)
        }
    }
    lastCPUMove = -1
    lastHumanMove = -1
    getturn()
    if(winpos!==-1){
        showlines(winpos,0)
        winpos=-1
    }
    checkenable(1)

}

function undo(){
    if(lastHumanMove!== -1 && lastCPUMove !== -1 ){
        var x = Math.floor(lastHumanMove/10)
        var y = lastHumanMove%10
        ticTacToe.setPosition(x,y,-1)
        setValue(lastHumanMove,0)
        x = Math.floor(lastCPUMove/10)
        y = lastCPUMove%10
        ticTacToe.setPosition(x,y,-1)
        setValue(lastCPUMove,0)
        lastCPUMove = -1
        lastHumanMove = -1
        ticTacToe.print()
        return 1
    }
    return -1
}



function getturn(){

    var num = Math.floor(Math.random()*1000)
    num = num%15
    num = num%10
    num = num%2
    if(num==0){
        console.log("Computer to Play First")
        var pos = ticTacToe.play(1);
        if(pos===-1)

        lastCPUMove = pos
        setValue(pos,1)
        var i = Math.floor(pos/10);
        var j = pos%10
        ticTacToe.setPosition(i,j,0)

        ticTacToe.print()
    }

}


function check(x,y){
    console.log("check called with values: "+x+"and "+y)
    ticTacToe.setPosition(x,y,1)
    lastHumanMove = 10*x+y
    ticTacToe.print()
    var win = ticTacToe.winner(1)
    if(win!==-1){
        showlines(win,1)
        console.log("You win!!")
        checkenable(0)
        winpos = win
        lastCPUMove = -1
        lastHumanMove = -1
    }

    else{

        var pos = ticTacToe.play(0)
        if(pos===-1){
            console.log("Game Over!!!")
        }
        else
        {
            lastCPUMove = pos
            console.log("Position Returned: "+pos)
            setValue(pos,1)

            var i = Math.floor(pos/10)
            var j = pos%10
            ticTacToe.setPosition(i,j,0)
            ticTacToe.print()
                win = ticTacToe.winner(0)
                if(win!==-1){
                    showlines(win,1)
                    console.log("Computer Wins!!!!")
                    checkenable(0)
                    winpos = win
                    lastCPUMove = -1
                    lastHumanMove = -1


            }

            if(ticTacToe.checkfull()===1)
                console.log("Game Over!!!")
        }
    }

}

function showlines(line,show){
    console.log("showlines called with line: "+line)
    var linevisible
    if(show===1)
        linevisible = true
    else
        linevisible = false
    switch(line){
        case 0: line1.visible = linevisible;break;
        case 1: line2.visible = linevisible;break;
        case 2: line3.visible = linevisible;break;
        case 3: line4.visible = linevisible;break;
        case 4: line5.visible = linevisible;break;
        case 5: line6.visible = linevisible;break;
        case 6: line7.visible = linevisible;break;
        case 7: line8.visible = linevisible;break;
    }
}

function setValue(value,status){
    console.log("setValue called with value: "+value)
    var j=value%10
    var i=Math.floor(value/10)
    var visibility
    if(status===1){
        value="O"
        visibility = true
    }
    else{
        visibility = false
        value = "X"
    }

    if(i===0){
        switch(j){
        case 0: text11.text=value;text11.visible=visibility;break;
        case 1: text12.text=value;text12.visible=visibility;break;
        case 2: text13.text=value;text13.visible=visibility;break;
        }
    }
    else if(i===1){
        switch(j){
        case 0: text21.text=value;text21.visible=visibility;break;
        case 1: text22.text=value;text22.visible=visibility;break;
        case 2: text23.text=value;text23.visible=visibility;break;
        }
    }
    else if(i===2){
        switch(j){
        case 0: text31.text=value;text31.visible=visibility;break;
        case 1: text32.text=value;text32.visible=visibility;break;
        case 2: text33.text=value;text33.visible=visibility;break;
        }
    }
}
