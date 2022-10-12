PGDMP          2            	    z         	   my_bd_ads    14.5    14.5 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16394 	   my_bd_ads    DATABASE     f   CREATE DATABASE my_bd_ads WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
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
            public          postgres    false    210            �            1259    24671    ads    TABLE     �   CREATE TABLE public.ads (
    id integer NOT NULL,
    name character(80),
    author_address_id integer,
    price integer,
    description text,
    is_published boolean
);
    DROP TABLE public.ads;
       public         heap    postgres    false            �            1259    16398    author    TABLE     P   CREATE TABLE public.author (
    id integer NOT NULL,
    name character(60)
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    16415    author_address    TABLE     o   CREATE TABLE public.author_address (
    id integer NOT NULL,
    author_id integer,
    address_id integer
);
 "   DROP TABLE public.author_address;
       public         heap    postgres    false            �            1259    24646    author_address_id_seq    SEQUENCE     �   ALTER TABLE public.author_address ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.author_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            �            1259    24644    author_id_seq    SEQUENCE     �   ALTER TABLE public.author ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
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
            public          postgres    false    212            �            1259    16442    categories_product    TABLE     x   CREATE TABLE public.categories_product (
    id integer NOT NULL,
    connection_id integer,
    category_id integer
);
 &   DROP TABLE public.categories_product;
       public         heap    postgres    false            �            1259    24648    categories_product_id_seq    SEQUENCE     �   ALTER TABLE public.categories_product ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213                      0    16410 	   addresses 
   TABLE DATA           0   COPY public.addresses (id, address) FROM stdin;
    public          postgres    false    210   �(                 0    24671    ads 
   TABLE DATA           \   COPY public.ads (id, name, author_address_id, price, description, is_published) FROM stdin;
    public          postgres    false    219   �)                 0    16398    author 
   TABLE DATA           *   COPY public.author (id, name) FROM stdin;
    public          postgres    false    209   �5                 0    16415    author_address 
   TABLE DATA           C   COPY public.author_address (id, author_id, address_id) FROM stdin;
    public          postgres    false    211   O6                 0    16437 
   categories 
   TABLE DATA           .   COPY public.categories (id, name) FROM stdin;
    public          postgres    false    212   �6                 0    16442    categories_product 
   TABLE DATA           L   COPY public.categories_product (id, connection_id, category_id) FROM stdin;
    public          postgres    false    213   7       !           0    0    addresses_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);
          public          postgres    false    215            "           0    0    author_address_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.author_address_id_seq', 1, false);
          public          postgres    false    216            #           0    0    author_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.author_id_seq', 1, false);
          public          postgres    false    214            $           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    217            %           0    0    categories_product_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_product_id_seq', 1, false);
          public          postgres    false    218            w           2606    16414    addresses addresses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    210                       2606    24677    ads ads_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_pkey;
       public            postgres    false    219            y           2606    16419 "   author_address author_address_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.author_address
    ADD CONSTRAINT author_address_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.author_address DROP CONSTRAINT author_address_pkey;
       public            postgres    false    211            u           2606    16402    author author_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    209            {           2606    16441    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    212            }           2606    16446 *   categories_product categories_product_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.categories_product
    ADD CONSTRAINT categories_product_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.categories_product DROP CONSTRAINT categories_product_pkey;
       public            postgres    false    213            �           2606    16462    author_address address_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.author_address
    ADD CONSTRAINT address_fk FOREIGN KEY (address_id) REFERENCES public.addresses(id) NOT VALID;
 C   ALTER TABLE ONLY public.author_address DROP CONSTRAINT address_fk;
       public          postgres    false    3191    210    211            �           2606    24683    categories_product ads_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_product
    ADD CONSTRAINT ads_fk FOREIGN KEY (connection_id) REFERENCES public.ads(id) NOT VALID;
 C   ALTER TABLE ONLY public.categories_product DROP CONSTRAINT ads_fk;
       public          postgres    false    3199    213    219            �           2606    24678    ads author_address_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT author_address_fk FOREIGN KEY (author_address_id) REFERENCES public.author_address(id) NOT VALID;
 ?   ALTER TABLE ONLY public.ads DROP CONSTRAINT author_address_fk;
       public          postgres    false    3193    219    211            �           2606    16457    author_address author_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.author_address
    ADD CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES public.author(id) NOT VALID;
 B   ALTER TABLE ONLY public.author_address DROP CONSTRAINT author_fk;
       public          postgres    false    3189    211    209            �           2606    16472    categories_product category_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_product
    ADD CONSTRAINT category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) NOT VALID;
 H   ALTER TABLE ONLY public.categories_product DROP CONSTRAINT category_fk;
       public          postgres    false    212    3195    213               �   x��=
�@���)� �`��e<�&��U!X�&�`����ȗ���V,��;���Ǜ�8���5
����ાx C�d�m�{c���r#�;9�h�Z��r�F+�:�"F�B�!"���,�h�|��M�[9O���Y�[N�J�3�ԝ%4>�y�#WJ���i�1,�v�"78������d� ��ݒ�I'�x�$��02�kd����~��%ˑ�� ��X         ?  x��Z�r�^����A���d˘���I��&!�TQ�I�*;K�X�*<!�`f�J��[ݨ%�Z���
y�y���;����A�Pe#���=�;�9םF�]gWY���l�M���|���A6i�=�%Y�����l����4��v��]�GY��r�'�UO�����M��r�򍉜>��u�Q�.?ɢl���8[�Y��ɎC�h��X���V/�l�� �%^�lMU#9h��`������<��}>��(K��Y(e�2�]��T�'LD3����T����`,{-���n��L��\�D�˦T��|c��gO9@�p�Lt��AD�E,�O�2��uH.�O[���ꊥZ���S�J,=�C��r���t����6�AOl��HPC1�(��H�_�+1�X=�a	�J��<���<Lŀ.��d�<�`��ɗE����	�l�(z�X�]� <���,��e1Q�Bn���<fCy7;��i� �=u�X>y*�����>e_�&0}���n���m�$�	,��%�k�(/1C��
�CA6�aK	1ԱxY����h�7���C�	#o�/�(��v�?a!h�!�l�W+[X%?+��Kb�EJ���)B�eK�JO@�Q
�5.��sḱU,�|EG�Bt�l��Pڭ��6>h���o~�����7��RV�����ǿ{����Ǐl�1=5�k�Xa'o���<�c'&����L��BѠ���u/K]�'3��F�� k�B�K#|(�su�,�M��.��q�흝;7��K��nCv-*+�e�+)W(\�Zp�m��pv�j��T�
%Mʁ��81_|��!�ZVĬ�0a	u���P={8�����4�?��������β��	������TJ%"�^#�8������F:�ی񰻈E�0ږ��@/�څTK"�\!��A4o8�"%s��&�vK<i͵�	|	� 9Cl�\�2٤L(M���� 	��B��0��lӤ1A�x�U��T�>�^i>+2��9.�gkFH˘�	��>%ս��	�U:�3�(�ʪB].���B�"�dsƜ�q*"�Dre�� la��~>�}'B�TA�v�;�JT���Q9���D	N$����j#n+�w�Z��R|�`G��#�cr����!���6�E��BN�=H��ih�H��5HTE�Sx$_8_��AQ��F{�#pc�=�*
�z҂��x��&:�G�a�[ ��J�b嵂|H��z�3�!*�E� Ғ�<�9�m}ycw��~E>1��f��)���(?W�֖ĵV��"�k�f�k�鎾Vd�f����D���J"���ܰ��D�c�jΛ�X@�y�x/Y��Z��l�x��I'��W�'���{�V����^,VK�F��?\�~�e���R���96� 9G?Ǟ!6�*�W+��~|��.X�&n�MP.-�5�~b�� �o��j���>o�VK��P{]f�=Z<﶑�i�}�G,�}ȣ�Gq�E�:Dj�"?��4��r��ґ��[��V�p%2��9tg���.8K-3��`��_��~[j���"����~����~���U
��\��@=�/Fp��h�\Xؕun����a9qg||s.g�����i�-�3�Aj�yǋbD������Y�R�����Nt�"�k��6�����3/�%1ڶSG���p���ed?�!��d���
T�K�|��<`�1"%�;Bs������ܡq��7xoެӜ]G�.���/�k���C�˵��+�o)ڡUjj{�5:`f�*&9�|FSK/��js|TM�F�kF>�}���ڂ��Uk�h`�sbș��mиf�hX[���Yc�>:�qچ0�qS���x�1K���GE���"[���L�n*�#mS���o1V��X���Rg^������?i��[��t��CR�=֡�2)�|wW�P{N�B3��a�7l����X= �16�Mg3ھ�'��2�
<#Y��x�t�ń͘#H�FM�Z���nWG��+g���;�L�Г����	�7����6�)�;r{m�)�^wjy䣪u�g�'=!�E��\�-rB�R�Ghq��?��V�_ϒS�S��+��9��U	��6��\�d2#N�E�f��t�H�\'�4ND��`Ev|��)����!�o\{~E�a ��ɎG��o�h��G ��8�W�t�P��#�|�X��xb_DҘT�b$T�괐eW^[��p��j
��m{a�F�!l�7i�>:�?�'QGt�6$�K�N��4+c����jK7����B:g!�Ղ���g�s6�PJ�����@g�MO�G>��Ð
=����=�}ݨj`����ZB?[�t����II�=kйQdI;�gX����|(o"f�W#�3^4w���*�~�ݯ�q9�TO�>�H�[��|��-s��v#?SQ�RK�������\�i��y`D8�ͅ � L(��)v�}KgU���2�Ye(atӌi3 �j��)���bm)����4�~�s�sbz��������ZC���k�	��[��CN;}oz���.�?�U76s�����5�����	��j�a�ȿ��[��Fg���8�n$}s��>��X�2M�֔p`����E��5���Lo����:m�ϤI_b!h�9(F館Z
����W4�j$�m��� �6ꇈ��.�F�POka�=��k��T�w�-��*���c��z���!�^�דup�\.�'���hEL��JY�%��rt���!�\舷�P�p�1I\Du��Yq�!YoaH��k��ou�]�Gt��w�����S��PK�-�=S�h��P	U`���U��N6|����r nY�˳�ɓ7x��[�q��ʟZQ��-;�)�ʪ�*\��z�������"��2��5��D/�o�����KF��'0�dC�ER����M9N�j���&���)V����O��&�R!�N\��3�[}Ó8�YY�d���g/6�V�����B�uq۷�\�>�����X��aU-�g�ݮ�b6u�}��)���գZ1;b�\�_sľ���Ԣ�󥌗W��$1g%�f�\�z�l\�,�����WE�>�~�i&�#m ��&!��]���h����Qv�u�֭"Y{�         h   x����	�0���d�N x��aj7P���P(;��F�+$�|'=�Fă��l���FAƇh���U<�lV�D8Q��$H�axn?io�8^�J^]cThd��qI\�         .   x���	   ��n1B�a3�_�20An>�I��Ќ��x�� ���         f   x�3�0�¾�Mv\�ua�	�ˈ���[/6���d�^��ͤiT�2ἰ���@o�p��ͦ�� �m��{�v��d�ņ�= ��1z\\\ *V�         W   x����@��T1�x��%�ױLH0l�(*�FO��`���.�����z��ԃ膋�j�{G��D����n��r�i�Y����h~=     