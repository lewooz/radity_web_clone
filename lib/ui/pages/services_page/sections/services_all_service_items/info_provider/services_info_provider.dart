import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:radity_website_clone/ui/pages/services_page/sections/services_all_service_items/model/service_model.dart';


class Services {
 final List<ServiceModel> modelList = [
    ServiceModel(
        serviceName: "Frontend Development",
        serviceInfo: "Vue.js, React.js to pixel perfect responsive layouts. We build amazing Frontend interfaces that are responsive, fast and well integrated with backend services.",
        serviceLink: "",
        serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/63/d5/63d52d62-47d3-48c8-872f-7647707e12bb/frontend-development.jpg",
        serviceSubModelList: [
          ServiceSubModel(
              "Vue.js Development",
              "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/1b/61/1b61a8e5-c749-4a22-b76b-79ee2942b360/vue-js-development.svg"
          ),
          ServiceSubModel(
              "React Development",
              "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c1/e3/c1e3b7d0-472e-417b-8161-05c4be98d1ab/react-development-icon.svg"
          )
        ]
    ),
   ServiceModel(
       serviceName: "Backend Development",
       serviceInfo: "In 2019, 60% of your users are multi-device users. To get the best out of the UX, your web application should be fast-loading.",
       serviceBackgroundImage: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/ed/ef/edef3d44-5956-4cad-bea1-d19b86f7238a/backend-development.jpg',
       serviceSubModelList: [
         ServiceSubModel(
             ".NET Core Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/d8/3e/d83efd6d-1324-4caa-aad6-014bb6204957/net-core-development.svg"
         ),
         ServiceSubModel(
             "Python Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/61/f7/61f7b796-c885-4f5a-b143-1bc7f7628f57/phyton-development.svg"
         ),
         ServiceSubModel(
             "Django Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/6f/02/6f02d76d-8c45-44d6-8f1b-bf7fb13c9f50/django-icon.svg"
         ),
         ServiceSubModel(
             "PHP Laravel Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/d8/b2/d8b26eec-2c1d-44c8-93b9-f5b8011719c4/php-icon.svg"
         )
       ],
   ),
   ServiceModel(
       serviceName: "UX & UI Design",
       serviceInfo: "We are passionate about creating effective and efficient human-computer interactions via universal design principles, and utilisation of best practices.",
       serviceBackgroundImage: 'https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/34/31/343158da-433d-4a2e-92d9-9cc1f9d2b60a/ux-ui-design.jpg',
       serviceSubModelList: [
         ServiceSubModel(
             "UX & UI Design",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/3b/4a/3b4a8839-e481-4f8f-a84a-b91afb5ba124/ui-ux.svg"
         ),
       ]
   ),
   ServiceModel(
       serviceName: "Website & Content Management",
       serviceInfo: "We create Content Management Systems (CMS) that are user-experience friendly, hold unique and modern design and ensured with top security. ",
       serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/dd/b2/ddb22db8-0928-45e9-a97d-a9155f3c3f96/website-content-management.jpg",
       serviceSubModelList: [
         ServiceSubModel(
             "Wordpress Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c9/ef/c9ef9fbe-394a-4c43-9fd3-bf88d4a87827/wordpress-logo.svg"
         ),
         ServiceSubModel(
             "Django CMS Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c6/52/c65278b5-08da-40aa-9d63-b193f3710a97/django-cms-icon.svg"
         ),
       ]
   ),
   ServiceModel(
       serviceName: "Mobile App Development",
       serviceInfo: "In 2019, 60% of your users are multi-device users. To get best out of the UX, your web application should be fast-loading.\n\nLet's build your iOS and Android mobile app together.",
       serviceLink: "",
       serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/76/1b/761b4b36-b02f-4263-9048-44c1bf2b1fbf/mobile-application-development.jpg",
       serviceSubModelList: [
         ServiceSubModel(
             "React Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c1/e3/c1e3b7d0-472e-417b-8161-05c4be98d1ab/react-development-icon.svg"
         ),
         ServiceSubModel(
             "Flutter Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/30/23/30235bfc-d3df-4f27-875f-9f3afc3a7e77/flutterio-icon.svg"
         ),
         ServiceSubModel(
             "iOS & Android",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/9e/00/9e00803a-936c-4c2f-b735-19949c361704/andro-os.svg"
         ),
       ]
   ),
   ServiceModel(
       serviceName: "Dedicated Developers",
       serviceInfo: "Do you have your inhouse Development team and want to complement it with experienced Developers or Designers? Radity dedicated Developer offering gives you exactly that. Right skills at the right time at the right budget",
       serviceLink: "",
       serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/4f/c0/4fc057f2-1574-40f6-bc89-3230cade7fdf/dedicated-developers.jpg",
       serviceSubModelList: [
         ServiceSubModel(
             "React Developer",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/c1/e3/c1e3b7d0-472e-417b-8161-05c4be98d1ab/react-development-icon.svg"
         ),
         ServiceSubModel(
             "Mobile App Developer",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/45/28/4528e946-6fe0-4ea7-bc6e-7bfa3e6c07df/mobile-apps.svg"
         ),
         ServiceSubModel(
             "Vue.js Developer",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/1b/61/1b61a8e5-c749-4a22-b76b-79ee2942b360/vue-js-development.svg"
         ),
         ServiceSubModel(
             "Django Developer",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/6f/02/6f02d76d-8c45-44d6-8f1b-bf7fb13c9f50/django-icon.svg"
         ),
       ]
   ),
   ServiceModel(
       serviceName: "Blockchain Development",
       serviceInfo: "Beyond cryptocurrencies. We build decentralized solutions. Combining our Security and Blockchain expertise we can help with your securitization, exchanges, wallet or private Blockchain projects.",
       serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/06/49/06496028-75be-479d-b6ee-3ed335671f9e/blockchain-development.jpg",
       serviceSubModelList: [
         ServiceSubModel(
             "Blockchain Development",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/05/90/0590e83f-082f-4e21-a438-25f4834dad64/blockchain.svg"
         ),
       ]
   ),
   ServiceModel(
       serviceName: "Cloud Solutions",
       serviceInfo: "Lost among the options available at AWS, Azure or Google Cloud? Do you have concerns about Data Confidentiality, CID or Security? Our Cloud offering is complete; from Strategy to Application Hosting with a full suite of expertise including DevOps, Security, Integration and Performance.",
       serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/54/da/54da9353-6f04-47d7-8e32-b340c43b059f/cloud-solutions.jpg",
       serviceSubModelList: [
         ServiceSubModel(
             "Microsoft Azure",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/95/98/959854aa-0f83-4afd-a855-fef03733d0a4/azure-icon.svg"
         ),
       ]
   ),
   ServiceModel(
       serviceName: "DevOps",
       serviceInfo: "We help you run your applications on any infrastructure and optimize your build, deploy, test, run cycles. Get the best out of your Development by optimizing your Development and Operations cycle with Radity DevOps services.",
       serviceBackgroundImage: "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/8b/7e/8b7e88d0-a54a-4d30-b8ab-23265d711659/devops.jpg",
       serviceSubModelList: [
         ServiceSubModel(
             "DevOps",
             "https://raditycmswebsite-live-5f5ab2ec57ec4907b-b52c0bb.divio-media.net/filer_public/60/ec/60ecdd4f-61eb-4b37-a85c-3ab4df2f1329/devops-icon-2.svg"
         ),
       ]
   ),


 ];
}

final ServicesInfoProvider = Provider((_) => Services());
