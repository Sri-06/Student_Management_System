PGDMP         *                {            postgres    14.7    14.7 &    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    13754    postgres    DATABASE     d   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE postgres;
                postgres    false            /           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3374                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            0           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16513 
   admin_user    TABLE     a   CREATE TABLE public.admin_user (
    username text,
    hash text,
    salt character varying
);
    DROP TABLE public.admin_user;
       public         heap    postgres    false            �            1259    16547 	   admission    TABLE     `   CREATE TABLE public.admission (
    name text,
    email text,
    phone text,
    text text
);
    DROP TABLE public.admission;
       public         heap    postgres    false            �            1259    16524    contact    TABLE     ]   CREATE TABLE public.contact (
    name text,
    email text,
    phone text,
    msg text
);
    DROP TABLE public.contact;
       public         heap    postgres    false            �            1259    16498    courses    TABLE     V   CREATE TABLE public.courses (
    courseid text,
    cname text,
    duration text
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16441 
   mysequence    SEQUENCE     s   CREATE SEQUENCE public.mysequence
    START WITH 5
    INCREMENT BY 5
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.mysequence;
       public          postgres    false            �            1259    16503    results    TABLE     o   CREATE TABLE public.results (
    rollno text,
    c text,
    java text,
    python text,
    remarks text
);
    DROP TABLE public.results;
       public         heap    postgres    false            �            1259    16529 	   stud_user    TABLE     A   CREATE TABLE public.stud_user (
    rollno text,
    pwd text
);
    DROP TABLE public.stud_user;
       public         heap    postgres    false            �            1259    16542    student    TABLE     p   CREATE TABLE public.student (
    rollno text,
    name text,
    email text,
    gender text,
    cgpa text
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16468    student_info    TABLE     �   CREATE TABLE public.student_info (
    id integer NOT NULL,
    sname character varying(255),
    clgname character varying(255),
    city character varying(255),
    percentage real
);
     DROP TABLE public.student_info;
       public         heap    postgres    false            �            1259    16519    teachers    TABLE     F   CREATE TABLE public.teachers (
    name text,
    description text
);
    DROP TABLE public.teachers;
       public         heap    postgres    false            �            1259    16442    three    SEQUENCE     w   CREATE SEQUENCE public.three
    START WITH 3
    INCREMENT BY -1
    MINVALUE 1
    MAXVALUE 3
    CACHE 1
    CYCLE;
    DROP SEQUENCE public.three;
       public          postgres    false            �            1259    16485    time    TABLE     A   CREATE TABLE public."time" (
    hfghf time without time zone
);
    DROP TABLE public."time";
       public         heap    postgres    false            �            1259    16566 
   user_roles    TABLE     S   CREATE TABLE public.user_roles (
    username text NOT NULL,
    role_name text
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16573    users    TABLE     \   CREATE TABLE public.users (
    username text NOT NULL,
    password text,
    role text
);
    DROP TABLE public.users;
       public         heap    postgres    false            !          0    16513 
   admin_user 
   TABLE DATA           :   COPY public.admin_user (username, hash, salt) FROM stdin;
    public          postgres    false    216   h"       &          0    16547 	   admission 
   TABLE DATA           =   COPY public.admission (name, email, phone, text) FROM stdin;
    public          postgres    false    221   0#       #          0    16524    contact 
   TABLE DATA           :   COPY public.contact (name, email, phone, msg) FROM stdin;
    public          postgres    false    218   �#                 0    16498    courses 
   TABLE DATA           <   COPY public.courses (courseid, cname, duration) FROM stdin;
    public          postgres    false    214   �#                  0    16503    results 
   TABLE DATA           C   COPY public.results (rollno, c, java, python, remarks) FROM stdin;
    public          postgres    false    215   Z$       $          0    16529 	   stud_user 
   TABLE DATA           0   COPY public.stud_user (rollno, pwd) FROM stdin;
    public          postgres    false    219   �$       %          0    16542    student 
   TABLE DATA           D   COPY public.student (rollno, name, email, gender, cgpa) FROM stdin;
    public          postgres    false    220   �$                 0    16468    student_info 
   TABLE DATA           L   COPY public.student_info (id, sname, clgname, city, percentage) FROM stdin;
    public          postgres    false    212   <%       "          0    16519    teachers 
   TABLE DATA           5   COPY public.teachers (name, description) FROM stdin;
    public          postgres    false    217   �%                 0    16485    time 
   TABLE DATA           '   COPY public."time" (hfghf) FROM stdin;
    public          postgres    false    213   :&       '          0    16566 
   user_roles 
   TABLE DATA           9   COPY public.user_roles (username, role_name) FROM stdin;
    public          postgres    false    222   W&       (          0    16573    users 
   TABLE DATA           9   COPY public.users (username, password, role) FROM stdin;
    public          postgres    false    223   �&       1           0    0 
   mysequence    SEQUENCE SET     8   SELECT pg_catalog.setval('public.mysequence', 5, true);
          public          postgres    false    210            2           0    0    three    SEQUENCE SET     3   SELECT pg_catalog.setval('public.three', 3, true);
          public          postgres    false    211            �           2606    16474    student_info student_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.student_info
    ADD CONSTRAINT student_info_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.student_info DROP CONSTRAINT student_info_pkey;
       public            postgres    false    212            �           2606    16572    user_roles user_roles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (username);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    222            �           2606    16579    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    223            !   �   x�+�L�K-���Iz�/Y9��Yk�YGV��ZC}đ�0B(E 6䄰J�D��(��c����)�*.�������@���PR/��T&�J�R��W�é�leL^��J�R6j�\U����l(�R� ���E��� �%Ĥ1�ׂ\��2-d�O���;��vq��qqq ��A      &   L   x�J�*�,J�242vH�M���K���4615243����T�KMMQHL��,.���S��S�M,�N-��K����� �d�      #   Q   x�������F�鹉�9z����F&Ʀ&F�&��
��
�y%�E��%�)
%�
Y��y@!����"������=... ��G         ]   x�340��J,K�4Q���+�(�240�tV�4E�M8�KS�*9�b���%�ɉ9
��ٙy霖I3���$dsάĂ���TN�`� �t$i          M   x���	�0���q��5�����A*4�R:��-�1B<��T��|(�7�L+�� ��v����r���ƉΙ�~��      $      x�3�,.��2�,J�*����� ,R2      %   K   x�3�L.N56���,� �F�鹉�9z������9���z�\� uF�����9� ��I]Z*X���)W� ���         �   x�5���0C��� 5k��/\�5)pl�*���ŉ�'��PtiX"��jz�����)��/����)�V��p f7*�Ș� ����Y6a7��~��_#-19�X�(�����Q!>ԝ-cn��1{�󅶋�<��y�ۅ�>�9:�      "   I   x�+��,*��J,KTpI-K��/H-��-M��I�TNM.-�,��
J�*��,���CRV���������� ��            x������ � �      '   9   x�3�tv50�,.)MI�+�2�M����L�Ĕ��<��ĬR(�*?#ʌ���� �yG      (   1   x�3�tv50�L�+�,.)MI�+�*J�*��FƜ�)��y\1z\\\ -��     