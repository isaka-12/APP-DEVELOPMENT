<script setup>
import { ref } from 'vue'

//messages array that will be displayed
const messages = ref([])

//image data to be displayed and looped through
const images = [
  "/src/assets/M-Pesa.jpeg",
  "/src/assets/tigo.png",
  "/src/assets/nmb.png"
]

//Data structure to hold predefined messages
const predefinedMessages = [
  {
    sender: "Isaka Mtweve",
    amount: "500,000-Tshs",
    transactionId: "id:BGK5DX6C42Z",
    day: "Today",
    time: "14:00",
    status: "Incoming"
  },
  {
    sender: "Bob",
    amount: "300,000-Tshs",
    transactionId: "id:1914aaa223d3aa7",
    day: "Yesterday",
    time: "16:30",
    status: "Outgoing"
  },{
    sender: "Bob Alice",
    amount: "300,000-Tshs",
    transactionId: "ID:2222-bbbb-bbb",
    day: "August,11",
    time: "16:30",
    status: "Outgoing"
  },{
    sender: "Bob",
    amount: "300,000-Tshs",
    transactionId: "ID:2222-bbbb-bbb",
    day: "Yesterday",
    time: "16:30",
    status: "Outgoing"
  },{
    sender: "Bob",
    amount: "300,000-Tshs",
    transactionId: "ID:2222-bbbb-bbb",
    day: "Yesterday",
    time: "16:30",
    status: "Outgoing"
  },{
    sender: "Bob",
    amount: "300,000-Tshs",
    transactionId: "ID:2222-bbbb-bbb",
    day: "Yesterday",
    time: "16:30",
    status: "Outgoing"
  }
 
]

// Index to track the current message in predefinedMessages
const currentMessageIndex = ref(0)

// Function to add the next message from predefinedMessages
const addMessage = () => {
  if (currentMessageIndex.value < predefinedMessages.length) {
    
    messages.value.push(predefinedMessages[currentMessageIndex.value])

    
    currentMessageIndex.value++
  } else {
   
    alert('No more messages to add')
  }
}
</script>

<template>
  <div class="container">
    <div id="my-app">
              <div id="top-sect">
                  <div class="top-sect-items">
                      <div class="top-sect-title">
                          <h1>Welcome back</h1>
                          <h3>Service Providers</h3>
                      </div>
                      <div class="top-sect-content">
                          <div class="top-sect-container">
                              <div class="brands" v-for="x in images"><img  v-bind:src="x"></div>                             
                          </div>
                          
                          <button>View More</button>
                      </div>
                    
                  </div>
              </div>
              <div class="direction">
                      <p>Recents</p>
                      <button type="button"><span>View All</span><i class="fa-solid fa-chevron-right"></i></button>
                  </div>
              <div id="main">
                 
                  <div class="messages" v-for="(message, index) in messages" :key="index">
                      <div class="sender-icon"></div>
                      <div class="message-content">
                          <p id="name">{{ message.sender }}</p>
                          <p id="amount">{{message.amount}}</p>
                          <p id="reference">{{message.transactionId}}</p>
                      </div>
                      <div class="details">
                          <div class="day-container">
                              <p>{{ message.day }}</p>
                          </div>
                          <div class="time-container">
                              <p>{{ message.time }}</p>
                              <p>{{ message.status}}</p>
                          </div>
                      </div>
                  </div>
                </div>
              <div id="bottom-sect">
                  <div class="buttons">
                      <button class="icon"><i class="fa-solid fa-house-chimney"></i></button>
                      <p>Home</p>
                  </div>
                  <div class="buttons">
                      <button class="icon"><i class="fa-solid fa-file-lines"></i></button>
                      <p>Report</p>
                  </div>
                  <div class="buttons" >
                      <button class="icon" id="add-btn" @click="addMessage"><i class="fa-solid fa-circle-plus"></i></button>
                      
                  </div>
                  <div class="buttons">
                      <button class="icon"><i class="fa-solid fa-pen-to-square"></i></button>
                      <p>Note</p>
                  </div>
                  <div class="buttons">
                      <button class="icon" ><i class="fa-solid fa-user"></i></button>
                      <p>Profile</p>
                  </div>
                  
              </div>
              
          </div>
  </div>
</template>

<style scoped>
*{
    margin: 0;
    padding: 0;
    
}
.container{
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    
    display: flex;
    justify-content: center;
    width: 100vw;
    background-color: rgb(250, 252, 254);
    
    overflow-x: hidden;
}
#my-app{
    width: 360px;
    height: 800px;
    margin: 20px 0;
    background-color: #E1F1F5;
    border-radius: 25px;
    display: flex;
    padding: 0;
    flex-direction: column;
    box-shadow: 0 0 8px 0 rgba(68, 63, 63, 0.2);
    border: 8px solid rgb(2, 2, 29);

}
#top-sect{
    padding: 0;
    margin: 0;
    display: flex;
    background:linear-gradient(0deg,#589BFF, #195062, #08443e);
    width: 100%;
    height: 300px;
    border-radius: 18px 18px 40px 40px;
    box-shadow: 0 4px 8px rgba(68, 63, 63, 0.2);

    .top-sect-items{
       
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;

        .top-sect-title{
            /* width: 320px;
            height: 170px; */
            color: #ffffff;
            display: flex;
            flex-direction: column;

            align-items: center;
            h1{
                font-size: 36px;
                margin: 60px 0 0 0;
                padding: 0;
            }
            h3{
                font-size: 20px;
                margin: 5px 0 0 0;
                padding: 0;
            }
           
        }
        .top-sect-content{
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;

            button{
                width: 130px;
                height: 25px;
                background:linear-gradient(45deg,#589BFF, #1d4f5f, #4085a5);

                border: 2px solid #073f52;
                border-radius: 20px;
                margin: 10px;
                color: #ffffff;
                font-size: 16px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);

            }
            .top-sect-container{
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 320px;
                padding: 0;
                margin:0 20px;
                
               
                .brands{
                    width: 100px;
                    height: 90px;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    border-radius: 20px;
                    background-color: #ffffff;
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);


                    img{
                        width: 90px;
                        height: 80px;
                        border-radius: 16px;
                    }
                }
            }
        }
    }
}
.direction{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin: 10px 20px 5px 20px;

        p{
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 20px;
            font-weight: bold;
            background-color: #ffffff;
            width: 95px;
            height: 27px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);

        }
        button{
            border: none;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #ffffff;
            width: 95px;
            height: 27px;
            padding: 8px;
            font-size: 20px;
            text-align: center;
            border-radius: 20px;
            text-align: center;
            color: #589BFF;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);


            span{
                font-size: 16px;
                color: #000000;
                padding: 8px 2px;

                
            }
        }
    }
#main{
    height: 432px;
    width: 100%;
    display: flex;
    flex-direction: column;
    overflow-y: scroll;
    overflow-x: hidden;

      /* Hide scrollbar for all browsers */
      scrollbar-width: none; /* Firefox */
     -ms-overflow-style: none; 

    ::-webkit-scrollbar {
        display: none; /* Safari and Chrome */
    }
    
    .messages{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        padding: 0 16px;
        margin: 10px 20px;
        height: 80px;
        background-color: #ffffff;
        border-radius: 20px;
        align-items: center;
       
        

        .sender-icon{
            width: 50px;
            height: 50px;
            background-color: #E1F1F5;

            border-radius: 12px;
            padding: 0;
            margin: 0;
        }
        .message-content{
            display: flex;
            flex-direction: column;
            align-items: left;
            padding: 0;
            gap: 0;
            margin: 0;

            p{
                margin: 0;
                padding: 4px;
                text-align: left;
            }
            #name{
                font-size: 16px;
                font-weight: bold;
            }
            #amount{
                font-size: 16px;
                text-align: center;
                width: 136px;
                padding: 0;
                padding: 2px;
                height: 20px;
                background-color: #E1F1F5;
                border-radius: 5px;
            }
            #reference{
                font-size: 14px;
                padding: 4px 0;
                color: #fa0202;
            }
        }
        .details{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 0;
            margin: 0;
            gap: 0;

            p{
                margin: 4px;
                padding: 0;
                text-align: center;
            }

            .day-container{
               background-color: #8FFF93;
               width: 70px;
               height: 20px;
               font-size: 12px;
               border-radius: 5px;
            }
            .time-container{
                font-size: 12px;
            }
        }
    }
}
.messages:hover{
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}
#bottom-sect{
    width: 100%;
    height: 68px;
    padding: 0;
    margin: 0;
    padding-top: 10px;
    border-radius: 25px;
    background-color: #ffffff;
    display: flex;
    justify-content: space-between;

    .buttons{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-content: center;
        text-align: center;
        font-size: 12px;
        padding-bottom: 10px;

        p{
            margin: 0;
            padding: 0;
        }
    }

    button{
        width: 36px;
        height: 36px;
        margin: 0 16px;
        padding: 0;
        font-size: 28px;
        background:none;
        color: #589BFF;
        border: none;
        cursor: pointer;

        :hover{
            font-weight: bolder;
            color: #0a1320;
           
    
        }
        
        
        
    }
    #add-btn{
        height: 50px;
        width: 50px;
        font-size: 40px;
        background-color: #ffffff;
        border: 2px solid #589BFF;
        border-radius: 100%;
        padding: 0;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

}

</style>
