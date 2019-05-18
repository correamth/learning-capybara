
describe 'Dynamic Control', :dc do
   
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end
    
    it 'quando habilitao campo' do

        # quando tem a propriedade disabled true o campo esta desabilitado
        # quando nao tem a propriedade disable o campo esta habilitado

       resultado = page.has_field? 'movie', disabled: true
       puts resultado

       click_button 'Habilita'

       resultado = page.has_field? 'movie', disabled: false
       puts resultado
    end

    after(:each) do
        sleep 3
    end

end