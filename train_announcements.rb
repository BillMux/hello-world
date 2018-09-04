# all train networks in London have programs that control the regular announcements of
# information including the current stop, next stop, destination as well as brief
# information on other lines connecting to each stop

def next_stop service
    x = 5
    current_stop = service[x]
    next_stop = service[x+1]    


    puts "This is #{current_stop}."
    puts "The next station is #{next_stop}."

end

waterloo_woking = [
    'London Waterloo',
    'Vauxhall',
    'Clapham Junction',
    'Earsfield',
    'Wimbledon',
    'Surbiton',
    'Esher',
    'Hersham',
    'Walton-on-Thames',
    'Weybridge',
    'Byleet and New Haw',
    'West Byfleet',
    'Woking',
]
next_stop waterloo_woking