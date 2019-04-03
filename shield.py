#-*- coding: utf-8 -*-
import requests,sys,optparse,os

class generate_token(object):


      def __init__(self,user,pwd):
          self.user = user
          self.pwd = pwd

      def __dir__(self):
          return self.generate()['access_token'],self.generate()['uid']
       
      def generate(self):
          r = requests.get(
            f'https://b-api.facebook.com/method/auth.login?access_token=237759909591655%25257C0f140aabedfb65ac27a739ed1a2263b1&format=json&sdk_version=2&email={self.user}&locale=en_US&password={self.pwd}&sdk=ios&generate_session_cookies=1&sig=3f555f99fb61fcd7aa0c44f58f522ef6'
          )
          if 'error_code' in r.json():
              print(f'\n\033[91m[x]\033[0m Erro_Message: {r.json["error_code"]}\n')
              exit()
          else:
              return r.json()

class Active(generate_token):

      def __init__(self,user,pwd,active=None):
          super().__init__(user,pwd)
          self.active = active

      def data(self,x):
          return 'variables={"0":{"is_shielded":%s,"session_id":"9b78191c-84fd-4ab6-b0aa-19b39f04a6bc","actor_id":"%s","client_mutation_id":"b0316dd6-3fd6-4beb-aed4-bb29c5dc64b0"}}&method=post&doc_id=1477043292367183&query_name=IsShieldedSetMutation&strip_defaults=true&strip_nulls=true&locale=en_US&client_country_code=US&fb_api_req_friendly_name=IsShieldedSetMutation&fb_api_caller_class=IsShieldedSetMutation' % (x,super().__dir__()[1])
      @property          
      def headers(self):
          return {
            "Content-Type" : "application/x-www-form-urlencoded",
            "Authorization" : f"OAuth {super().__dir__()[0]}"
          }
      def request(self):
          r = requests.post(
            'https://graph.facebook.com/graphql',
            data = self.data(self.active),
            headers = self.headers
          )
          if 'error' in r.json():
             print(r.json()['error']['message'])
          else:
             if self.active == 'true':
                print('\n\033[92m[x]\033[0m Photo Guard Anda telah Aktif\n')
             else:
                print('\n\033[92m[x]\033[0m Photo Guard Anda telah Nonaktif\n')

b = '\033[34m'
w = '\033[0m'
banner = f'''
- creadby : Killer_Clown
- Fb      : Yudha Wahyu Pratama
- Ig      : yudhawahyu414
               
'''
par = optparse.OptionParser(
    usage = 'Cara: %prog --id arg --password arg --on/--off'
)
par.add_option(
    '--id',help='Email/No Fb Kamu',default=None,metavar='user@mail.ex'
)
par.add_option(
    '--password',help='Password Kamu',default=None,metavar='password'
)
par.add_option(
    '--on',help='Untuk Menyalakan Photo Guard',action='store_true'
)
par.add_option(
    '--off',help='Untuk Mematikan Photo Guard',action='store_true'
)
(arg,opt) = par.parse_args()

try:
     if arg.id != None or arg.password != None:
        print(banner)
        if arg.on:
           Active(arg.id,arg.password,active="true").request()
        elif arg.off:
           Active(arg.id,arg.password,active="false").request()
        else:
           par.print_help()
     else:     
        par.print_help()

except Exception as e:
     print(e)
except KeyboardInterrupt:
    exit()





