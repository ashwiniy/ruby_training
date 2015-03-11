def ifvalid(x,y,sol)
   
    if x>=0 and x<8 and y>=0 and y<8 and sol[x][y]==-1
       return true
    else
 return false
end
end

def solution(sol)
   
    for x in 0..7
    for y in 0..7
       print sol[x][y]
       print "\t" 
    end
    print "\n"
  end
    #sol.display
end
        
  
def knight()
 
    sol=Array.new(8){Array.new(8,-1)}

 
    
    
    
     xMove =[2, 1, -1, -2, -2, -1,  1,  2 ]
     yMove =[1, 2,  2,  1, -1, -2, -2, -1 ]
 puts "enter the inital x position"
  x1=gets.chomp.to_i
  puts "enter the inital y position"
  y1=gets.chomp.to_i
  
     sol[x1][y1]  = 0 
  
     #sol[0][0]  = 0 

    if solvedKnight(x1, y1, 1, sol, xMove, yMove)==false
    
        puts "Solution does not exist"
        return false
    
    else
    
    solution(sol) 

 end

    return true 

end
 
 def solvedKnight(x1,y1,movei,sol,xmove,ymove)
	
	if movei == 8*8
            return true 
        end
        
        for k in 0..7
        	next_x = x1 + xmove[k]
		next_y = y1 + ymove[k]
        	if ifvalid(next_x,next_y,sol)


#puts movei
                        sol[next_x][next_y]=movei
                    if solvedKnight(next_x,next_y,movei+1,sol,xmove,ymove)==true
			return true
		    else
			sol[next_x][next_y] =-1
		    end
		end
		
	end
return false
end
 
   knight()
   #end
 
