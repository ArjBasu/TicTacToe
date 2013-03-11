#include "AI.h"
#include <QObject>
#include <QDebug>

void AI::print(){

    int i;
    for(i=0;i<3;i++){
        qDebug()<<board[i][0]<<" "<<board[i][1]<< " "<<board[i][2];
    }
}

int AI::checkfull(){
   int i,j,index=0;
   for(i=0;i<3;i++){
       for(j=0;j<3;j++){
           if(board[i][j]!=-1)
               index++;
       }
   }
   if(index==9)
       return 1;
   return 0;
}

int AI::play(int randommode){
    if(checkfull()==1)
        return -1;

    if(randommode==1)
    {
        int final = 0;
        int val,div,returnval=-1;
        do{

            val = random();
            div = val%10 + 1;
            val = val/div;
            val= val % 9;

            switch(val){
            case 0:
            case 1:
            case 2: returnval = val; break;
            case 3: returnval = 10; break;
            case 4: returnval = 11; break;
            case 5: returnval = 12; break;
            case 6: returnval = 20; break;
            case 7: returnval = 21; break;
            case 8: returnval = 22; break;

            }
            if(board[returnval/10][returnval%10]==-1){
                final = 1;
            }

        }while(final ==0);

        return returnval;

    }
    int position;
    position = decider(0);
    if(position!=-1){
        return position;
    }

    position = decider(1);

    if(position!=-1){
        return position;
    }

    position = stopfork();
    if(position!=-1){
        return position;
    }


    int result = play(1);
    if(result!=-1)
        return result;
    return -1;


}

void AI::initialise()
{
    int i=3, j=3;
    board=new int*[i];
    int k,m;
    for(k=0;k<i;k++){
        board[k]=new int[j];

    }
    for(k=0;k<3;k++){
        for(m=0;m<3;m++){
            board[k][m]=-1;
        }
    }
}

int AI::decider(int mark){
    qDebug()<<"Decider called with mark "<<mark;
    int i,pos;
    for(i=0;i<3;i++){
        pos=patternmatch(board[i][0],board[i][1],board[i][2],mark);
        if(pos!=-1){
            return 10*i+pos;
        }

    }
    qDebug()<<"Stage 1 Crossed";
    for(i=0;i<3;i++){
        pos = patternmatch(board[0][i],board[1][i],board[2][i],mark);
        if(pos!=-1){
            return 10*pos+i;
        }
    }
    qDebug()<<"Stage 2 Crossed";

    pos=patternmatch(board[0][0],board[1][1],board[2][2],mark);
    if(pos!=-1){
        return 10*pos+pos;
    }
    qDebug()<<"Stage 3 Crossed";
    pos = patternmatch(board[0][2],board[1][1],board[2][0],mark);
    if(pos!=-1){
        return 10*pos+(2-pos);
    }
    qDebug()<<"Stage 4 Crossed";

    return -1;

}

int AI::stopfork(){
    qDebug()<<"StopFork Called";
    int pos;

    if(board[0][0]==1||board[0][2]==1||board[2][2]==1||board[2][0]==1){
        if(board[1][1]==-1)
            return 11;
    }
    qDebug()<<"Stage 1 Crossed";

    if(board[1][1]==1){
      if(board[0][0]==-1){
        return 0;
      }

      else if(board[0][2]==-1){
          return 2;
      }

      else if(board[2][0]==-1){
          return 20;
      }

      else if(board[2][2]==-1){
          return 22;
      }

    }
    qDebug()<<"Stage 2 Crossed";



    pos=patternmatch(board[0][1],board[1][0],-1,1);
    if(pos==2){
        if(board[0][0]==-1)
            return 0;
    }

    qDebug()<<"Stage 3 Crossed";
    pos=patternmatch(board[0][2],board[1][0],-1,1);
    if(pos==2){
        if(board[0][0]==-1)
            return 0;
    }

    qDebug()<<"Stage 4 Crossed";
    pos=patternmatch(board[0][1],board[2][0],-1,1);
    if(pos==2)
    {
        if(board[0][0]==-1)
            return 0;
    }

    qDebug()<<"Stage 5 Crossed";

    pos=patternmatch(board[1][2],board[2][1],-1,1);
    if(pos==2){
        if(board[0][0]==-1)
            return 22;
    }

    qDebug()<<"Stage 6 Crossed";
    pos=patternmatch(board[0][2],board[2][1],-1,1);
    if(pos==2){
        if(board[0][0]==-1)
            return 22;
    }

    qDebug()<<"Stage 7 Crossed";
    pos=patternmatch(board[2][0],board[1][2],-1,1);
    if(pos==2)
    {
        if(board[0][0]==-1)
            return 22;
    }

    qDebug()<<"Stage 8 Crossed";

    return -1;
}


int AI::winner(int mark){
    int i,pos;
    for(i=0;i<3;i++){
        pos=patternmatch(board[i][0],board[i][1],board[i][2],mark);
        if(pos==3){
            return i;
        }

    }
    for(i=0;i<3;i++){
        pos = patternmatch(board[0][i],board[1][i],board[2][i],mark);
        if(pos==3){
            return 3+i;
        }
    }

    pos=patternmatch(board[0][0],board[1][1],board[2][2],mark);
    if(pos==3){
        return 6;
    }
    pos = patternmatch(board[0][2],board[1][1],board[2][0],mark);
    if(pos==3){
        return 7;
    }

    return -1;
}


int AI::patternmatch(int f, int s, int t, int mark){
    if(f==-1 && s==mark && t==mark)
        return 0;
    if (f==mark && s==-1 && t==mark)
        return 1;
    if(f==mark && s==mark && t==-1)
        return 2;
    if(f==mark && s==mark && t==mark)
        return 3;
    return -1;
}

