PGDMP         3            	    z         	   my_bd_ads    14.5    14.5     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394 	   my_bd_ads    DATABASE     f   CREATE DATABASE my_bd_ads WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE my_bd_ads;
                postgres    false            �            1259    16410 	   addresses    TABLE     W   CREATE TABLE public.addresses (
    id integer NOT NULL,
    address character(255)
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    24645    addresses_id_seq    SEQUENCE     �   ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �            1259    24688    adss    TABLE     �   CREATE TABLE public.adss (
    id integer NOT NULL,
    name character(100),
    author_id integer,
    price integer,
    description text,
    address_id integer,
    is_published boolean,
    category_id integer
);
    DROP TABLE public.adss;
       public         heap    postgres    false            �            1259    16398    author    TABLE     P   CREATE TABLE public.author (
    id integer NOT NULL,
    name character(60)
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    24644    author_id_seq    SEQUENCE     �   ALTER TABLE public.author ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    16437 
   categories    TABLE     T   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character(50)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    24647    categories_id_seq    SEQUENCE     �   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211                      0    16410 	   addresses 
   TABLE DATA           0   COPY public.addresses (id, address) FROM stdin;
    public          postgres    false    210                    0    24688    adss 
   TABLE DATA           n   COPY public.adss (id, name, author_id, price, description, address_id, is_published, category_id) FROM stdin;
    public          postgres    false    215   �                  0    16398    author 
   TABLE DATA           *   COPY public.author (id, name) FROM stdin;
    public          postgres    false    209   t'                 0    16437 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public          postgres    false    211   �'                  0    0    addresses_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);
          public          postgres    false    213                       0    0    author_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.author_id_seq', 1, false);
          public          postgres    false    212                       0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    214            m           2606    16414    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    210            q           2606    24694    adss adss_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.adss
    ADD CONSTRAINT adss_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.adss DROP CONSTRAINT adss_pkey;
       public            postgres    false    215            k           2606    16402    author author_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    209            o           2606    16441    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    211            s           2606    24700    adss address_fk    FK CONSTRAINT        ALTER TABLE ONLY public.adss
    ADD CONSTRAINT address_fk FOREIGN KEY (address_id) REFERENCES public.addresses(id) NOT VALID;
 9   ALTER TABLE ONLY public.adss DROP CONSTRAINT address_fk;
       public          postgres    false    215    3181    210            r           2606    24695    adss author_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.adss
    ADD CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES public.author(id) NOT VALID;
 8   ALTER TABLE ONLY public.adss DROP CONSTRAINT author_fk;
       public          postgres    false    209    3179    215            t           2606    24705    adss category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.adss
    ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) NOT VALID;
 :   ALTER TABLE ONLY public.adss DROP CONSTRAINT category_fk;
       public          postgres    false    3183    211    215               �   x��=
�@���)� �`��e<�&��U!X�&�`����ȗ���V,��;���Ǜ�8���5
����ાx C�d�m�{c���r#�;9�h�Z��r�F+�:�"F�B�!"���,�h�|��M�[9O���Y�[N�J�3�ԝ%4>�y�#WJ���i�1,�v�"78������d� ��ݒ�I'�x�$��02�kd����~��%ˑ�� ��X         i  x��Z�n�=�_Ѻ� �%)і���Kr�i	`ؗ @n"iY4$��cm��c{7�M�Ԑc�!�3��/�OH�W�=3��^�Y�^i8쮮z��U�[��,�.�$?ʻ�<�C'�[�|���Q���,��+�?�Fnk��Z�v�٬eo�l�Md�gNl([���%k�.���i�7FbQoø���M~���2?�'I��O��e�������WXU�����E�0@��.[���l4�������kyc����j�Q�b�o���(�,�g٥��Dϐ`����.Į(?����<�ZQ�e�r�E~&��.��ec��|c��{������a19�Ĵ^̒HrGF~p-s$_�O��?������>�z�1���b�,{˗b]���VQp�# �^�oO$>r�5����I"/pX!���R��0��p%�u�[XɃ�`�|Y�O�},�'x*�?��Ix����0H0�� � �����7�x1���c_�'��&Tp���=������T�}�?ŉ_�J �j{��.n�:��G������_t�s�����+�e<;�{���ԑE�t�K�#Z��� -<?k��t�~-{�"���3|sI�վ��;�nj,�� a~��)��ŵ=�V�ZY��@	����(<���U[u�^�E���ګGZ2gbf#N0�ß��Y�[�K��	�Q��sޮ����}�������F����s�����?��>��%V������P'�.4*S����`*H��T�� ���ɓ^ō��R>��'
%����DQ�C��嵳Tө���o��ܺ��<�����NM����Od�K)�(�����V�[�s[�S�;�7@�(�R���鑡'�\��卄�!��X؝�����rW��G,����?rLY�϶���;��+��EK{a��J�����F,�W+�-���*��L�� @��F3ئ�D�X�.�j�8oH�Rnr&�
�U�W��q�u�ޚ�"�G@<��;!�(m�-G_՝�^��B�D�%ꦐE�T�d���N�:�+"��Um�oԠ�e`�5)t����Qh�!���M4Gݫ)f��wJY�Ӑ *'���th����(�1K-�Wb2�J#���	��M�U������:�Mt�1�D�̻�<*[��NTbG��A'2�P���w�!Д�K���n�@�Gp�z�O�!7��X�o�t�����!L�b�)�������(Tə�w�5W*�FC!6'���Jt[�����%�g�i��s	Ʉ����SAd|+e�
1�����Ǽ�P�jn����s��C�ڡ����um�@�1
D	�մ"��}�._"ʇ�} ו�K�灲��5}�#�Kؕ%Ǭ;�|j�^2j��F�!K�^�*MML7$%XE�8�ˉ� �z@xK8S���ۗ/��)���t��X�2�+{���r�Z�<��=|����C�^��
)w?��SE��D�3Eqa2+���'O�оz<�Z�=_�PT]أIIs��A�öڒ���:���p��S�L�s�F<�S8���uΉ��x�a�
9�J�uj���Ȃïj�����r�	<g[M���:���yG�����n�L���VX[̵�8"�XK����� ��t�,06�i U��o�����4�}hv����T�sd<����IV׹�ڤ����J�~�:�42��aӝ���)��I�Ei�r�*P���Ȓଢ଼ �=�ט����R�ܸ��D��>�YN��k�19�>n�FB(��Ml�������J����5S���ꀈ$�ɗ.zrT,��k�T�T�(tcO��|o�J���0MyL�عB5�А���X�V��W�6��6GL~�� S��Y�l4Պ(�uK?9v]}:�橮9]��h�+e���'�	#��WXW�u@P�0O��ъ����ìo��$[L}�Yv�68$N,���N펥�~ͦ":�MrPw6��47�� �V�'T�?3QZ�fD�l%�T�`�v�%��l�u<q�`yeM�9I��|R=؈��a�l㬇nR���k�l�H�z��D8eO4\phG�UL`?�}�ʟ�d+�gbY���ĉH�����\��i�S��Ӊ�o2Bˠ�)x
 �tx�w�Z��^��̉I��-�A�u6gngJ���,�T�_2��8e�#�-�7m>}��۫�-��`u�t��TfI�4<�/�FeC�O��:Yei����K9�[hņ#��|f�%��5l�7��@������n�S��ԄK�f��u ��J��������҅l~�b���~�D���p��>��'=���{��N{J�D_��לM���ʉ��T�Xk��O�b��vgT(z/Ytb[aXUY�#?�o��)2�($�0�gߥaF��Z��7�3�X��� ��W�|�w/���c?4҃��g9�|j;g�f�#e�%�2����a�B����_4t�x��ʘ��+�u-�6���)�:u�C�Z���pS7Ax�OUKJ�m�"7c��Y-���> .��h���O9��wu������Wp��������;��چ��0��GX�Ջ�^9�6�CC"�j��(ڰ�]�&w���oX/�"�M�U�TÐ�����г����a�� �/ZM��N��X��c�k
To��w:|�`�=�m����aL�Z&�^vM�&l#�������j�:��Ԓ8���u��5�kj2D)��$?SPmN���?kPkt2�
 �Clc<��M�&��ˬ��H�W_Q�u��9�D\�q��pq��O-",6}�Z��/�4����_����N���S�iH�EX��L��%���G`��\�F|����/dC\U��g?ȓWx�.�ס���U��Z�F��LC+H���y@/Kx��=���>9g7ZB����?'��a�tX0w����
q;��^����A���2G���Q \��o�X/\k�:b��U�`�>�v˿p'��F�,��N�(�b� ����'��g�X���E銔JdyufBd�,�t��O�Uz6�vÊ�ܹ�W!y6�V�*u�;������믱C��"o +�H� L��"���Y��iQ\��d0��pզ�q1�My?<):��7�v����%-P���K6nܸ�oH��R          h   x����	�0���d�N x��aj7P���P(;��F�+$�|'=�Fă��l���FAƇh���U<�lV�D8Q��$H�axn?io�8^�J^]cThd��qI\�         f   x�3�0�¾�Mv\�ua�	�ˈ���[/6���d�^��ͤiT�2ἰ���@o�p��ͦ�� �m��{�v��d�ņ�= ��1z\\\ *V�     