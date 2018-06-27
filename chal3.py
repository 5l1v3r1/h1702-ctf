
def main():
    key = ['t', 'h', 'i', 's', '_', 'i', 's', '_', 'a', '_', 'k', '3', 'y']
    key = ''.join(key)
    print "key = {}".format(key)
    s = "kO13t41Oc1b2z4F5F1b2BO33c2d1c61OzOdOtO"
    s = s[::-1]
    s = s.replace("O", "0").replace("t", "7").replace("B", "8").replace("z", "a").replace("F", "f").replace("k", "e")
    print "s = {}".format(s)
    s = s.decode('hex')
    print "hex decoded s = {}".format(s)
    key = (key * 10)[:len(s)]
    print ''.join([chr(ord(x[0]) ^ ord(x[1])) for x in zip(s, key)])

if __name__ == '__main__':
    main()
