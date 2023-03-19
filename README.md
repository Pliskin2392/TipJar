# TipJar
Simple app showing how to implement a Tip jar with RevenueCat and SwiftUI

# Table of Contents
1. [Install RevenueCat package](#step1)
2. [Create In-App Purchases in App Store Connect](#step2)
3. [Configure project in RevenueCat](#step3)
4. [Configure App Key](#step4)
5. [Test application](#step5)

## Step 1 <a name="step1"></a>

1) Install **RevenueCat** package in your project

Go to **File** > **Add Packages** > **Search** for https://github.com/RevenueCat/purchases-ios.git

<img width="1095" alt="Pasted Graphic" src="https://user-images.githubusercontent.com/48497638/226206408-0d82d79c-d343-4abf-9dec-9872e256f851.png">

2) Select **RevenueCat** in the list 

<img width="672" alt="Package Product" src="https://user-images.githubusercontent.com/48497638/226206451-e4d81bd3-e5ff-4cd1-8776-d29054aedecd.png">

## Step 2 <a name="step2"></a>

1) Create project in **App Store Connect**

<img width="592" alt="image" src="https://user-images.githubusercontent.com/48497638/226207380-90140127-cc74-42ba-8441-365da415b866.png">

2) Create **In-App Purchases**

3) Go to **Features** > **In-App Purchases** and add a new one

<img width="694" alt="image" src="https://user-images.githubusercontent.com/48497638/226207589-3fa1d391-4f18-4126-ab84-5aa7f62745bc.png">

Once inside choose **Availability**, **Price**, **Localization** and very important **Review information** with an image and save it. Create as many Inn-App purchases as you want 

<img width="1158" alt="image" src="https://user-images.githubusercontent.com/48497638/226208193-512c2bb1-290f-4edf-b47e-8cc1b76c30ce.png">

**NOTE:** If your **In-App purchase** has the status of **Missing Metadata**, it means something is missing and this could prevent **RevenueCat** from getting it

4) Create an **App-Specific Shared Secret**

Go to **General** > **App Information** under **App-Specific Shared Secret** click on **Manage** 

<img width="1126" alt="image" src="https://user-images.githubusercontent.com/48497638/226208477-7d464c82-db0b-4448-bc69-8392030e36e3.png">

And then in **Generate**

<img width="693" alt="image" src="https://user-images.githubusercontent.com/48497638/226208500-01c60155-fe36-4f6a-b574-b3dc17395469.png">

This key will be used when we configure the **RevenueCat** project

## Step 3 <a name="step3"></a>

1) Create project in **RevenueCat**

<img width="303" alt="image" src="https://user-images.githubusercontent.com/48497638/226206697-9f2ca6f2-faac-4f4a-87f5-f30a043196c3.png">
<img width="392" alt="image" src="https://user-images.githubusercontent.com/48497638/226206729-86ba90c8-5ddc-4859-967d-711da8318639.png">

2) Select **App Store app**, App Bundle ID is the one you find in your Xcode project under **Signing & Capabilities** and then set the previously created secret key in your project from **App Store Connect**

<img width="981" alt="image" src="https://user-images.githubusercontent.com/48497638/226206990-d6bea518-9fa0-497c-b451-e83e2e519c84.png">

<img width="936" alt="image" src="https://user-images.githubusercontent.com/48497638/226208588-cc2da958-4f14-444c-b83b-b196b33d5e61.png">

3) Create **Products** 

Go to **Products** and create a new one

**Identifier** should be the same as the **Product ID** in the **App Store Connect**

<img width="943" alt="image" src="https://user-images.githubusercontent.com/48497638/226208889-17b058fb-3b37-483a-99f7-6cb722cd4e19.png">

Create a **Product** for each In-App purchase you have created 

<img width="944" alt="image" src="https://user-images.githubusercontent.com/48497638/226208986-a310ba66-9d84-43ed-bf54-4352408fb847.png">

4) Create **Offerings**

Identifier and description could be anything

<img width="592" alt="image" src="https://user-images.githubusercontent.com/48497638/226209106-ac34d144-0b42-4524-bd7f-4ce7cc9cfeb1.png">

Click on your new **Offering** and create a **New Package**

<img width="936" alt="image" src="https://user-images.githubusercontent.com/48497638/226209453-677c5f97-f1b7-4b34-8905-56f697db761c.png">

You can select a default identifier depending on the recurrence of your In-App purchase but in this case as we are creating a tip jar, I will put a custom identifier with the title of each In-App purchase

<img width="589" alt="image" src="https://user-images.githubusercontent.com/48497638/226210112-79ca22d0-c65f-4f2f-ae94-c024ef4c42fb.png">

After creating all the necessary **Packages**

<img width="940" alt="image" src="https://user-images.githubusercontent.com/48497638/226210280-e09c33f7-aac9-4f11-b526-5841ef2343e2.png">

You will need to assign your **Products** to each **Package**

Select a **Package** and click on **Attach** 

<img width="935" alt="image" src="https://user-images.githubusercontent.com/48497638/226210387-cbb14262-8d9e-4ae8-81f5-99591db5064f.png">

Select the corresponding **Product**

<img width="940" alt="image" src="https://user-images.githubusercontent.com/48497638/226210423-d94b3135-bb7e-44ef-8b33-b6d7a031dacc.png">

Now you will be able to see all the **Products** attached to your **Packages**

<img width="946" alt="image" src="https://user-images.githubusercontent.com/48497638/226210470-e42e64ec-371b-494e-9c43-f0eadfb2796d.png">

5) Create an **Entitlement**

<img width="593" alt="image" src="https://user-images.githubusercontent.com/48497638/226210542-0a046e08-86a2-4a70-9f3c-3b6f519ed0b8.png">

Click on your created **Entitlement**

<img width="930" alt="image" src="https://user-images.githubusercontent.com/48497638/226210570-f76fb3cd-4888-4f45-82a0-da61521e82d4.png">

And Attach all your **Products**

<img width="935" alt="image" src="https://user-images.githubusercontent.com/48497638/226210602-b628cb95-9ba7-414a-bac5-d555c6b37b93.png">

## Step 4 <a name="step4"></a>

Configure your **RevenueCat** public key in your **Xcode** project

Go to **API Keys** in **RevenueCat** and copy the **Public app-specific API keys**

<img width="931" alt="image" src="https://user-images.githubusercontent.com/48497638/226210828-3153e799-8569-448f-b5c7-cb9650872274.png">

And then paste that key into you app 

<img width="821" alt="image" src="https://user-images.githubusercontent.com/48497638/226212171-e62dec4f-1010-4af7-a3d3-2c2951dbfbc7.png">

## Step 5 <a name="step5"></a>

Testing your app

If you run your app, you should be able to see all your In-App Purchases that are in status **Ready to Submit** in the **App Store Connect**

<img width="377" alt="image" src="https://user-images.githubusercontent.com/48497638/226211075-5aa89ae3-c934-4bfb-b557-a059f12a2772.png">

And that is it, to test your In-App Purchases you have to create a Sandbox Tester in **App Store Connect** and toggle to Sandbox Data in **RevenueCat**

