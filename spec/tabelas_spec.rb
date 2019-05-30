

describe 'Tabelas', :table do 

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/tables'
	end
	
	
	it 'deve exibir o salario do tony stark na lista' do
		trs = all('table tbody tr')
		stark = trs.detect { |tr| tr.text.include?('Robert Downey Jr') }
		expect(stark.text).to include '10.000.000'
	end
	
	it 'deve exibir o salario do vin diesel' do
		diesel = find('tbody tr', text: '@vindiesel')
		expect(diesel).to have_content '10.000.000'
		
	end
	
	it 'deve exibir o filme velozes' do
		diesel = find('tbody tr', text: '@vindiesel')
		movie = diesel.all('td')[2].text
		expect(movie).to eql 'Velozes e Furiosos'
	end

	it 'deve exibir o insta do Chris Evans' do
		
		evans = find('table tbody tr', text:'Chris Evans')
		insta = evans.all('td')[4].text
		expect(insta).to eql '@teamcevans'
	end
	
	it 'Deve selecionar o Chris Prat para remoção' do
	
		pratt = find('table tbody tr', text:'Chris Pratt')
		pratt.find('a', text:'delete').click
		
		msg = page.driver.browser.switch_to.alert.text
		expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
		
	end
	
	it 'Deve selecionar o Chris Prat para edição' do
	
		pratt = find('table tbody tr', text:'Chris Pratt')
		pratt.find('a', text:'edit').click
		
		msg = page.driver.browser.switch_to.alert.text
		expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
		
	end
	
	
end