

describe 'Ids dinamicos', :ids_dinamicos do
	
	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/access'
	end
	
	it 'cadastro' do 
	
		find('input[id$=UsernameInput]').set 'Thaua'
		find('input[id^=PasswordInput]').set '123456'
		find('a[id*=GetStartedButton]').click
		
		expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
		
	end

end