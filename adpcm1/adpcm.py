
class wav:
    chunkID = ''
    chunkSize = 0
    format = ''
    pass

class fmt:
    chunkID = ''
    chunkSize = 0
    audioFormat = 0
    numChannels = 0
    sampleRate = 0
    byteRate = 0
    blockAlign = 0
    bitsSample = 0
    byteData = 0
    sampleBlock = 0
    pass

class fact:
    chunkID = ''
    chunkSize = 0
    numSamples = 0

class data:
    chunkID = ''
    chunkSize = 0

class block:
    presample = 0
    index = 0
    rsv = 0
    bdata = []

def main():
    wav_st = wav
    fmt_st = fmt
    fact_st = fact
    data_st = data
    block_st = block
    wavfile = open("1.wav", "rb")
    
    wav_st.chunkID = wavfile.read(4).decode()
    wav_st.chunkSize = int.from_bytes(wavfile.read(4), "little", signed=False)
    wav_st.format = wavfile.read(4).decode()
    
    fmt_st.chunkID = wavfile.read(4).decode()
    fmt_st.chunkSize = int.from_bytes(wavfile.read(4), "little", signed=False)
    fmt_st.audioFormat = int.from_bytes(wavfile.read(2), "little", signed=False)
    fmt_st.numChannels = int.from_bytes(wavfile.read(2), "little", signed=False)
    fmt_st.sampleRate = int.from_bytes(wavfile.read(4), "little", signed=False)
    fmt_st.byteRate = int.from_bytes(wavfile.read(4), "little", signed=False)
    fmt_st.blockAlign = int.from_bytes(wavfile.read(2), "little", signed=False)
    fmt_st.bitsSample = int.from_bytes(wavfile.read(2), "little", signed=False)
    fmt_st.byteData = int.from_bytes(wavfile.read(2), "little", signed=False)
    fmt_st.sampleBlock = int.from_bytes(wavfile.read(2), "little", signed=False)
    
    fact_st.chunkID = wavfile.read(4).decode()
    if fact_st.chunkID == "fact" :
        fact_st.chunkSize = int.from_bytes(wavfile.read(4), "little", signed=False)
        fact_st.numSamples = int.from_bytes(wavfile.read(4), "little", signed=False)
        data_st.chunkID = wavfile.read(4).decode()
        data_st.chunkSize = int.from_bytes(wavfile.read(4), "little", signed=False)
    elif fact_st.chunkID == "data" :
        data_st.chunkID = fact_st.chunkID
        data_st.chunkSize = int.from_bytes(wavfile.read(4), "little", signed=False)

    if fmt_st.audioFormat == 17 :
        i = 0
        while(i < 15):
            #block_st.presample = int.from_bytes(wavfile.read(2), "little", signed=True)
            #block_st.index = int.from_bytes(wavfile.read(1), "little", signed=False)
            print(str(int.from_bytes(wavfile.read(1), "little", signed=False))+', '+str(int.from_bytes(wavfile.read(1), "little", signed=False))+', '+str(int.from_bytes(wavfile.read(1), "little", signed=False))+', ')
            block_st.rsv = int.from_bytes(wavfile.read(1), "little", signed=False)
            block_st.bdata = wavfile.read(fmt_st.blockAlign-4)
            i+=1
            s = ''
            j = 0
            for k in block_st.bdata:
              j+=1
              if j < 14:
                s+=str(int(k))+', '
              else:
                j = 0
                s+=str(int(k))+', \n'
            print(s)
    else :
        print("error file type")
        
    wavfile.close()

if __name__ == "__main__":
    print("")
    main()
    print("")