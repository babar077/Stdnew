
class Student

attr_accessor :first_name, :rollnum, :emailaddress, :sex

 def initialize(first_name,rollnum,emailaddress,sex)
 @first_name = first_name
 @rollnum = rollnum
 @emailaddress = emailaddress
 @sex = sex
 end
def update(first_name,rollnum,emailaddress,sex)
@first_name = first_name
@rollnum = rollnum
@emailaddress = emailaddress
@sex = sex
end
def delete
@destroy
end
def display
p "First_Name = #{@first_name}"
p "Roll Number = #{@rollnum}" 
p "Email Address = #{@emailaddress}"
p "Sex = #{@sex}"
end
end



def select_menu
print "what's your first name?"
@first_name=gets.chomp
@first_name

print "what's your rollnum?"
@rollnum=gets.chomp
@rollnum

print "what's your Emailaddress?"
@emailaddress_name=gets.chomp
@emailaddress_name

print "what's your Sex?"
@sex_name=gets.chomp
@sex_name
end

def select_action
print "press 1 to Display\n"
print "press 2 to Edit\n"
print "press 3 to Delete\n"
print "press C to Close\n"
print "Enter choice = "
select = gets.chomp
return select
end

def apply_action(option, std)
if (option == "1")
std.display

elsif (option == "2")
select_menu
std.update(@first_name, @rollnum, @emailaddress_name, @sex_name)

elsif (option == "3")
@delete

else
p "Program Closed..."
end
end



select_menu
std = Student.new(@first_name, @rollnum, @emailaddress_name, @sex_name)

p "Student Saved..."

option = select_action

apply_action(option, std)
p "Student...", std

