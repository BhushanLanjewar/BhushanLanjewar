PGDMP      /                |            online_shoping    16.2    16.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33231    online_shoping    DATABASE     �   CREATE DATABASE online_shoping WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE online_shoping;
                postgres    false            �            1259    33352    customer_copy    TABLE     �   CREATE TABLE public.customer_copy (
    customer_name character varying(150),
    age integer,
    phone_number character varying(20),
    email character varying(100),
    address character varying(255),
    city character varying(100)
);
 !   DROP TABLE public.customer_copy;
       public         heap    postgres    false            �            1259    33304 	   customers    TABLE     T  CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    customer_name character varying(150),
    age integer,
    email character varying(100),
    phone_number character varying(20),
    address character varying(255),
    city character varying(100),
    gender character varying(10),
    country character varying(100)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    33324    orders    TABLE     :  CREATE TABLE public.orders (
    order_id integer NOT NULL,
    product_id integer,
    order_date character varying(50),
    status character varying(50),
    shipping_address character varying(255),
    total_amount integer,
    payment_method character varying(50),
    delivery_status character varying(50)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    33311    products    TABLE     G  CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(255),
    category character varying(100),
    price integer,
    description character varying(1000),
    brand character varying(100),
    stock_quantity integer,
    availability character varying(50),
    cust_id integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    33335    reviews    TABLE       CREATE TABLE public.reviews (
    review_id integer NOT NULL,
    product_id integer,
    customer_id integer,
    rating integer,
    review_text character varying(1000),
    review_date character varying(50),
    helpful_count integer,
    verified_purchase character varying(10)
);
    DROP TABLE public.reviews;
       public         heap    postgres    false            �          0    33352    customer_copy 
   TABLE DATA           _   COPY public.customer_copy (customer_name, age, phone_number, email, address, city) FROM stdin;
    public          postgres    false    219   �       �          0    33304 	   customers 
   TABLE DATA           y   COPY public.customers (customer_id, customer_name, age, email, phone_number, address, city, gender, country) FROM stdin;
    public          postgres    false    215   �#       �          0    33324    orders 
   TABLE DATA           �   COPY public.orders (order_id, product_id, order_date, status, shipping_address, total_amount, payment_method, delivery_status) FROM stdin;
    public          postgres    false    217   �0       �          0    33311    products 
   TABLE DATA           �   COPY public.products (product_id, product_name, category, price, description, brand, stock_quantity, availability, cust_id) FROM stdin;
    public          postgres    false    216   m9       �          0    33335    reviews 
   TABLE DATA           �   COPY public.reviews (review_id, product_id, customer_id, rating, review_text, review_date, helpful_count, verified_purchase) FROM stdin;
    public          postgres    false    218   �I       `           2606    33310    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    215            d           2606    33328    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    217            b           2606    33317    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    216            f           2606    33341    reviews reviews_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (review_id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    218            h           2606    33329    orders orders_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_product_id_fkey;
       public          postgres    false    216    217    4706            g           2606    33318    products products_cust_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_cust_id_fkey FOREIGN KEY (cust_id) REFERENCES public.customers(customer_id);
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT products_cust_id_fkey;
       public          postgres    false    215    4704    216            i           2606    33347     reviews reviews_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 J   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_customer_id_fkey;
       public          postgres    false    4704    218    215            j           2606    33342    reviews reviews_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 I   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_product_id_fkey;
       public          postgres    false    218    4706    216            �   �  x���n�8�����X�%ˇ�ͩI�Nl�]�-cJ$�i��;#Qv(�i�]`/��(P���监oTV��I|B�Q<�$��l�8!� �k��?Y�$y�����L��&_�3���mp�
N�sQg$J�b>M��(����B�/�_��,UEO���
nE�1.���R��$�HkF�V[�	g��2ǐ�H�F���/��T���d2�� �.7&�p��NM�ާ&�jWժ������Eg'Q���U�5�F,�$����2��3�WO�`b��������Q��F5�AZ�9_��&$[s�C�s^�����J&'D�m�K� ���͜%1=e�a�{V@!�B_���!���J�	�� o��hD5jX7�p�D]]1܅�PL�B�y�\yF�S�XqN0o�i�,��P�&%���9���q^�hѸC�AIs�ff.ˀǺQN%<�/���D�#N	�t�If��IN�#� �¹�*9�&f�sHU��"J��rްtw��ك�:�3j�%�qm�0J��XV�'(T��]r8�Դ۳Pr�Tq2{[�O%+RQ�
<���be*����#��v�zR�]��U�犭8Ԓ��֥����Ql:B�G²{�dP�8��*k� �d�{������3�M�f�<hԮ��+��kpȞ�/Ǿ�r0��^�J��!0������n�U�֏���R�;V���b��%��ǥ��	%��qW�{��w�sH��#��F3�N9����@�*X����ls�$������:Sp/�\��w�q�9x��[ы���ɹ��&����J!�$��f�Q+�N��y`U/��\�I��	�<5}�5b(Q����/����.e�R�+ l�0= Q7Z���3&k�V�K�&�I�Evr�T;Q�G;�L���vY�L4̰�z���.t ���n�yp���y]��5�+��'*-�e:%4-dn���"�{Ȑ �+�����V2�*F�E��(��-��HQ
a�ʁ5�_B	��L�k^ %��Y��7��b�̬dK_�M���#akS���-h��$�H���V�4J@��`t�f�
�R<��]�&��n�W%Ky����lP�m&C<�����cHo�G48��Ewՠ��A���A��Mo��4E�8�'��l-��b�F�>`���-B&�%+���1LQ�50�����\�?�{�b���C#��.�:��
nd���&d؅�ߦ�#�΀-�n�-�-���6��no�zKh+�6G�V�j&?����Y��� �\�U)࣮�@�Al�cӪ�oD+L���VH����p�^?`�F���x:�͌ۮ�}�j��Ѻ&死6s0t������s+>����-Zr2gE�-m�L��P�Dm!�\�5G���7��mw+E�\�EWT��������-�NM�h_���$6p9�>8�O='9-��5:�]梧��P=/� V�}����簸����ǁOۏ<n|��u��>&��|S@݋E�5����wx���v��]gDI��M���n�+h<XŹ����_B�8�P�Wl5��.A-~���O�+����{�4��8���0���n�X j��=�:\b"�0���$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�$�I|����}���{�Ax�x�x�x�x�x�x�x�x�x��K$�+��o���      �   �  x����r�8���S��"����'���I�������VbL�.���<�6H m٦��
�Ѝ_͆I��z[y�jA|�?��Z�K|绻R��zG(O�89I�<������'���]7�䚗��{y�`�#����ݖ��|�����d�<KO�8:	���o�Wu�VQ���;9�9���/Br]��\���n[W$��n��]�G�q|�&���wQ��#ηŊoj5�����w��a�����d�(�N`��J`���B��#����`Bj�D����"&_��,��{���I�-;&�3�N�f��l1����U�}��)<��0�"!��n[p"w�1���C�15 �'�	��{�\�y3�^�|-J�?��7�Z�E
�܉f�t��$��=�N�L��f��4���Ym�3����j�?�;^-2�GY��
��ǲn`KI�w�]�1=Ma��$�_$��v9��B�=�����(9�����E��OJ䮯}�z&�'	x������q�w�,y;��Z|/V��b���5�R4���0;����3T�$��hS9�u+����`RJ�i	�	*w)��%����4]R�IQ�^��i]Pf]׍ ,��s������lt��|u�v/�i����qACr�maE��ńlrĉ�O��߂�߁����Z��D���{Wf�~��R���;�S�5zW.ڕq�?�m+�:��o��Y��	�6��M�~������~w�W�]��n���uYЄ������Y��b����BR�^�ѽ/�!���c��M�}�߶z%���Rr%��R4���$LI�4[��gJ��~s��MYw�Pr�lD��f���y� ��˞�j0�L���D��E���	|E4%̱]�|���e[��z
�J����}�k-q�(�ϼ5�_>���, �j��>�F.#&��;�z�W�$�v_
�u�ڡ�C���`p~w�ݻ� !lP����|�e�1�;�b�މ
��v�~Uo������F�Y)���l��f���>J���T7�qyq/������Â��M��x2�3�T['0�Јa'"xX�[��j$��M����=Qm�W���ߘ	��ox� {]���]�w�~	��m��헝Pn�9N�`���}���'�j�����~@?�����ߨ��=��]��b���C#�T0܅�{��`��+^����L�˾�`ˌ��
4��WЖm'�Ǎ����Y�	���o������[�o,Wp
E�y�k�k%����g�jJCʭ6���߈��+x�w�oe\a�o�#[����?nK����{��eˋް��۲�e!�&I���S��ƠW��oG�z��|��KQ�<JՂv��v�W�}�+��X����W!���`��ĥ����i?��
(i�����jp(UL׬�(;��,1�^��_�7NB^e���:[
�|�.�ӆ���XZ�T|�G ^}��4O'Qb臆��T8��>ħ��Q!$D�s�#h��c���4�+��A�.yU�)��@&e��dR%c�	xmU|}�8��ʞ"
�u!�s41d|C�a��2�c}f8/!�ʀ]�m%�?��*u�B�1�)���Z��?/�C��Z�d�͙H����c�rL-!Q=]�[/Ř���Y�r��?��Jv���p�ZN��(��t��&a�5}ϡ��-�R�(�)�ѵ�TC�!i{K3�)I����)D�ޞ�@o��/PޖMKφ$! ���Z�~��p���DyS5��D!� �\�m�}/�ìs{�4[��Qm�Q�D�gGx�'ġ�12�qP��i���!~�(đ
,�:����C�$c o��s� ��C�� cg�*μ��~�U*��M� �:�<�Y'��qf�G����x��fq�˘F��r0��y�U�CxQ���s�^T�P+��#v�9p���0C"�0]F����7���Q$��3*�8��{�{��)�Ȅ��H�܅f���S$�	7��n�z����������GV�y�J3�N0�t�7����s��s�v�6�Lǜ^�M�y���8�$�H�1��m�CG�����4x�ڌ��gE�~����i�̼R%);>��J,Uڑ�:��o�ͯd�:�H���f^ȇ#���2�Ez]�I�6���@�i:/�K�i�\>NOs�T���iszFqusd����M�гW6N�",���=����F�,A�M��Y�"��г̭lD�r<�T��h�X=���S�zΜ�� �y�"�#����*�c\��=O����<EO���KAGF�Mu��D�A�����~@Q��\.an�T�9B<-UtN�OL�� v-�@�4H�k��s�8j:\�	2)U�z�WH����P}ˇ��Cޮ��P�%��-:W��a�����(�i�:��[՜Ni�'���)��DT;��k5�NY�\J�SFQ�T�:eKX�,���)�ބp�,F�S��=���HLm|��3�T�;e?q�c����NY���n�a�VM��R<I��{�ЄU�{��U���R�����d�=Ĩ3Ih��K��C��Ҁ�!n]I�|�VQ�W��W�4�GX%�	�G8�%�#ǵ�	�G�U&�b�Ɇ��y���{�ऩ=�)9b�1�N#���%'M�1B�I�{�[l� �U����M��X����c�r��c�5'C�1f�����d�{��4���}�����4�'�(�	r%J|�P�2�����$�'h�'��	B�i ����=�)7)pOW�4���զ�Ͻ╜,xO��&����>ijO��O6��5(�)rJ|�P�2���֡F��ЊP�3�(M�V�I�{�S|R��9.;YԞ!�Fp��JOxϜ�����'��s��E�9Fj
�9r-jJ�9BIJ�{�[�� ��U�4���Q��s�B�d��������O=����%�=����ָ�Y�˭�)jgA���� F���Y�`����)BeH�&C�6��Y�c��~�_\R߰�+�_��E��o����z5���mh�����64q-��64u�yjg4C�S��bj�:c��jpg���R��aḥvC���h?�dc<c����6�3���%�
�KPtUa;c�?0OU�3vԧ�TUE���ٲ
����/���]�5u�v%���ʽ�*h��PeT<�N�@j�{�����a�w�Bxӹ�*�s����G��p���K��#�'��g(C4�,��6��~�\J5�G	�*b�R1U�eȯ/G��r�z:�{��������� ��8�      �   �  x����r7�����H�h�^��u\��Z9��ތű4j�������2��Q�J��3��>�uRH�Z�m�������;!5��aln��4������^�����������S���e7�����ퟞ��/�P����ml���^������MJ
ٶ�{�����~x|�W$�I\n���_	�C�G��^�/huw��GE�_h����U����Zh�� �5��a����<l2.�oVc����Ic`�n����^�f�u7}��rp��s+,+�$���_u�K�6�q;=?+~[��o��(8�X�q��|���n�W�B`��z�d���g]���W�w|�����H��J"�dH���jn�o����"z�w����<*��:i��8 �m.��iz�������v�� HT4��$�Ҿκ�C(>�̲�6�� �i=H���Jb!J���^�S,	�y�y�2ӄ��Ւ�$${�C4�3�oS�������u�7�P��ph!�s8&�0d�?�n���l�n�;-iP��k�p�r��Ï�Rk�ڠP��PX!�z8C���黓Ĺ��~�0ź.���x��&���@_�/$�G�Um�،���,�P�� $��C x����n��&��C|��|Gu�px���v����Brʚ��h�'�݇c�e����یߦݰ-g1Fyj�ա�A�!��E&/�QK�VY/�qL�ʾ��箜Q@*�M�V��ن8&LU>ڥ��tZy�bο$*�"�G.��||���k�?�����3�qL"�m�v�Ѝ�t�F��:��n�1��i ����:EC�.��W�1q<�Đj��[���b�*�d_�6a6����`\���H(Ga���t���Ώn[C�lu�����Ck�l�$�\_��=ͣ#�li�UB
d�l%p&��\5��
A��@���X=I����pWI&�Q�u��$(Z�faI���Ayt�B!�i�ų�4PJ��t�z��+T�dY5MQ�	pN�H�Gl��D�	r,ͣ)i�H/�NI���
�򬝍�F+&{!��$C�,�����|����Ā�+�L֕3�Q?�Q�^$�i?l�6��<��٘�ސb��G�߆NkC+�Ϭ���m��rM��pL��m�L�F�|Y�š�al���|Tu�ϘPN(*��i��5j�b6��TbL�f�H����d^�GMYPH����|OL#�f?�#+����� �T(�f��lj5��rr�M�P��l�dt���5kƑ�^-��ao��k��`Bٜ.��'Q1R6�JiΘ]I�-@��a{��Ʀ�T9�6n0>Y8�q3�T(��Dv�J(i|:^�1�0i�ϳ7U�I��0�
�4V���0i1�O�7��q���NJ,)���RZ�|���Q�NK�@K�a���V5�7>����~���M�aw�����S�t����Tuv�VX�'%촺�<uO�ﺻ�E~�?��[�*�����	���䅠T �UX���8%'��ܸ��n�=ݿQ�C;�%~o������ӡ1VJ�ZX�����l�~��[��+�B��[���
\$����9Ju�Z+�e}�a���w�z���pj�����m��T�eW��C�P�T��g�t�5���������y��[�����Ju��y�����9�ݸ���������:ci��.~����6��L��:�7�o�c���
�uR8y��m����E�Ж�M�eW±�%Ü\8�EG����48�%��3�ߞע#xɞ���yY<�����H^��7����!���ի-���4�7��-3�KO���`�q�s�M�N^�բ#~i��$0Q�'0ݍ7���H]����%���=��g��pZ5���*��������x)<V1ӱ��ߢ�����
K	ϦU�)�7�h]���$<�V��	�-Z�o:��V�*�@om�z����K	~N�4���Ңu��[���*ݛepg�h]��Nxv��ՙ�?�E�Q/<�Xe��	���W�>�>V�
�����뷤���x���<�E��� E`CS�D�����A��6�����[��_��`�~�M�>�E�KӠE�,���5�h]�7;-Kg`o��-�~{,,�O�޺7��{��0��r���m-�p�<`������]�_��P^�on�7�C���r�K��&m
���������귀t      �      x��Z�r�:�}&��?�S�ċ��K���$y'5��DB�$�I�����I�3S�!)�lv�ի/�"���tǃnT�RygtS�m����*�d��.l'����,^e��"�)��F������_���&l;�����c�����B���2���wڄoڼ��)B�t�t�lj�l��2d"��K�
�U��di���4%�&X@�N�P��m�޳~�ە�
��A�*�[5
�/�`�h_��v;��'��Lps<V%m�X?������V6��PU���o�܊Ȏ��x�-����D"n�^uZó��bc���Y�^Z+`���]��_��ew
6�o���U��ϖb�����Un�x��oJ�{,��������r-���dw��@**�D��D����_�����Q�M	a���W�޳6��̩�'>�������LkI��X[�����y��PvL���^8���N��Gu_u��'��+�R�Z�,xT�`���X�b�WX[x�D��F����	����FWz
n���ߌ2�L&��gY��nZ]�q��>�l��Xn��ke]+Ӗ�j|����yҪx-c'��b�C�%`܍p���U[���D/k��L�/�����]htߕ�R�'�p�p��%��nUU��F��@��g�Z��L����3��Ï8����~|�E�b)��jK(�V�[���� ha���ȖD����]	�D.�K먢�qa�X�E<s]V�d!8�n�a#�&��;ip�����<�8�|����%�����r�jsỉ�yP�DJ)+��7��qM�b����m����yw0���4�����B9�i J��c%OpV��y'b�w������l#f�B��;��A�?�m	���Bm�Ny�H�!��7����GV��a[�Z���`���ȇK�,��v��T�b[[W}������\Shm�'�?#�`�Q�c�i�CP&������5�#�J�gg��:���r ��gC'0� ������E�y�C?����b+���q�Ӡ�Qfoe�ATDc�%� D�PTI����O��D_�/�hb�����	������H�(��m%���E�K�\!z�#}�L��D��I+=�Hx`)�-z�ȗ+���M���nb?iMI���v|9޸�A����� � n����e���\��#]�7#OLz��t{��6�o�z��e�Xo$�]�~'���Fle�ݍ6R1g�e"�)�E~�Tp5�v`�˧{�f��BU��0JYi�;>n�/���U���'���iR;�Lί<�(�H�^٣� 5{`� �l�e-�لL2n9sMlћ�4"qK�����%�e&���f_Io�q6<�׏�8�����|;�*�O����L���b��B�Ϧ!zf���+��5���{!9��Q��Y�*H�
`������*� ���[>�����-9�N���"x�PH`^��Z|�47e��>Kp���x����Ki�X��٣�!�'U����V+��&b�t�����DK�;�]���
Ex��*�օ������-�K$#.5/��|�?ʩ�wco�U|��	��+z���ٳ�}���`#_�='	S��o�����D������Z9���$lZ���Ǵ��5f����d{.m�R�Z��=J�e��7���у}�[F�(��Y��e��Z�����8�v�2.�m�2�����
gCT�z1���9����dguf��(aHb����Q����u�n�z�k-��|a��F����q�X���TZ���89w�Ŵ���/Z�h9���(���cT%߇�PL�.ڋ�h)��%�2�H�h�4}|őB��=@E!h�eUT�sz��������N~��Ы���Qֵv���qK+�mj��A�b�ĉ�(���y�A��˜�F@Y݈5?�=�����Hy���dĒ��Q�XD	jcj�H�m�Y7��,�[)˱���Q�XT�iV�%�tr��
o
y�f�Pg�Ք�ZUtp$'��P4S�0������O��%�TD���7��m�f�Q�`�Ȃl��p�?u9����^)�E��T���y4����ܗ\B-	Y,x���W[���z����2-F������|��Ԡ��*�� <^n9{s^���"^ B�ĩO�D��B���u�k��m��I���������l��*"�B����;�sn6�3+N��Q)&��l��������_��mC�^&��"^�P��ó���_����v.��˪�*�0�Q	RIk�PF��#^�8��įf/��
��vT��i�7��� I=J�~^��ܠ�]Y������1�D��ሹp�id<ZA�Z��j��S:*��8t�d�89��O��}�g@|��{�	/��:��$T�D�Ca"��'�﴿5�~!j:��bl�GvW��1���.�i��NY5(�[?Iǩ��첞\4�R�a^L��2J���0Qmg6I�;w�v���I.^�8C�o�W��P�]��Q���Rv*U��ȧ�w��W�f�Y/�2���ks>��8���af���X� ����f45�?ؕ4D`���\�N�E����Ǥ���wL�;u�>Y�d9J/yl�ˏ��2�y�GeGՕ�yX�R�D��5Y�d5��04�0�nt ��),xwyMu��ㅲ[�M�a��D��ȋ��<C�����`嬥�7�P�������8�J�q�����9�#橺�d:<m��p���X%�E� �1���n������Ny��\�mc�R�󶖈$������d"g3]S!-8�$�fk��=:�������О���&��๛�5����@�)��aƱ�uG��s:�H8Vy���|-�l��x����o��`��|i��~N��.=Tg�kh�a��L h��Ve3�Aٹ�,S����'z����Kz-R�B>I��veϦwr��Bv̭쀧SX�d"!�B���r����g��b�&��q.ș�m�q�#]�t8M��I'������5�5���-ҕH#��7v��� pj���t�_�"݉�P�����4nlC���s�s�3���M�-�D,����*���b�&����<���C��*ߏ�v��PF��-� �_hcH�:MD���7vN�}��<#�m�`�TҌt�L���t�[��H�������w;�xc�\���Bq�Dr��8�_�?��H3���}�UJ6�MEgN|�R���.;�ڵRӝO�iV�QF�	gC���}Pͼ%��IF�)�\�����Hp/�S��V0^������(مw���Ey����sd��P�������=�u�X/�����^н���� g[6�q�v�6nH>�-���^����ۍY��3_X��9��c!��BC���z%֖46}���yvd�*�I��	6��f�-��iE�_�V��׵�u�6>S����7rǿjǿF��A����v�G�\�X�b��5$KN��|K���P��d�x]�-&#�5]2�:��:��o�����D��Cg�ڒ���mz�3�&��~��<,�bm����৲���z*s�w�V�p�Fr5����� �Fu�sܒ��Xg���9�U�}=�~�]�SRc76\z�λ,�)2�Y6�����k\��+MTKy���jjD�Q�����j�߄f�"c�@�?�#]���~ݾi��U�E(Y* �!� �\g�-�C�gyi{�P��b�뛕��֜@�Օ��{"6fx����Rd+Ě�I$�{�7�sd��582D;��J#���K��s���(��=-��Jd�>jW��� �|_�)���ح�b?g�� ���J~��_<�d����AnQ����ԅ_����K��2� 3��ﺡk�]�[ߏI۳�g�M�,	�	n-��G�4�R��E95!d����ā�k�8���ޔ�b�6oz�%"K��`n���`4�=A�)��<�)�n��R���g���Q,�?���V�U0��ۖ�7����p^���!e-�,�k wK_\���,&h_eC�cD*�q[@�?=�该�-=ӵ}�omC��mF���ʲ��vh    K�L'y�(��������k��#��7���      �   H  x��XMo�6=3��>���'��mw�[�hlѠ@/�M�Bl˕�d�_���,z�R�A��y��S"���������b?oo��|\�_u���f����x�w��n�S��knbE+U��j����}�ճ}�=+[���ܶ)��}�+��D����������V���>�f��e�R<'���V�>̚j�ot]=;]���k��z�*�nl��(�2E+V˦���rۺ�~)ەnW��I���A�nrE+UU�����1�V7E[6�2ܦ;E�O���(Z������x����u+}��r��^��^e���0���hѹZ=+R�y�_/��a�����MiV�J}ß����eUˉ�r��m)��C=M�t�ԛj��/���m�>��l�#S?�w(�]�'�ӷ9_[o^}=��ն	��d�<�O"U_]��,MC��U����uH�%s�^��k��u�D�!L8���ݶ=��Y|b�/W�$2�E��e�<(I+ʕ��-_�s��:\EF�PT�l�zr�X"&p6��E���pun"PG�Ul����� ����r���`�ą�n+]8�Ŭ���$is<U��=Ju}>"�G��x�4��)�9F�y�#���3��oc��|G�����ZWT����4.N�D�~*^OKV�MQ?�ux���r�p!qk�V��#�8W8VoTN�$�~�bD��L��XG�A��ɊAIdꔧ'�W!� :��8��`������M���) ��%>.��DJ�h ��M�i��]+�t(���YpY�DB�(T�$�� �$��Ѥ��/lH��Q�8ޘ��(�a���u%���<������6i��)�a���ŏ� �r��]�\�Ё��(��Đ$z��$1t�顰U���qQ�	3T���x���BOR)ғ�55��Ҡ�G�~:�U� �#�4S���$h)EI�%C*(s�%q���OK�ވc-;��	Ib-�8)j6U�iɐ�ɔf�ڣ��n�k�3(@���d���ך7�;A��T��Ӊd��tҘسRƶ==b����VU�SKƶ��tu]��β�����SI��d�|���Oe��͘�%C�'3��[� h�����]�ɳgv� ĝo�ٴ��+<�L�grv��y�;�u��D�T�l���� � 2g�V: ��O2v�y:�Łd��mz>ҩI
&s���0�����mz~*zۣF}_�\�/g�����@���/g����#�}HOqA~H���\s�@�)�7l���$��K��ܼǡÝ|z�؞�H:�';�ssh�&HE}�ء�Q&��K��١�aj$�2[�����@��eء��j��~�;t3X��T���a�i��1�C���t M�&ء� ���;tA]��.`��M:����C�Q&%v�pͤ�o;tfҁD��
ء�(�$����:�1��˦e�nG�t �²��������;M:�~
OYv�v�I�$�� ��5��W��a�-)��%���%K�)sc١�+�d�{����@Z�$���,;t;��,ɤ�ڔ-:�NL�dR���������_i�     