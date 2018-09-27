require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email: "test@test.com", password: "testtest") }
  let(:test_user) { User.create!(email: "test@gmail.com", password: "12345678")}

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end
      it 'loads correct user details' do
        get :show, params: { id: user.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'when the wrong user is logged in' do
      before do
        sign_in test_user
      end
      it 'redirects user to homepage' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to(root_path)
      end
    end
  end

end
