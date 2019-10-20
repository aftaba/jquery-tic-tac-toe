from random import randint
#def players():
 #   p1=input("enter the name of player1:")
  #  p2=input("enter the name of the 2nd player:")
   # print("hello! ",p1,"and",p2,"welcome to the tic tac toe")
#players()

def display_board(board):
    #print('\n'*20)
    print("    |    |    ")
    print('',board[1]+'  |  '+board[2]+' | '+board[3])
    print("----|----|----")
    print('',board[4]+'  |  '+board[5]+' | '+board[6])
    print("----|----|----")
    print('',board[7]+'  |  '+board[8]+' | '+board[9])
    print("    |    |    ")
test_board=[' ']*10

def player_input():
    marker=''
    while marker!='X' and marker!='O':
        marker=input('Player1,choose X or O:').upper()
    player1=marker
    if player1=='X':
        return('X','O')
    else:
        return('O','X')
player1_marker,player2_marker=player_input()

def place_marker(board,marker,position):
    board[position]=marker
display_board(test_board)

def win_check(board,mark):
    return((board[1]==mark and board[2]==mark and board[3]==mark) or (board[4]==mark and board[5]==mark and board[6]==mark) or
           (board[7]==mark and board[8]==mark and board[9]==mark) or (board[1]==mark and board[5]==mark and board[9]==mark) or
           (board[3]==mark and board[5]==mark and board[7]==mark) or (board[1]==mark and board[4]==mark and board[7]==mark) or
           (board[2]==mark and board[5]==mark and board[8]==mark) or (board[3]==mark and board[6]==mark and board[9]==mark))
display_board(test_board)
win_check(test_board,'X')

def choose_first():

    flip=str(randint(0,1))

    if flip=='0':
        return 'player1'
    else:
        return 'player2' 
    
def space_check(board,position):
    board[position]==' '

def full_board_check(board):
    for i in range(1,10):
        if space_check(board,i):
            return True
    return False

def player_choice(board):
    position=0
    while position not in [1,2,3,4,5,6,7,8,9] or not space_check(board,position):
        position=int(input('Choose a position:(1-9):'))
        return position
        player_choice(board)

def replay():
    choice=input("play again? Enter yes or no(Y/N)")
    return choice == 'y'
print ('welcome to tic tac toe')

while True:
    the_board=[' ']*10
    player1_marker,player2_marker=player_input()
    
    turn=choose_first()
    print(turn+' will go first')

    play_game=input("ready to play? y or n ? ")

    if play_game=='y':
        game_on=True
    else:
        game_on=False

    while game_on:
        if turn=='player1':
            display_board(the_board)
            position=player_choice(the_board)
            place_marker(the_board,player1_marker,position)

            if win_check(the_board,player1_marker):
                     display_board(the_board)
                     print('player1 has won')
                     game_on=False
            else:
                     if full_board_check(the_board):
                        display_board(the_board)
                        print('Tie game')
                        game_on=False
                     else:
                        turn ='player2'
        else:
            display_board(the_board)
            position=player_choice(the_board)
            place_marker(the_board,player2_marker,position)

            if win_check(the_board,player2_marker):
                     display_board(the_board)
                     print('player 2 has won')
                     game_on==False
            else:
                     if full_board_check(the_board):
                        display_board(the_board)
                        print('Tie game')
                        break
                     else:
                        turn ='player1'
    if not replay():
            break
