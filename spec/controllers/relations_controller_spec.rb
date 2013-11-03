require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RelationsController do
=begin
  # This should return the minimal set of attributes required to create a valid
  # Relation. As you add validations to Relation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RelationsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all relations as @relations" do
      relation = Relation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:relations).should eq([relation])
    end
  end

  describe "GET show" do
    it "assigns the requested relation as @relation" do
      relation = Relation.create! valid_attributes
      get :show, {:id => relation.to_param}, valid_session
      assigns(:relation).should eq(relation)
    end
  end

  describe "GET new" do
    it "assigns a new relation as @relation" do
      get :new, {}, valid_session
      assigns(:relation).should be_a_new(Relation)
    end
  end

  describe "GET edit" do
    it "assigns the requested relation as @relation" do
      relation = Relation.create! valid_attributes
      get :edit, {:id => relation.to_param}, valid_session
      assigns(:relation).should eq(relation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Relation" do
        expect {
          post :create, {:relation => valid_attributes}, valid_session
        }.to change(Relation, :count).by(1)
      end

      it "assigns a newly created relation as @relation" do
        post :create, {:relation => valid_attributes}, valid_session
        assigns(:relation).should be_a(Relation)
        assigns(:relation).should be_persisted
      end

      it "redirects to the created relation" do
        post :create, {:relation => valid_attributes}, valid_session
        response.should redirect_to(Relation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved relation as @relation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Relation.any_instance.stub(:save).and_return(false)
        post :create, {:relation => {}}, valid_session
        assigns(:relation).should be_a_new(Relation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Relation.any_instance.stub(:save).and_return(false)
        post :create, {:relation => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested relation" do
        relation = Relation.create! valid_attributes
        # Assuming there are no other relations in the database, this
        # specifies that the Relation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Relation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => relation.to_param, :relation => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested relation as @relation" do
        relation = Relation.create! valid_attributes
        put :update, {:id => relation.to_param, :relation => valid_attributes}, valid_session
        assigns(:relation).should eq(relation)
      end

      it "redirects to the relation" do
        relation = Relation.create! valid_attributes
        put :update, {:id => relation.to_param, :relation => valid_attributes}, valid_session
        response.should redirect_to(relation)
      end
    end

    describe "with invalid params" do
      it "assigns the relation as @relation" do
        relation = Relation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Relation.any_instance.stub(:save).and_return(false)
        put :update, {:id => relation.to_param, :relation => {}}, valid_session
        assigns(:relation).should eq(relation)
      end

      it "re-renders the 'edit' template" do
        relation = Relation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Relation.any_instance.stub(:save).and_return(false)
        put :update, {:id => relation.to_param, :relation => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested relation" do
      relation = Relation.create! valid_attributes
      expect {
        delete :destroy, {:id => relation.to_param}, valid_session
      }.to change(Relation, :count).by(-1)
    end

    it "redirects to the relations list" do
      relation = Relation.create! valid_attributes
      delete :destroy, {:id => relation.to_param}, valid_session
      response.should redirect_to(relations_url)
    end
  end
=end
end
