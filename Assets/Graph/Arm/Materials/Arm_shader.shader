// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:34374,y:32832,varname:node_2865,prsc:2|diff-2493-OUT,spec-7520-OUT,gloss-3779-OUT,normal-9700-OUT,emission-349-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31899,y:32449,ptovrint:True,ptlb:arm01-color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c095feaa5e70c104db4e895d14919b80,ntxv:2,isnm:False|UVIN-4317-OUT;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31900,y:33194,ptovrint:True,ptlb:arm01_normal,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fde0387a754574c469e363931bb91256,ntxv:3,isnm:True|UVIN-4317-OUT;n:type:ShaderForge.SFN_TexCoord,id:2206,x:30083,y:32836,varname:node_2206,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:6561,x:30083,y:33023,varname:node_6561,prsc:2,uv:1;n:type:ShaderForge.SFN_Tex2d,id:9585,x:31900,y:32636,ptovrint:False,ptlb:arm02-color,ptin:_arm02color,varname:node_9585,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c7c17cb81af7d4746a88e4cd3e0c122e,ntxv:2,isnm:False|UVIN-9844-OUT;n:type:ShaderForge.SFN_Lerp,id:391,x:32410,y:32474,varname:node_391,prsc:2|A-7736-RGB,B-9585-RGB,T-7814-OUT;n:type:ShaderForge.SFN_TexCoord,id:4774,x:30083,y:33215,varname:node_4774,prsc:2,uv:2;n:type:ShaderForge.SFN_Tex2d,id:2873,x:31900,y:32828,ptovrint:False,ptlb:arm03-color,ptin:_arm03color,varname:node_2873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1d8f1a5a00f97ff408329129012daee3,ntxv:2,isnm:False|UVIN-9653-OUT;n:type:ShaderForge.SFN_Lerp,id:6743,x:32991,y:32659,varname:node_6743,prsc:2|A-6041-OUT,B-2873-RGB,T-4716-OUT;n:type:ShaderForge.SFN_Slider,id:7814,x:31638,y:32011,ptovrint:False,ptlb:lerp_arm01-arm02,ptin:_lerp_arm01arm02,varname:node_7814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4716,x:31677,y:33959,ptovrint:False,ptlb:lerp_arm01&02-arm03,ptin:_lerp_arm0102arm03,varname:node_4716,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:7520,x:34119,y:32850,varname:node_7520,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1923,x:33635,y:32461,varname:node_1923,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Tex2d,id:9031,x:31900,y:33390,ptovrint:False,ptlb:arm02_normal,ptin:_arm02_normal,varname:node_9031,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4108115bb7ec89444a0cdb5bda51e7bb,ntxv:3,isnm:True|UVIN-9844-OUT;n:type:ShaderForge.SFN_Tex2d,id:4670,x:31900,y:33594,ptovrint:False,ptlb:arm_03_normal,ptin:_arm_03_normal,varname:node_4670,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d83a9760537af0041a8e6bcc1d7fc508,ntxv:3,isnm:True|UVIN-9653-OUT;n:type:ShaderForge.SFN_Lerp,id:5013,x:32286,y:33266,varname:node_5013,prsc:2|A-5964-RGB,B-9031-RGB,T-7814-OUT;n:type:ShaderForge.SFN_Lerp,id:7207,x:32742,y:33552,varname:node_7207,prsc:2|A-5013-OUT,B-4670-RGB,T-4716-OUT;n:type:ShaderForge.SFN_ComponentMask,id:291,x:33156,y:33741,varname:node_291,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-7207-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6767,x:33147,y:33896,varname:node_6767,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7207-OUT;n:type:ShaderForge.SFN_OneMinus,id:8591,x:33340,y:33896,varname:node_8591,prsc:2|IN-6767-OUT;n:type:ShaderForge.SFN_Add,id:3997,x:30593,y:31995,varname:node_3997,prsc:2|A-2206-UVOUT,B-2709-OUT;n:type:ShaderForge.SFN_Lerp,id:4317,x:31174,y:32778,varname:node_4317,prsc:2|A-2206-UVOUT,B-3997-OUT,T-6713-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3112,x:29206,y:32175,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_3112,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bf0ae9faa585bce498b481ee6da4f566,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2097,x:29682,y:32169,varname:node_2097,prsc:2,tex:bf0ae9faa585bce498b481ee6da4f566,ntxv:0,isnm:False|UVIN-1526-OUT,TEX-3112-TEX;n:type:ShaderForge.SFN_Sin,id:6713,x:31843,y:31742,varname:node_6713,prsc:2|IN-9521-OUT;n:type:ShaderForge.SFN_Multiply,id:9521,x:31607,y:31742,varname:node_9521,prsc:2|A-8664-OUT,B-7814-OUT;n:type:ShaderForge.SFN_Pi,id:8664,x:31729,y:31780,varname:node_8664,prsc:2;n:type:ShaderForge.SFN_Lerp,id:9844,x:31174,y:32950,varname:node_9844,prsc:2|A-6561-UVOUT,B-6220-OUT,T-6713-OUT;n:type:ShaderForge.SFN_Add,id:6220,x:30593,y:32179,varname:node_6220,prsc:2|A-6561-UVOUT,B-2709-OUT;n:type:ShaderForge.SFN_Lerp,id:6041,x:32706,y:32526,varname:node_6041,prsc:2|A-4545-OUT,B-391-OUT,T-8562-OUT;n:type:ShaderForge.SFN_Color,id:9991,x:29958,y:31320,ptovrint:False,ptlb:UnderSkinColor,ptin:_UnderSkinColor,varname:node_9991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.491,c2:0.172,c3:0.228,c4:1;n:type:ShaderForge.SFN_Lerp,id:8562,x:32410,y:32604,varname:node_8562,prsc:2|A-7736-A,B-9585-A,T-7814-OUT;n:type:ShaderForge.SFN_Lerp,id:5464,x:32991,y:32788,varname:node_5464,prsc:2|A-8562-OUT,B-2873-A,T-4716-OUT;n:type:ShaderForge.SFN_Lerp,id:2493,x:33278,y:32731,varname:node_2493,prsc:2|A-4545-OUT,B-6743-OUT,T-5464-OUT;n:type:ShaderForge.SFN_Add,id:7093,x:30593,y:32348,varname:node_7093,prsc:2|A-4774-UVOUT,B-2709-OUT;n:type:ShaderForge.SFN_Lerp,id:9653,x:31174,y:33130,varname:node_9653,prsc:2|A-4774-UVOUT,B-7093-OUT,T-2264-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2709,x:29911,y:32169,varname:node_2709,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2097-RGB;n:type:ShaderForge.SFN_Sin,id:2264,x:31189,y:33942,varname:node_2264,prsc:2|IN-5784-OUT;n:type:ShaderForge.SFN_Multiply,id:5784,x:31031,y:33942,varname:node_5784,prsc:2|A-3371-OUT,B-4716-OUT;n:type:ShaderForge.SFN_Pi,id:3371,x:30838,y:33942,varname:node_3371,prsc:2;n:type:ShaderForge.SFN_Vector3,id:3491,x:29958,y:31718,varname:node_3491,prsc:2,v1:0.5019608,v2:0.5019608,v3:1;n:type:ShaderForge.SFN_Lerp,id:1264,x:32565,y:33237,varname:node_1264,prsc:2|A-4961-OUT,B-5013-OUT,T-8562-OUT;n:type:ShaderForge.SFN_Lerp,id:9700,x:33180,y:33536,varname:node_9700,prsc:2|A-4961-OUT,B-7207-OUT,T-5464-OUT;n:type:ShaderForge.SFN_Lerp,id:6846,x:32305,y:36082,varname:node_6846,prsc:2;n:type:ShaderForge.SFN_Lerp,id:738,x:32433,y:36210,varname:node_738,prsc:2;n:type:ShaderForge.SFN_Lerp,id:7533,x:32369,y:36146,varname:node_7533,prsc:2;n:type:ShaderForge.SFN_Lerp,id:8866,x:32497,y:36274,varname:node_8866,prsc:2;n:type:ShaderForge.SFN_Get,id:4961,x:33239,y:33016,varname:node_4961,prsc:2|IN-8721-OUT;n:type:ShaderForge.SFN_Set,id:8721,x:30230,y:31558,varname:BACKNORMAL,prsc:2|IN-1269-RGB;n:type:ShaderForge.SFN_Set,id:5388,x:30230,y:31317,varname:BACKCOLOR,prsc:2|IN-9991-RGB;n:type:ShaderForge.SFN_Get,id:4545,x:32892,y:32117,varname:node_4545,prsc:2|IN-5388-OUT;n:type:ShaderForge.SFN_Get,id:9395,x:33589,y:32606,varname:node_9395,prsc:2|IN-245-OUT;n:type:ShaderForge.SFN_Set,id:245,x:30345,y:32005,varname:BACKEMIT,prsc:2|IN-5844-OUT;n:type:ShaderForge.SFN_Lerp,id:349,x:33815,y:32643,varname:node_349,prsc:2|A-9395-OUT,B-9893-OUT,T-5464-OUT;n:type:ShaderForge.SFN_Vector1,id:9893,x:33610,y:32658,varname:node_9893,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5844,x:30145,y:32005,varname:node_5844,prsc:2|A-4112-OUT,B-2709-OUT;n:type:ShaderForge.SFN_Tex2d,id:6460,x:29128,y:31839,varname:node_6460,prsc:2,tex:bf0ae9faa585bce498b481ee6da4f566,ntxv:0,isnm:False|TEX-3112-TEX;n:type:ShaderForge.SFN_Tex2d,id:8895,x:29891,y:31837,varname:node_8895,prsc:2,tex:bf0ae9faa585bce498b481ee6da4f566,ntxv:0,isnm:False|UVIN-6343-UVOUT,TEX-3112-TEX;n:type:ShaderForge.SFN_Panner,id:6343,x:29688,y:31837,varname:node_6343,prsc:2,spu:0.1,spv:0.1|UVIN-594-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5001,x:29330,y:31839,varname:node_5001,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6460-RGB;n:type:ShaderForge.SFN_Multiply,id:1526,x:29682,y:32353,varname:node_1526,prsc:2|A-9396-UVOUT,B-3990-OUT;n:type:ShaderForge.SFN_Vector1,id:3990,x:29206,y:32093,varname:node_3990,prsc:2,v1:3;n:type:ShaderForge.SFN_TexCoord,id:9396,x:29377,y:32324,varname:node_9396,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:594,x:29520,y:31839,varname:node_594,prsc:2|A-5001-OUT,B-3990-OUT;n:type:ShaderForge.SFN_Lerp,id:3779,x:33815,y:32446,varname:node_3779,prsc:2|A-4432-OUT,B-1923-OUT,T-5464-OUT;n:type:ShaderForge.SFN_Vector1,id:9915,x:33455,y:32295,varname:node_9915,prsc:2,v1:0.5;n:type:ShaderForge.SFN_RemapRange,id:4112,x:30074,y:31837,varname:node_4112,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.5|IN-8895-RGB;n:type:ShaderForge.SFN_Set,id:846,x:30345,y:31881,varname:BACKROUGH,prsc:2|IN-8895-R;n:type:ShaderForge.SFN_Get,id:1037,x:33366,y:32379,varname:node_1037,prsc:2|IN-846-OUT;n:type:ShaderForge.SFN_Multiply,id:4432,x:33635,y:32340,varname:node_4432,prsc:2|A-9915-OUT,B-4206-OUT;n:type:ShaderForge.SFN_OneMinus,id:4206,x:33498,y:32379,varname:node_4206,prsc:2|IN-1037-OUT;n:type:ShaderForge.SFN_Tex2d,id:5529,x:29158,y:32476,ptovrint:False,ptlb:node_5529,ptin:_node_5529,varname:node_5529,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1269,x:29958,y:31557,ptovrint:False,ptlb:Noise_Normal,ptin:_Noise_Normal,varname:node_1269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6343-UVOUT;proporder:4716-7814-7736-9585-2873-5964-9031-4670-9991-3112-1269;pass:END;sub:END;*/

Shader "Shader Forge/Arm_shader" {
    Properties {
        _lerp_arm0102arm03 ("lerp_arm01&02-arm03", Range(0, 1)) = 1
        _lerp_arm01arm02 ("lerp_arm01-arm02", Range(0, 1)) = 0
        _MainTex ("arm01-color", 2D) = "black" {}
        _arm02color ("arm02-color", 2D) = "black" {}
        _arm03color ("arm03-color", 2D) = "black" {}
        _BumpMap ("arm01_normal", 2D) = "bump" {}
        _arm02_normal ("arm02_normal", 2D) = "bump" {}
        _arm_03_normal ("arm_03_normal", 2D) = "bump" {}
        _UnderSkinColor ("UnderSkinColor", Color) = (0.491,0.172,0.228,1)
        _Noise ("Noise", 2D) = "white" {}
        _Noise_Normal ("Noise_Normal", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _arm02color; uniform float4 _arm02color_ST;
            uniform sampler2D _arm03color; uniform float4 _arm03color_ST;
            uniform float _lerp_arm01arm02;
            uniform float _lerp_arm0102arm03;
            uniform sampler2D _arm02_normal; uniform float4 _arm02_normal_ST;
            uniform sampler2D _arm_03_normal; uniform float4 _arm_03_normal_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float4 _UnderSkinColor;
            uniform sampler2D _Noise_Normal; uniform float4 _Noise_Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1463 = _Time + _TimeEditor;
                float4 node_6460 = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_3990 = 3.0;
                float2 node_6343 = ((node_6460.rgb.rb*node_3990)+node_1463.g*float2(0.1,0.1));
                float4 _Noise_Normal_var = tex2D(_Noise_Normal,TRANSFORM_TEX(node_6343, _Noise_Normal));
                float3 BACKNORMAL = _Noise_Normal_var.rgb;
                float3 node_4961 = BACKNORMAL;
                float2 node_1526 = (i.uv0*node_3990);
                float4 node_2097 = tex2D(_Noise,TRANSFORM_TEX(node_1526, _Noise));
                float node_2709 = node_2097.rgb.g;
                float node_6713 = sin((3.141592654*_lerp_arm01arm02));
                float2 node_4317 = lerp(i.uv0,(i.uv0+node_2709),node_6713);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_4317, _BumpMap)));
                float2 node_9844 = lerp(i.uv1,(i.uv1+node_2709),node_6713);
                float3 _arm02_normal_var = UnpackNormal(tex2D(_arm02_normal,TRANSFORM_TEX(node_9844, _arm02_normal)));
                float3 node_5013 = lerp(_BumpMap_var.rgb,_arm02_normal_var.rgb,_lerp_arm01arm02);
                float2 node_9653 = lerp(i.uv2,(i.uv2+node_2709),sin((3.141592654*_lerp_arm0102arm03)));
                float3 _arm_03_normal_var = UnpackNormal(tex2D(_arm_03_normal,TRANSFORM_TEX(node_9653, _arm_03_normal)));
                float3 node_7207 = lerp(node_5013,_arm_03_normal_var.rgb,_lerp_arm0102arm03);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4317, _MainTex));
                float4 _arm02color_var = tex2D(_arm02color,TRANSFORM_TEX(node_9844, _arm02color));
                float node_8562 = lerp(_MainTex_var.a,_arm02color_var.a,_lerp_arm01arm02);
                float4 _arm03color_var = tex2D(_arm03color,TRANSFORM_TEX(node_9653, _arm03color));
                float node_5464 = lerp(node_8562,_arm03color_var.a,_lerp_arm0102arm03);
                float3 normalLocal = lerp(node_4961,node_7207,node_5464);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_8895 = tex2D(_Noise,TRANSFORM_TEX(node_6343, _Noise));
                float BACKROUGH = node_8895.r;
                float gloss = lerp((0.5*(1.0 - BACKROUGH)),0.2,node_5464);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 BACKCOLOR = _UnderSkinColor.rgb;
                float3 node_4545 = BACKCOLOR;
                float3 diffuseColor = lerp(node_4545,lerp(lerp(node_4545,lerp(_MainTex_var.rgb,_arm02color_var.rgb,_lerp_arm01arm02),node_8562),_arm03color_var.rgb,_lerp_arm0102arm03),node_5464); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 BACKEMIT = ((node_8895.rgb*0.5+0.0)*node_2709);
                float node_9893 = 0.0;
                float3 emissive = lerp(BACKEMIT,float3(node_9893,node_9893,node_9893),node_5464);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _arm02color; uniform float4 _arm02color_ST;
            uniform sampler2D _arm03color; uniform float4 _arm03color_ST;
            uniform float _lerp_arm01arm02;
            uniform float _lerp_arm0102arm03;
            uniform sampler2D _arm02_normal; uniform float4 _arm02_normal_ST;
            uniform sampler2D _arm_03_normal; uniform float4 _arm_03_normal_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float4 _UnderSkinColor;
            uniform sampler2D _Noise_Normal; uniform float4 _Noise_Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9151 = _Time + _TimeEditor;
                float4 node_6460 = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_3990 = 3.0;
                float2 node_6343 = ((node_6460.rgb.rb*node_3990)+node_9151.g*float2(0.1,0.1));
                float4 _Noise_Normal_var = tex2D(_Noise_Normal,TRANSFORM_TEX(node_6343, _Noise_Normal));
                float3 BACKNORMAL = _Noise_Normal_var.rgb;
                float3 node_4961 = BACKNORMAL;
                float2 node_1526 = (i.uv0*node_3990);
                float4 node_2097 = tex2D(_Noise,TRANSFORM_TEX(node_1526, _Noise));
                float node_2709 = node_2097.rgb.g;
                float node_6713 = sin((3.141592654*_lerp_arm01arm02));
                float2 node_4317 = lerp(i.uv0,(i.uv0+node_2709),node_6713);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_4317, _BumpMap)));
                float2 node_9844 = lerp(i.uv1,(i.uv1+node_2709),node_6713);
                float3 _arm02_normal_var = UnpackNormal(tex2D(_arm02_normal,TRANSFORM_TEX(node_9844, _arm02_normal)));
                float3 node_5013 = lerp(_BumpMap_var.rgb,_arm02_normal_var.rgb,_lerp_arm01arm02);
                float2 node_9653 = lerp(i.uv2,(i.uv2+node_2709),sin((3.141592654*_lerp_arm0102arm03)));
                float3 _arm_03_normal_var = UnpackNormal(tex2D(_arm_03_normal,TRANSFORM_TEX(node_9653, _arm_03_normal)));
                float3 node_7207 = lerp(node_5013,_arm_03_normal_var.rgb,_lerp_arm0102arm03);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4317, _MainTex));
                float4 _arm02color_var = tex2D(_arm02color,TRANSFORM_TEX(node_9844, _arm02color));
                float node_8562 = lerp(_MainTex_var.a,_arm02color_var.a,_lerp_arm01arm02);
                float4 _arm03color_var = tex2D(_arm03color,TRANSFORM_TEX(node_9653, _arm03color));
                float node_5464 = lerp(node_8562,_arm03color_var.a,_lerp_arm0102arm03);
                float3 normalLocal = lerp(node_4961,node_7207,node_5464);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_8895 = tex2D(_Noise,TRANSFORM_TEX(node_6343, _Noise));
                float BACKROUGH = node_8895.r;
                float gloss = lerp((0.5*(1.0 - BACKROUGH)),0.2,node_5464);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 BACKCOLOR = _UnderSkinColor.rgb;
                float3 node_4545 = BACKCOLOR;
                float3 diffuseColor = lerp(node_4545,lerp(lerp(node_4545,lerp(_MainTex_var.rgb,_arm02color_var.rgb,_lerp_arm01arm02),node_8562),_arm03color_var.rgb,_lerp_arm0102arm03),node_5464); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _arm02color; uniform float4 _arm02color_ST;
            uniform sampler2D _arm03color; uniform float4 _arm03color_ST;
            uniform float _lerp_arm01arm02;
            uniform float _lerp_arm0102arm03;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float4 _UnderSkinColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_227 = _Time + _TimeEditor;
                float4 node_6460 = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_3990 = 3.0;
                float2 node_6343 = ((node_6460.rgb.rb*node_3990)+node_227.g*float2(0.1,0.1));
                float4 node_8895 = tex2D(_Noise,TRANSFORM_TEX(node_6343, _Noise));
                float2 node_1526 = (i.uv0*node_3990);
                float4 node_2097 = tex2D(_Noise,TRANSFORM_TEX(node_1526, _Noise));
                float node_2709 = node_2097.rgb.g;
                float3 BACKEMIT = ((node_8895.rgb*0.5+0.0)*node_2709);
                float node_9893 = 0.0;
                float node_6713 = sin((3.141592654*_lerp_arm01arm02));
                float2 node_4317 = lerp(i.uv0,(i.uv0+node_2709),node_6713);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4317, _MainTex));
                float2 node_9844 = lerp(i.uv1,(i.uv1+node_2709),node_6713);
                float4 _arm02color_var = tex2D(_arm02color,TRANSFORM_TEX(node_9844, _arm02color));
                float node_8562 = lerp(_MainTex_var.a,_arm02color_var.a,_lerp_arm01arm02);
                float2 node_9653 = lerp(i.uv2,(i.uv2+node_2709),sin((3.141592654*_lerp_arm0102arm03)));
                float4 _arm03color_var = tex2D(_arm03color,TRANSFORM_TEX(node_9653, _arm03color));
                float node_5464 = lerp(node_8562,_arm03color_var.a,_lerp_arm0102arm03);
                o.Emission = lerp(BACKEMIT,float3(node_9893,node_9893,node_9893),node_5464);
                
                float3 BACKCOLOR = _UnderSkinColor.rgb;
                float3 node_4545 = BACKCOLOR;
                float3 diffColor = lerp(node_4545,lerp(lerp(node_4545,lerp(_MainTex_var.rgb,_arm02color_var.rgb,_lerp_arm01arm02),node_8562),_arm03color_var.rgb,_lerp_arm0102arm03),node_5464);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float BACKROUGH = node_8895.r;
                float roughness = 1.0 - lerp((0.5*(1.0 - BACKROUGH)),0.2,node_5464);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
