GDPC                                                                                D   res://.import/cursor_img.png-c6863d95231bd6e15e02a8da81388640.stex  p            �}�E<�
�=Z>o�<   res://.import/fall.png-a6f5850f06c1efcf578e3fdb299347b9.stex�v      &      X5��0��.�'P�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      &�y���ڞu;>��.p<   res://.import/jump.png-ac0e085c4c97f4f19847c48da3edd949.stex`            ��]��M^������<   res://.import/trow.png-d12736916886b2764914dc4d10c4b7bd.stex0�      �      /����fH�1�)-��<   res://.import/turn.png-2a881c0cfe0a1498916e10248d7ab223.stex��             �y��Sᨯa���p��<   res://.import/walk.png-51165417ca2d15c35e1e5903d73e22e8.stexp�      �      d�?��������q�   res://Ground.gd.remap    �      !       �<#C�7,��;|G�   res://Ground.gdc 	      X      b�i���Sh\>��L�   res://Main.gd.remap P�             �(@Er�#��K�F�[   res://Main.gdc  `
      I      b��
��@=@خ���>   res://Main.tscn �      e      
�YB~�j�7����F�   res://RespawnPos.gd.remap   p�      %       ����DP&T�   res://RespawnPos.gdc       A       �˭qr��	0&<�؀��    res://art/cursor_img.png.import �&      �      G|�pL�Mz��PH���   res://char/Char.tscnP)      {1      W#nc�zG�`�i!&��$   res://char/CharController.gd.remap  ��      .       !���R�^�$G#d    res://char/CharController.gdc   �Z      �      �큑��%�v���C\    res://char/GrabCursor.gd.remap  з      *       [��	���m��+�ZɆ   res://char/GrabCursor.gdc   �i      �      /���L���	�q�    res://char/art/fall.png.import  �|      �       @A�O�x5е5��Q    res://char/art/jump.png.import  ��      �      �)<�+���ܗ����Z�    res://char/art/trow.png.import  �      �      0S�� 9�芠Uo���    res://char/art/turn.png.import  ��      �      �¨�$y�ZK_w���    res://char/art/walk.png.import  `�      �      �(�!�:�L�N�6F��   res://cursor.gd.remap    �      !       ÄZ��Ix)�՟�[�   res://cursor.gdc�      t      �;Q�q��y��ae�   res://cursor.tscn   ��      p      30�"-���_���!�   res://default_env.tres   �      �       �V`j���ZY;��5   res://icon.png  0�      �      G1?��z�c��vN��   res://icon.png.import   p�      �      ��fe��6�B��^ U�   res://project.binary �      A      �hFތH�������            GDSC   
         2      ���������τ򶶶�   �������Ŷ���   ����׶��   ������������¶��   ����������������¶��   ������Ŷ   ���Ӷ���   ζ��   ϶��   �����������ض���                                     )      0      3YY0�  P�  V�  QX=V�  ;�  �  PQ�  ;�  �  P�  T�  T�  R�  T�  T�  Q�  T�	  P�  QY`        GDSC      	   &   �      ���ӄ�   ��������������Ķ   ����������Ŷ   ����������Ӷ   �����϶�   �������Ӷ���   �������¶���   �������������������������Ҷ�   �嶶   �����������������������ƶ���   �������Ӷ���   ���������������ڶ���   ������¶   ������������ض��   ��������������Ӷ   ����������Ŷ   �������Ŷ���   ����׶��   ��������������Ӷ   ������������������������Ҷ��   ��������������ض   ������׶   ��������Ѷ��   �������������Ҷ�   ��������������϶            Char/%CharController      %RespawnPos       size_changed      PlayerRespawn      
                                                	                           	      
   "      )      *      1      8      I      J      P      T      \      a      b      i      r      x      |      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   3YY;�  Y;�  Y;�  YYY0�  PQV�  �  �  PQT�  PQT�  PQ�  �  T�	  PQY�  �  �
  P�  Q�  �  �  P�  Q�  �  PQT�  PQT�  P�  RR�  Q�  �  &�  �  V�  �  PQ�  �  �  T�  PQ�  �  PQYY0�  P�  QV�  ;�  �  T�  PQ�  &�  �  V�  �  �  �  �  PQYY0�  PQV�  &�  �  V�  �  PQYY0�  PQV�  �  T�  �  T�  �  �  T�  �  �  �  T�  �  �  �  T�  �  �  �  T�  �  P�  R�  QY`       [gd_scene load_steps=6 format=2]

[ext_resource path="res://char/Char.tscn" type="PackedScene" id=1]
[ext_resource path="res://RespawnPos.gd" type="Script" id=2]
[ext_resource path="res://Ground.gd" type="Script" id=3]
[ext_resource path="res://Main.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]

[node name="Main" type="Node2D"]
script = ExtResource( 4 )

[node name="Char" parent="." instance=ExtResource( 1 )]
position = Vector2( 500, 351 )

[node name="Camera2D" type="Camera2D" parent="."]

[node name="RespawnPos" type="Node2D" parent="."]
unique_name_in_owner = true
script = ExtResource( 2 )

[node name="Ground" type="StaticBody2D" parent="."]
position = Vector2( 519, 593 )
scale = Vector2( 342.322, 1.18424 )
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Ground"]
shape = SubResource( 1 )

[node name="Wall" type="StaticBody2D" parent="Ground"]
position = Vector2( -9.61796, -1407.93 )
rotation = -1.5708
scale = Vector2( 153.125, 0.00653063 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Ground/Wall"]
shape = SubResource( 1 )

[node name="Wall2" type="StaticBody2D" parent="Ground"]
position = Vector2( 9.61795, -1451.43 )
rotation = -1.5708
scale = Vector2( 153.125, 0.00653063 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Ground/Wall2"]
shape = SubResource( 1 )
           GDSC                   ���Ӷ���                   3YY`               GDST                 WEBPRIFF�  WEBPVP8L�  /���-l�I�r�(ee�����m�3k����#�ޱm��3k{��tEd|We�t|�]��löm��Ԯa��m���)�Zێ�Ͷm;p�m۶m�f��Jj۶�7��ImۊS��y^;�G�I2���=X�/4*�_�����[-�ƠY(� `��aQq����Eh}z� C��z/���C2C ��38�:�����O�P-��?@�d�A�d�[�T W���D8�,���}����`�лH�`��G�$ �j���{{�b��:# ��� L����$�X�蠠�2�d �`�.AGL�3y�㙏u��Q�59y<3�Ypa�"�`.8.�m`��5[î�ch<)�˅7Z���(�M!t� ����/]p�2[���~��IV{eZ=t�� �`	rq0p�7]xђ�=jU��E���j�Z��X�q�����:N��j`�j��Z�Z=��th�������ώf;Һ0��Z����Ȋ֙���=��dU��y=٦�p��h��o��{Zλ���wS��I�E[�m���	$(L(�a�h@�5o:�Kc2�1t�u7�f 	�Q^�~�r��q���E��X6��.L���Up*��Bc��mo�����iJK�h�:w|{YB�,�m:�lA��c�B@xR^�˫�%�kzz�OO�x�`�x>�6%����uGZ/km�&�#��E+gE��gM�O-��yZ�*Z~p��1\/+Z�G_��ă�i�ї6b����!{���KgI (N�P�B�`8:�JO�����ˌ颰)� �q��[Μs�l�=�݆�v��1,���"�1x�G`|�m7%���,��ʓ�V�ꪲ����������^�^���p5\ ��*8�X�iU-Z��>~�_��F����!( ����Xʫ�%����rZ�5�A6 ���QH+k�zJ��Z!����@p��i�*Z��>���S,cn3*GVE����S�fT��h=����1x����V�᥵�p��h��_����Kk���)C�X�6O��e�P\���+ ��ƚ;}���2����&M� ����/Z�<7<��GQ����Ǒ��vv��(!p����QN�j��Z�����FX	Ã��aX�z/+X�3��v��&yŒ�c��o��
��
 �}�-�Z�`W�b���d�.K�>�v�!��8( Fl�?���s���q��?��Z~zZ8���xZ�U��1��i�ө�ߟN���Q��IX���xbn�
�� ���@��lb��հh�c5��#�O���k�K���6� ��a��G��+gy�����s_��Xwϙ��^�2=;������lc{	�լW��,�^�z5��TkdZU����j��'�iS��V�
�/��P^%/Y�U��� `

��V������5Ok��
 C5�2ӒWҲ�N� B�,w��h���a�L,��%�r�dΗ���;|R���=O:b���M.1�E ��%�� zS�z�A��4�`���.bVƼ(RT��p/�:�����7����n��=���?��Eliw�v)v��`/�$��Լ�Vɋ�5�<�y��P�!� �A@�K��cY�~I�ޝ��a�!�[E5����W=~G�m��^�%�rܨޗ���;nR�o����,Z1�@� Z����J'>��1��00����~�k_:dhL��Z�k�E������Ymo��k�E��z	�'i����<^��Gq/{�+����o�!x���8�
g�L���ֲ/�fN2
 � ��My�Si�r�i�G�j& ̮t���E��w*�}|L�}'��j�=����`и�A`JH�d67�E2�1�L��Lb
ƦH�Ks��|�-�>����uG�����i�8�X���
�m�3�~E��! ������+�%+�fO��쨁��������'�}j����_�����-b�b��B, L���9Xw����VĄ�%�0�{x�s�ӟV�i� ��7Ůu���L���cō-ShT����A�"�q��E��'MN��89q0t����|��ݟ%M�3Kl&�4��F��.�5���	��E��'��S�B LApt�F����o�AL�d���wg��e�a
`8���H���ji��i�{�'=$�a+&$�	�Vh�����I����2�luH�젖����+�|�<<�񔇩�O����>K�ޮZ�d�2z苂te鴊�{�ޣ2Z˸S^����N����W�З7�V�Ɓ2�q0\ ���!�u�E˅7���f��V��F`6�.�-W܌cɐ P � w��/-�  X���W�o�PVF�5E˥7�+���\x���7g\F��\p�ُ	�E^��<�[,c�`�k�! 8ƪ���C��/F�3��]�����=�Q�o��Ӧ�~Ϙ��1�1�Ӝ�����.Zд��9xMV��|�c�����d����<�s�TP��;O�p�Mqw�fyh)�����'K�xl�E˯NƗ6�Ё�	4nιђ��-ņ .6�����bd���U+�fE��0��^���}If_��/�B�^f��m/��}�����I@0��.s��1�� d.d2#��bn�/?� XU���fhe��Y's�H4��ˬ����A��N��01��η�|T����9qa���� ����_l�E˯N)"		����"]p-��_���l�a	b�& ���:q�1q������ۓ�2���-Y�=+O��fK-�\Z���e����'~z0��Qqr��������a���9��#/���ۓO��'�~vx�h1^�)g}����}|�KQ���\��Y>��&k�:03�>*�C�>lK܇�}T�+!��ʲ���i#�~(�m�Ru3��@J�7[���Z Y�)A��r�-i�RbZ?��I0@�j�u ��к  ���"�Ffh�:C	�z#zc�і#�1�Z첒Ci���uOZ/ך���d c��4�ö��cӄYff� �*}���]�Ƽ0`K����z����"F�ҪZ�Ɨ�ǗW$�5̸A�k\�Rf��يX�\O�VIO��ר��p>�k�[� �Ӓ�����[����U�s�������wnj�-���ާUn��i�^VE����1F>�/Y��U��E����B�d	F �q�hU-�u�V`�@5���+���K/o{y��{>�{�����]���ױM�`O{c�6�9la	6��amh  )-Z��h��\m��V������ �9�>�X:$(.�$�1zk����͗��0�y����۔<���Oq���Vq�h��h=���b��Eqx��JF�hI�h}��v�4�BaQu��vj=���C�X�� &�Z����2[�bk�f
!Dj�5x��8.������y������է���u����� F�m%�-������_:�bİ�c$��d�ы�8Uǅ7���Ek��G�S�$��#��%x
�Q>��<�:���9�_�������K;YS���Q�Ђ��J�t�3�7�$z=z�!�7�
���p�<cx��)�2��{���,^dW�Ep�^�x3��o��B@�:��'é�������=�}'�e����]�݆e�-'���-��<��򗗾�z��Տ7>)�Qx�<����@@Si �$:�,�:�F �	 @0zF+�PA��.K�Kw��R�4f���(��D�OnڈApC��!��P!C�!�u!��-FÈ�A�5�"Bx��T ��X�q��]^���l�rƥM����Ẋ�� @�s#3�X
��>:����'-Zθ�\_�@؏Fż#��j��e���� FPLA��-0˛�ز& l�K�A���
n�ۊ�[�NX��"8N���\�t�4���)�S��*G&h���;Ac����T��W�J��q���� 
�1�u7ZfK��ܚS�r�M�I���5�/�嶉���7��VMO����uCg������L�}�0�fs{��\v+??�����R��V�?����y��6��˘s�l�;B���,z4���K	9F�-�<�^G!��0�Л
����b��"D�%'�x�y2&Co
:�M��aa�D dA�A0:�=h!`1�Jnh�j}���_��'e�� !��K�d}��$h `k8�â���p&̂�֍�c��������_����F   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cursor_img.png-c6863d95231bd6e15e02a8da81388640.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/cursor_img.png"
dest_files=[ "res://.import/cursor_img.png-c6863d95231bd6e15e02a8da81388640.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [gd_scene load_steps=19 format=2]

[ext_resource path="res://char/art/jump.png" type="Texture" id=2]
[ext_resource path="res://char/art/trow.png" type="Texture" id=3]
[ext_resource path="res://char/art/turn.png" type="Texture" id=4]
[ext_resource path="res://char/art/walk.png" type="Texture" id=5]
[ext_resource path="res://char/CharController.gd" type="Script" id=6]
[ext_resource path="res://char/GrabCursor.gd" type="Script" id=7]
[ext_resource path="res://char/art/fall.png" type="Texture" id=8]

[sub_resource type="RectangleShape2D" id=1]

[sub_resource type="Shader" id=9]
code = "shader_type canvas_item;

uniform vec4 u_color_key : hint_color;
uniform vec4 u_replacement_color : hint_color;
uniform float tolerance : hint_range(0.0, 1.0, 0.01);

void fragment() {
    vec4 col = texture(TEXTURE, UV);
    vec4 d4 = abs(col - u_color_key);
    float d = max(max(d4.r, d4.g), d4.b);
    if(d < tolerance) {
        col = u_replacement_color;
    }
    COLOR = col;
}"

[sub_resource type="ShaderMaterial" id=10]
shader = SubResource( 9 )
shader_param/u_color_key = null
shader_param/u_replacement_color = Color( 0, 0, 0, 0 )
shader_param/tolerance = 0.28

[sub_resource type="Animation" id=2]
resource_name = "Fall"
length = 1.6
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 8 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 15 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:hframes")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 16 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 1.0 ]
}

[sub_resource type="Animation" id=4]
resource_name = "Idle"
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 8 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 15 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:hframes")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 16 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 1.0 ]
}

[sub_resource type="Animation" id=5]
resource_name = "Jump"
length = 3.0
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 2 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:hframes")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 17 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 5.0 ]
}

[sub_resource type="Animation" id=3]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ ExtResource( 8 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:hframes")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 16 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:frame")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 16 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 1.0 ]
}

[sub_resource type="Animation" id=6]
resource_name = "Trow"
length = 2.9
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 3 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 25, 25, 25, 25 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:hframes")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 26 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 3.0 ]
}

[sub_resource type="Animation" id=7]
resource_name = "Turn"
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 4 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:hframes")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 12 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 1.0 ]
}

[sub_resource type="Animation" id=8]
resource_name = "Walk"
tracks/0/type = "value"
tracks/0/path = NodePath(".:texture")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ ExtResource( 5 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:frame")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath(".:hframes")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 12 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("AnimationPlayer:playback_speed")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 1.0 ]
}

[sub_resource type="CircleShape2D" id=11]

[node name="Char" type="Node2D"]

[node name="CharController" type="KinematicBody2D" parent="."]
unique_name_in_owner = true
script = ExtResource( 6 )
speed = 180.0
jump_height = 700.0
auto_jump_radius = 150.0
jump_delay = 0.8

[node name="TimerMouse" type="Timer" parent="CharController"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="CharController"]
shape = SubResource( 1 )

[node name="VFX" type="Sprite" parent="CharController"]
material = SubResource( 10 )
texture = ExtResource( 8 )
hframes = 16
frame = 1

[node name="AnimationPlayer" type="AnimationPlayer" parent="CharController/VFX"]
anims/Fall = SubResource( 2 )
anims/Idle = SubResource( 4 )
anims/Jump = SubResource( 5 )
anims/RESET = SubResource( 3 )
anims/Trow = SubResource( 6 )
anims/Turn = SubResource( 7 )
anims/Walk = SubResource( 8 )

[node name="GrabCursor" type="Sprite" parent="CharController"]
z_as_relative = false
script = ExtResource( 7 )

[node name="Area2D" type="Area2D" parent="CharController/GrabCursor"]
pause_mode = 2
physics_interpolation_mode = 2
process_priority = 10
z_index = 10
priority = 10.0
space_override = 3

[node name="CollisionShape2D" type="CollisionShape2D" parent="CharController/GrabCursor/Area2D"]
pause_mode = 2
physics_interpolation_mode = 2
process_priority = 201
z_index = 151
z_as_relative = false
shape = SubResource( 11 )

[node name="VFX" type="Sprite" parent="CharController/GrabCursor/Area2D"]
modulate = Color( 1, 1, 1, 0.301961 )
material = SubResource( 10 )
scale = Vector2( 5.23391, 0.303096 )
hframes = 16

[node name="Line2D" type="Line2D" parent="CharController/GrabCursor"]

[node name="timer" type="Timer" parent="CharController/GrabCursor"]

[connection signal="timeout" from="CharController/TimerMouse" to="CharController/GrabCursor" method="_on_timer_timeout"]
[connection signal="mouse_entered" from="CharController/GrabCursor/Area2D" to="CharController/GrabCursor" method="_on_Area2D_mouse_entered"]
[connection signal="timeout" from="CharController/GrabCursor/timer" to="CharController/GrabCursor" method="_on_timer_timeout"]
     GDSC   4      }   �     ������������τ�   �������������Ӷ�   ���󶶶�   ��������   �����������涶��   ���涶��   ��������   ���ᶶ��   ����Ҷ��   ����������¶   ���������������Ŷ���   ����������׶   ���������϶�   ���������������Ķ���   ��������������Ķ   ���   ��ζ   �����Ӷ�   ��������������϶   ��������   ������϶   ������׶   ���������������������Ķ�   ������������������������ڶ��   �����Ҷ�   ���������������Ķ���   ����Ӷ��   ��������������������ض��   �������������Ҷ�   ��������Ѷ��   ������������������ض   ���������Ķ�   ��������������¶   ���������������Ŷ���   ����׶��   ���������������������ض�   ������������������������ض��   ��������ض��   ��������������ض   ���������Ҷ�   ������������������Ŷ   ����������ٶ   ����������Ķ   ζ��   ����Ӷ��   ���������Ѷ�   �������������ض�   ϶��   �������������Ӷ�   �涶   ���϶���   ��������   �      d           333333�?  ������#@            �?                   �@                 �?   
      	   jump trig         Idle      Walk      Jump      Fall      Trow                                     $      ,      4   	   <   
   G      P      Q      X      _      d      i      n      s      x            �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .      /   
  0     1     2   "  3   +  4   .  5   4  6   5  7   9  8   =  9   A  :   B  ;   J  <   P  =   X  >   ^  ?   a  @   e  A   f  B   o  C   z  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `     a     b     c      d   &  e   .  f   4  g   5  h   :  i   ?  j   E  k   F  l   J  m   O  n   V  o   [  p   b  q   g  r   n  s   s  t   z  u     v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   3YY>�  N�  R�  R�  R�  R�  R�  OYY8;�  V�  Y8;�	  V�  �  Y8;�
  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y5;�  V�  W�  �  Y5;�  V�  W�  YY;�  �  T�  Y;�  �  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  T�  Y;�  �  T�  Y8;�  �  Y8;�  �  YY;�  V�  Y;�  V�  �  Y;�   V�  �	  YY0�!  P�"  QVY�  ;�#  �$  PQ�  �  ;�%  P�#  �&  QT�'  PQY�  ;�(  �#  T�)  P�&  Q
�
  Y�  &�#  �  V�  �  �#  �  �  �  �  (V�  �  �"  Y�  &�  �   �*  PQV�  �%  T�+  �
  �  �  &�  �  V�  �  T�+  �%  T�+  �  �  &�%  T�+  �  V�  �  T�,  T�+  �
  �  '�%  T�+  	�  V�  �  T�,  T�+  �
  �  (V�  �  T�+  �  Y�  &�  V�  �  �  �  �  �  �  �  &�  �*  PQV�  �  �  T�  �  &�  T�-  PQV�  �  T�+  �  �  (V�  �  �  �  �  &�*  PQ�  V�  &�(  �  �  �  V�  �  �  T�  �  �  �#  �  (V�  �  �  �  �  �  �"  �  &�  �  V�  �  �
  �  �  �  �  (V�  �  �  Y�  &�  �  T�  V�  �  �"  �  &�  �  V�  ;�.  P�  �&  QT�'  PQ�  �  T�/  �	  �  �  T�+  �  �.  T�+  �  �  �  �
  �  �  �  �  �  �  �  �  �  T�  Y�  �  T�/  �  �"  �  �0  P�  R�  T�1  QY�  �  �  &�*  PQ�  V�  &�  T�+  �  �  T�+  
�  V�  �  �  T�  �  (V�  �  �  T�  �  '�  T�/  	�  V�  �  �  T�  �  �  �?  P�  Q�  '�  V�  �  �  T�  Y�  /�  V�  �  T�  V�  �  T�2  P�  Q�  �  T�  V�  �  T�2  P�  Q�  �  T�  V�  �  T�2  P�  Q�  �  T�  V�  �  T�2  P�  Q�  �  T�  V�  �  T�2  P�  Q�  �  T�  V�  �  T�2  P�  QYY0�3  PQV�  �  -Y`  GDSC   E      W   �     �����Ӷ�   �����������Ӷ���   ���ׄҶ�   ���ׄ�   ��������������Ӷ   ���ӄ�   ��������Ķ��   ������������τ�   ��������������Ӷ   ������������Ӷ��   ��������Ķ��   ����Ķ��   ����������¶   �������������������ڶ���   �����϶�   ����������������������ׄҶ��   �������������ض�   ������������������������ض��   �����������������Ŷ�   ���������������������Ŷ�   ���϶���   ��������������������ض��   �������ׄ��������������Ҷ���   �������Ŷ���   ����׶��   ��������¶��   ��������������϶   �������ض���   �����������������������ض���   �����Ŷ�   ���������������Ŷ���   ����������ڶ   �������������ض�   �����������ض���   ����������������������ض   �������������ض�   ζ��   ϶��   ���������Ŷ�   ������������������������ض��   ����¶��   ������������������ض   �������¶���   �����������¶���   ������������������۶   �������������Ӷ�   ����������������¶��   �����������¶���   �����Ķ�   �������Ӷ���   ��������������ض   ��������������ض   �������������������Ķ���   ���������Ҷ�   �������Ӷ���   �������¶���   ��������Ҷ��   ��������������������Ӷ��   �������������Ҷ�   ��������Ѷ��   ����������������¶��   ���Ӷ���   �������������Ӷ�   �������������������   ���������¶�   ���ڶ���   �������¶���   ������������Ӷ��   ����¶��      res://cursor.tscn         %CharController      zD                        physics_frame_signal   2               HideCursor();                                                          #      $   	   ,   
   -      0      1      6      ;      @      A      D      E      K      M      N      T      [      _      h      n      t      x      z      {      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3      4     5     6     7     8   "  9   /  :   0  ;   6  <   A  =   J  >   T  ?   e  @   r  A   s  B   z  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   3YY;�  �L  PQYY5;�  W�  Y5;�  W�  Y5;�  V�  W�  YY8;�  V�  �  YYB�	  YY;�
  �  Y;�  �  Y;�  V�  YYB�  YY0�  PQV�  -YY0�  PQV�  ;�  �  PQ�  &�  V�  ;�  �  T�  PQ�  )�  �  V�  &�  4�  V�  �  PQ�  +YY0�  P�  QV�  �  PQ�  �  &�  �  T�  �  V�  �  P�  T�  R�  PQQ�  &�  V�  �  T�  LM�  (V�  &�  V�  �  T�  LM�  Y0�  P�  V�  QX=V�  �  P�  QYY0�  P�   V�  R�!  V�  QV�  �!  �  PQ�  &�  V�  �  T�  L�   R�!  MYY0�"  P�  V�  QV�  ;�#  �  P�  T�$  R�  T�%  Q�  ;�&  �'  P�#  Q�  �(  T�)  P�&  QYY0�'  P�  V�  QX�  V�  ;�*  �+  PQ�  .�*  T�,  PQT�-  PQ�  YY0�.  PQV�  ;�/  �  P�  R�  Q�  ;�0  �  T�1  PQ�  �0  T�2  �  T�2  �/  �  ;�3  P�4  PQ�  T�2  QT�5  PQ�  �6  PQT�7  PQT�8  P�0  QY�  APR�  Q�  �0  T�9  P�3  �  QY�  �  T�:  �  �  �  T�;  �  YY0�4  PQX�  V�  .�<  PQT�=  �  YYY0�  PQV�  �(  T�>  P�(  T�?  Q�  �@  T�A  P�	  Q�  �
  �
  �  �  P�  T�  R�  PQQ�  �  W�  �  �  T�B  �
  �  �  T�C  P�  Q�  �  T�D  PQ�  �  T�;  �
  �  �  �  PQY`   GDST`  /            
  WEBPRIFF�  WEBPVP8L�  /_� w`�m�Cʡ�#=�p��4�C8�Cy�G�A�����ȏp�!� ��_����ѹ+P���m�\R� x8]�m�2���d��"��A�U0�y[-��VH��u��^�Y�?��*)���SrI�$qf6�+�������Ob��v����Ȩ0:%����op�E�O��Fg�sd�u@-"<��n���@��|�߇_��R�r�!mI��r�r�Y�h�y	k^��8��lGbċ�|��n��VclUq�h�9��k�"�"ǫŗH�\��uK-F���)}��������9��Ex.�1(3J"6�����t9��,�5���'s�/�����'Ab@� Fx�i�_A#ϸ��!8H �ߢ�gQ��&�\ϣ����
�����@��|j��- aɎ��SB�T����8H�j�	e���z}V/�4���c��4"�~��{JI/�Qz]��1J(=����"IÒ�i�$��'Zz�@-=a�&IX�"^#���9�ѭ���I�j"�ֲl �0@�z��4=�]9����`��rT��DE.M8��z���E��\�҈Z�	!���Z`9�i>�x���
	9ua0*�Nj=a����X��	���B�oԐ���;�臡���� a���	!,���PA�+�y�L�B�g���0�6�%XbN�)��t9�ŅO�	���������Q�b���x��t+A��� �TV���9���t�g���` �"�"�h )�E,s�q�
'l�v<W��|�6��ȀX���0:Nvr�HS�������|a��I�=������iH����9jUot嘜�͝��D'��0.�{;��t'�~$����Zåc��K/�IB��c���N1�����:	D�aLsҧl��Oڄ3c�C~5��{�a�9ߢeB����Mx z����pzL�2����=�l�	,��F��`d�h��?q�_mF)���*Ǩ�W�^��򧻲�m !��s|
-G��G���kF�I)<.lh0����M��'\�����&��g�v�+�"Mk̫�[�iZ:��K�����H�MC�ګ�'��(>��74)oB���]�T�q��xy'�����U���*upd톊z*鯟��O�t{�A����1M���}����^�(Rڐ̮�(+@|��#�s�"���n�#	�=�CiCR$�R�PW
�]_�N�4�3�Z� V5D;�{²��H��Bv�7-�P�ՓWˡ�@c�Ҋ���������c�y��o@�~�֊� �1E�̆�d������g��՜�YY#�zܲ�kCc�hV^S^WQ���?�5� 15�?�����L����@�k�JV0Q"��������'�kfM�);�X�����_wJ�?��4���C�u�bA�BU���r�\�a�k3�Ѓ9x3�_��d9=�r�5jww%�P�C�
��p�h�=          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/fall.png-a6f5850f06c1efcf578e3fdb299347b9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://char/art/fall.png"
dest_files=[ "res://.import/fall.png-a6f5850f06c1efcf578e3fdb299347b9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=2.0
     GDSTv  /              WEBPRIFF�  WEBPVP8L�  /u� o`�m�Cʡʣ=�p��4�C8�Cx�G�A�����ȏp�!� ��_���ӹ���s9à�M�bnNR�y²-9'
u��٧���T�ꣿ���\H��8�dp�&>�E�j1���n$)��{LY0=��?�#�(�NI�<��ӱO,438�XH��6�p����� �(k��)�ܠ2��S�V\�Ѫh���V���E�m�b&�E9C�:�.+��],��6@ ntr��d�#�\�b։���|�S�"ȎM5 �@�W�$\o�F�48�"�c5A� �"	y�p�c���r�x�E�o�F�B"�~���z��CM�DR�˭�#���Fqa)��� �xb�<�f���C/T�3��덞���RA��I�&H��̀|�YA��nHt�޺^Ɂ���[k�F��}Z�#��~�	��D�$�)N?tl�7�A��Q�5����#.�#�O��Z�ɀG^i��]�!l�F���Ý�n�s{ ��T�/P�ۛ�8MM�Jq�A1y@�t	xT�NF�?��(e��ʣEtm�2hӜ�ل�z�!X�{5G�_G;�SA�z��*�|�e�©@��I<!�87��-a��s�ڧ4?ǘFQgN����o�Pՙ٥����s7,�_�т�"��&�Ɠ2����fh���,I5�]Y��JE.�6�^�3��H���Ɩ�h!#}�ķ%�uJV����D�� 6'w����C�)u#�����;h=L��i<�Ӆ��� -*ɩ���^�+�d�n@�Z=��-7�D���U�`��@_pa��3�w%hM�vE,!���|W،�,rTo�t���<p�����rW�+�>�U�Q�Ʊ������g6�ׁ���iS�|wU��ΪO\�8���PĹR��E���Սdơ��O%a�H�3x�1(�R$���@L�p�\n[zNMmp�gι[���ߠ����;n�74���3>���:� F0��XW��i�˜�YNds7��Q�k�+6�4�x�Ĺ�xj������m+�`��Ǌ��#�0C��*�%��ԎTub6��\3�n�ήq�M]��2=x\�	����p�j����{m6 i&j7��fL�|^�>{�I������ηk���c�
b����YYbT�4�i�����6�H/�qǴ�,�i��{�Q23%�#T�
�U9�)lkw�d���"_�čI��0i�g�M�j3�g;9M�fpX9�0.��&�����	H��"��� �b���"�Ɖ�TÔ�����0Xf��1��Z�8��"ԛ���1�Y�Jc��Đ���'���)Ę�1��p*U��2�K���0��k�����Is�c+�`�Yb�f!��(��(2�*C>j��4�C�2X���41:u-σ�-��kU�&C�#�!K��#���XcF����y����4��1h��%,�i�%�e� F�ϛջ4n�a��i�a2�8�y�7�o�G`   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/jump.png-ac0e085c4c97f4f19847c48da3edd949.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://char/art/jump.png"
dest_files=[ "res://.import/jump.png-ac0e085c4c97f4f19847c48da3edd949.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST�  /            �  WEBPRIFF�  WEBPVP8L�  /ׂ w`�m�Cʡ�#=�p��4�C8�Cy�G�A�����ȏp�!� ��_����ѹ+��$EVD��+k��6�A�����z���ʓT�6P��o���JU�-���[��3j�Tnŋ�A>����ND�%��$I{���,������o۸C���X���ۮ&����rU���~N��y�1���[r�S�Jz�H����$����D�_��H�$����2<"*�@Y�?�m��l���@3�j@�g��$W5��R����+���ȥ,]o���3<�P嘓�!����j�	n#9��=o�]�w_0���e���֣��Ћ��z$*��˳���0��^޿����v�<�A'��oX�M�˻��׭�I%s��f��"�
yH�D����c�>3�A'qS����o^�-�O��%s��f��D ��W!!:�a_g\��A�?͌�L�|fn��;���k�?=a�BD��-WX.�I�\D�-Β
I��W�ޠ<F�0��	�d��nR�U?��h
��B-.��7"�dn��R�X��@1���4铎�&��+�xi�]L��&�A8�-�!�AG�i��Ӗᨀ+�;r�Fg��Hb.������� �hyִ"oV�,)NqV�)(��/FK2��`���,By�%�Q�\ޖ���cP�g)���Ȓ��������dvk�C��a�\��,ₔ��r{� 9Sa�!ۭ�p�_��H��A˳��i1�V|����=)���`$E[h3���1�У�=CqHIj]�������p!wp����웖��o�4��7��\oI�\Sߏ�Cp4���N�C��l���rB��E�9�mL#��Ӏc{-}I�s.��p�/K�
���̓�����������\H�lBj�ހK�raSS��"�d!#"_g]j��­up�����.t/�� �;zso=º�t�WzE7�Ƨ��aN��{(*Z,%)�34[��)���.-�*0����=�ޮ�]�U(x>�`S����Ѩ����:�nl����F]��Qہ���>��,��z��G�l7�#�a��3���_k~ | �����3����\}�3�9�7�N�����k!r��|�8�"XQ��t�"x�@|��/���f���bo��{��:ZBI75YY�:µ��i�L��;��R ����غ�=�K����|3��I�&��a�r6��*��O��Z^<���4jsH�$>��n���8��J��Z#x]����k�
�ץJa~�:��؊iq�L��&���\��W�	m�tM;s����f^Fb�����Mb�g�v��� �1���Y�8Wd�6*�_yU�]1��㞃5k���W��k�׼�0��x-�`6Cވ|`��rl΂�mt��.ԉ�3S���"ؼ[�YiU�$�
��Ϧv��3E�[ea}2X��u9b3�!�SE�VK��8C�\�wh�K}G�w���"3���@�3)���7��������"��G��V/
@� {IP_BK�<
m��n�ͬ�G~������Q��p�N����X]�$ŶKh٥F��o��%���n{�+ѫ��W7GY��6Uw�E��'�a���kQtzp�#��(b��L�
<<�1����~�L���yԢ�ꡳX�+>�\�*��2W�ʷ���%`�-���n�΂S1��ށ�����4�<8�OH>V_cS�1t:s��H�gMb�G1V��8Ƈ�??k4~����hq:ڪD��#�+� �"Q!��M�PG�?����M���9��A.��_�cԯ�~�8�%z�T+���x�_���-o5Z��2�1:Ce����\�ʥ���P�s��Cw��8�^#8�tKcXaLwo�?�#ب���;��J���K`�dEϠqd�gq�1,��R(�cfV�`$���p�
�.�����I�֙A��}C���0�8@i<����!����B�Qo������M�5�`D�����ƍ��~3F�mc#�QIR��F�*Oy+fF��[�Ņr{U��
�0�X�+8�b�+��vF�R���ߎ�.��D8��g�i�ܙT!h5��)�y`��c��r���c��&̞0��ό�;ǎ�d�$M-p��젚������8�H?���q��pԀQG�x;��_�Z\���N����OV�������pU�Mif��i:HPİoy#*��wbX�����3b����x!Ka��������t:ĺ,�Ag��t��3&� 	Q�����Դe���#�1��:�(+��\����c@Q�#n*�z��KX��[n��㨔.g�I�|/N'0b^�Y��M����	H�\����QR�F@���'��������Y����	���x��6#� �2F'��]A~�,�w-go�8b��Z�����Xw�U)�Y��@�b4��wl���Т}�	�j2:"噰���4g�	v6#s�ޫ`Vv�����q�����,���	Rv|?�Шb< >�SO:��ɿI���)LJG��Xe�x��Fc�؈�\�[D[���Fed;��nZy�pF��^��8>'4���oqHd�#�W}/UE����|�|l
���N��ς�k thh�#q3^�&1��3JF0Mt�S�b�=f����6A���9���YnZ��-t��g�n0,p�G��QA_ 'M���{7�{��J��_�Fy�N����n.�xT��9^�jq�4�SΌS)al6�L��Xg��5�H��h�"�@�j�Q���zc�?S��[�y2;
q�V�X.�ʢ��J���98qz��� 0o|,M
���J�1��o���#;h��U�G�xO��U���8j��Ѻ�+J�f4Wmd�W��>'�8��ރ�ｗ#e;�/�ț�0��{��X��1:N䪫�B�zlı!�+�v	cb��R�64~�*&`T�k��&��
Uq�,qR��a��ź�g��4��h��{P>T���TD�2��7��9�9*�$ ���`�M./1��,��ץ���*�⩱�eڈ��E��)C� 	�JnO��+`�`����ߍ��\0�ĵ��f���͚�d�ި3��x�=nm�^�V��(��	S�D`�5����@M�8qS��1M��|ɋ�l�?4��x�����2��º�
��9�U0���D0��y��������          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/trow.png-d12736916886b2764914dc4d10c4b7bd.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://char/art/trow.png"
dest_files=[ "res://.import/trow.png-d12736916886b2764914dc4d10c4b7bd.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST�   *              WEBPRIFF�  WEBPVP8L�  /�@
 w`�m�Cʡ�#=�p��4�C8�Cy�G�A�����ȏp�!� ��_����ѹ+P~��Q��(nAf@�pKO(�����k甞�\]�����RfO���m�xV�����S������ǈ�Cp#I��=��^��x��$Bh2��� �b)	6�;-F�,R��
H�*��2���F��+`}h�X!2�
����e��K	T@��`XS�"�D��B�U"K���Ĉyr~a�B�,1FYA��}���i�u�Z����/$쒸��I
�r����!�*̑��r^W�,Jh��=ؔ~	��%viAf�M�p�40J.�tR�!Z~^^��T^2�ķt{_F��$�XJD��x�3\.�@�����,~^Y�j-��Kp���ˆ�͙�S$J(%�a�����i¨��#��r.��fT�g&e�m��FV.DA�iY���ǫIPs�匩O��ȃ\�D�\�L�� CVf��ʁ�"�T֥?YL� '����J�!Lv(�AH"���d�(�*Q��L %df�0�ٜv�޳^$&�2àHQvf�������'�m�>0�md����KY���̄�1��b-$#:3�W�n2W�޲.�y� H�-�<KEu�\J�T&���A�TXWJ�3�Y]��ֳ�������ڱs�[o�3$&"(��;�)|�|=5��'�b�����i_��Z|M�����T��C8����#�(�#�'�c���^��{Z/X��fvG�V�5m�u�i��z�����\kd����TE�l�	�9����7�5K���UL+8y��,]M}%���B˾�gm ����%����h���-{Y�VG�֓�~T˺�}x������@��%�o�_Aso�uHU7�Q�s�A�-�V=�1,�Pq�&�1�C�w��uHm،B*��1Jvj٣�
B!G�C����a� ������Z�� p�	�.i�S���e���{�ф�1��uM����5����C�r��n2����t�qov�T�ya����6�]%�C��z:bk�� �����SS`p�X@���l�Q�t&�M��A�-:��'PϱA�l"g/�wOO�����e�7��Q���5�J;�.Yҭ�ʱ�΅-���������[w����/p�#jH��{l���݉��>������������#��_���?r�F�A�qOw�� �����q�v��K�'x,������a��_qR�U�r�����:xǭk�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/turn.png-2a881c0cfe0a1498916e10248d7ab223.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://char/art/turn.png"
dest_files=[ "res://.import/turn.png-2a881c0cfe0a1498916e10248d7ab223.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST  *            �  WEBPRIFF�  WEBPVP8L�  /A
 w`�m�Cʡ�#=�p��4�C8�Cy�G�A�����ȏp�!� ��_����ѹ+Й��Q�����H��ˑ]�UN,��ZJg�X/ ζJ[��w����E3�0C{:vF�U�����~��+w���6�$I�%�2Ϝ�?���_�Կjɥ�,�?��eR/K7�]��,��")OF�gR.�5��1�e1is�R���8�r�a֘���Թ��<Yi=�r���t�~�\~�C����z�!9�Cj|/՜����<YX����0�4
�D����)s}�%VVsH8SZ�!����r�RXw��V�R��	a����%XX`n�V2��e�
���h̲��D͒����Ȳ�1�n�H�2����(�V�����(5������#38��<���^W��G�����f)d�U�!Q斉�#T@�J�Y��K`߬Oԉ�#��*{�r@U�7�ԐK��^ �����t��^��p�� ��!*T}T�>�i����i�#+�Zy��t[�+���0f&魂�טnX�B�CF�+*�˫^�ڰ��k��?7@^�G�U7� nP����rԱ-y��>��G�Yi+x�T0���7t�늭��Pt}��o$��uHz��{���7�u,�wJ>&5>��{n�4hs�ӎ��7\^�U\�񧀝�>F;�~ɲ*z'/��8Η>F�g|[�G�D���`ò���~���~K�?���b�}ҳ�y����`5���ǖ���c�65�H��2��3(\TX�՟f��L'n���\�s���f[e}�˷4n�;�RaeK�.aj��΃�����>n�,i!	j^,���ʮf,�]U�#/#�ʶ��fT��ĎV�$L��@.�9b�-j/���<�#�Ѱkc��&A.��՟҉��.lws�U<�9�������)��bb���2#j;��.J�6������J��B�k5$�J���B��ȼ
�Պ�j�����p�!�D*�=��\�_@?�m�.�Ѯ��IM����=�b";��hAp�(�X#�Z$����5Y�M��.�0��$�j��Y"�u���b���|��<JbAb��:���aDJ9|�qN��h�@���A���)DZ&r#O�3��z� ���G�b� ���HP�J�w=���EV��e�H�w1��Q������nM@<JZ�z:-Բ?�a�1r=�M���DRȣ����No$�>7$@��kǠ}�����(��/4/ǹ	el^��l�`�y���t'~���!�	��b�Z,��<!�F�ǂy��fS���7�,}+d,�KkE����'��f�*�4�ٜc�mVޜ�I��`nn39����FhМ�ZߎM�m�ɢ4���	��:���9�r�YW1M��юjNR,���h�D㱰�}�W�i���>l�v��n��x���}+`k�	/B����6��
;��i�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/walk.png-51165417ca2d15c35e1e5903d73e22e8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://char/art/walk.png"
dest_files=[ "res://.import/walk.png-51165417ca2d15c35e1e5903d73e22e8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDSC            p      ���Ӷ���   ������������Ķ��   ����Ķ��   �����϶�   ����   ������������Ӷ��   ������¶   ��������Ҷ��   ����¶��   �������������������Ķ���   �����������¶���   ���������������¶���   ���Ӷ���   �����������������������¶���   ���������¶�   ���ڶ���   ����¶��   �������������Ӷ�   ������������������   ������������������ض   ���������Ӷ�  �������?      timeout       _on_DestroyTimer_timeout      @      ShowCursor();                            	                        )   	   .   
   4      5      =      J      K      Q      X      a      j      n      3YY;�  V�  YY0�  PQV�  �  �  T�  PQ�  �  T�  PQ�  �  T�  P�  RR�  Q�  �  P�  Q�  �  T�  PQYY0�	  PQX�  V�  .�
  PQT�  PQT�  �  YY0�  PQV�  �  T�  P�  Q�  �  T�  P�  T�  Q�  �  T�  P�	  PQQ�  �  PQY`            [gd_scene load_steps=5 format=2]

[ext_resource path="res://art/cursor_img.png" type="Texture" id=1]
[ext_resource path="res://char/GrabCursor.gd" type="Script" id=2]
[ext_resource path="res://cursor.gd" type="Script" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 10.1821

[node name="Cursor" type="RigidBody2D"]
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
scale = Vector2( 0.610201, 0.688688 )
shape = SubResource( 1 )

[node name="GrabCursor" type="Sprite" parent="."]
scale = Vector2( 0.0259712, 0.0259795 )
texture = ExtResource( 1 )
script = ExtResource( 2 )
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_sky = SubResource( 1 )
 GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Ground.gdc"
               [remap]

path="res://Main.gdc"
 [remap]

path="res://RespawnPos.gdc"
           [remap]

path="res://char/CharController.gdc"
  [remap]

path="res://char/GrabCursor.gdc"
      [remap]

path="res://cursor.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         conrad     application/run/main_scene         res://Main.tscn "   application/boot_splash/show_image              application/boot_splash/bg_color      q�>q�>q�>       application/config/icon         res://icon.png  -   display/window/per_pixel_transparency/allowed         -   display/window/per_pixel_transparency/enabled         +   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      ���>���>���>    )   rendering/environment/default_environment          res://default_env.tres                 