from collections import deque


names = {
        'Marina': ['David', 'Miha'],
        'David': ['Danila', 'Diana'],
        'Miha': ['Nikita', 'Oleg'],
        'Danila': ['Elya', 'Ira', 'Denick']
        }


def kser(name):
    return not len(name) % 2 and name[0] == 'D'


def get_ks_player(deq, people):
    passed = []
    while deq:
        friend = deq.popleft()
        if friend not in passed:
            if doter(friend):
                return friend
            else:
                deq += people.get(friend, [])
            passed.append(friend)
    return False


d = deque(names['Marina'])
res = get_ks_player(d, names)
if res:
    print(res)
