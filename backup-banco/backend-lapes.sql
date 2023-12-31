PGDMP  9    3                {            backend-lapes    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16671    backend-lapes    DATABASE     �   CREATE DATABASE "backend-lapes" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "backend-lapes";
                postgres    false            �            1259    16688    Produtos    TABLE     $  CREATE TABLE public."Produtos" (
    id integer NOT NULL,
    nome character varying(255),
    categoria character varying(255),
    preco double precision,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    quantidade_vendas integer
);
    DROP TABLE public."Produtos";
       public         heap    postgres    false            �            1259    16687    Produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Produtos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Produtos_id_seq";
       public          postgres    false    219            �           0    0    Produtos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Produtos_id_seq" OWNED BY public."Produtos".id;
          public          postgres    false    218            �            1259    16672    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    16678    Usuarios    TABLE       CREATE TABLE public."Usuarios" (
    id integer NOT NULL,
    nome character varying(255),
    senha character varying(255),
    email character varying(255),
    tipo boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Usuarios";
       public         heap    postgres    false            �            1259    16677    Usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuarios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Usuarios_id_seq";
       public          postgres    false    217            �           0    0    Usuarios_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Usuarios_id_seq" OWNED BY public."Usuarios".id;
          public          postgres    false    216            Z           2604    16691    Produtos id    DEFAULT     n   ALTER TABLE ONLY public."Produtos" ALTER COLUMN id SET DEFAULT nextval('public."Produtos_id_seq"'::regclass);
 <   ALTER TABLE public."Produtos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            Y           2604    16681    Usuarios id    DEFAULT     n   ALTER TABLE ONLY public."Usuarios" ALTER COLUMN id SET DEFAULT nextval('public."Usuarios_id_seq"'::regclass);
 <   ALTER TABLE public."Usuarios" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �          0    16688    Produtos 
   TABLE DATA           m   COPY public."Produtos" (id, nome, categoria, preco, "createdAt", "updatedAt", quantidade_vendas) FROM stdin;
    public          postgres    false    219   �       �          0    16672    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    215   d       �          0    16678    Usuarios 
   TABLE DATA           \   COPY public."Usuarios" (id, nome, senha, email, tipo, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �       �           0    0    Produtos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Produtos_id_seq"', 6, true);
          public          postgres    false    218            �           0    0    Usuarios_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Usuarios_id_seq"', 1, false);
          public          postgres    false    216            `           2606    16695    Produtos Produtos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Produtos"
    ADD CONSTRAINT "Produtos_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Produtos" DROP CONSTRAINT "Produtos_pkey";
       public            postgres    false    219            \           2606    16676     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    215            ^           2606    16685    Usuarios Usuarios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    217            �   �   x���1
�0��Y:E/`#=�n��t	%�m���4xI��?�x��^��}�����\�4�FX���^t�EgA���%�����U*�����r�P+{W���B�+ ���r骟�z����i�C�]-�Z���KE��:V�ef���]�      �   B   x�32026�443�067��M.JM,I�--.M,��/��*�2��020555��((�O)-������� �y      �      x������ � �     