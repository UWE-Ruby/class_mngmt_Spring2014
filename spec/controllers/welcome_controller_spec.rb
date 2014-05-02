require 'spec_helper'

describe WelcomeController do

  describe "GET 'hello'" do
    it "returns http success" do
      get 'hello'
      response.should be_success
    end
  end

  describe "GET 'thanks'" do
    it "works as anticipated" do
      get :thanks

      expect(response).to be_success
      expect(response).to render_template('shared/thank_you')
      expect(response).not_to render_template('fakey/poo')
    end
  end

  describe "POST 'mailbox'" do
    it "returns HTTP success" do
      post :mailbox, { foo: "bar", baz: "bat" }

      expect(response).to be_success
    end
  end

end
