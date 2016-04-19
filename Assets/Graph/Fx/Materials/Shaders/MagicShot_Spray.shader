// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:7539,x:33117,y:32667,varname:node_7539,prsc:2|emission-5666-OUT;n:type:ShaderForge.SFN_TexCoord,id:1575,x:31546,y:32720,varname:node_1575,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:387,x:32373,y:32941,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1585-OUT;n:type:ShaderForge.SFN_Tex2d,id:9684,x:32238,y:32703,ptovrint:False,ptlb:Default,ptin:_Default,varname:node_9684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1575-UVOUT;n:type:ShaderForge.SFN_Append,id:1585,x:32206,y:32941,varname:node_1585,prsc:2|A-2405-OUT,B-4202-OUT;n:type:ShaderForge.SFN_Time,id:4376,x:31546,y:32955,varname:node_4376,prsc:2;n:type:ShaderForge.SFN_Add,id:2405,x:32032,y:32903,varname:node_2405,prsc:2|A-1575-U,B-4376-T,C-3404-R;n:type:ShaderForge.SFN_Add,id:4202,x:32032,y:33039,varname:node_4202,prsc:2|A-1575-V,B-4376-T,C-3404-R;n:type:ShaderForge.SFN_Multiply,id:4784,x:32539,y:32777,varname:node_4784,prsc:2|A-9684-RGB,B-387-R;n:type:ShaderForge.SFN_Multiply,id:5666,x:32811,y:32749,varname:node_5666,prsc:2|A-3764-A,B-4784-OUT,C-3764-RGB,D-8834-OUT,E-1810-OUT;n:type:ShaderForge.SFN_Tex2d,id:3404,x:31832,y:33093,ptovrint:False,ptlb:Cloud_copy,ptin:_Cloud_copy,varname:_Cloud_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1575-UVOUT;n:type:ShaderForge.SFN_Color,id:3764,x:32650,y:32537,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_3764,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Fresnel,id:4647,x:32647,y:33082,varname:node_4647,prsc:2|EXP-1961-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1961,x:32471,y:33172,ptovrint:False,ptlb:FresnelExposent,ptin:_FresnelExposent,varname:node_1961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.18;n:type:ShaderForge.SFN_OneMinus,id:1810,x:32818,y:33036,varname:node_1810,prsc:2|IN-4647-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8834,x:32627,y:32941,ptovrint:False,ptlb:Multiplier,ptin:_Multiplier,varname:node_8834,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:9684-387-3404-3764-1961-8834;pass:END;sub:END;*/

Shader "Unlit/MagicShot_Spray" {
    Properties {
        _Default ("Default", 2D) = "white" {}
        _Cloud ("Cloud", 2D) = "white" {}
        _Cloud_copy ("Cloud_copy", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _FresnelExposent ("FresnelExposent", Float ) = 0.18
        _Multiplier ("Multiplier", Float ) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            uniform sampler2D _Default; uniform float4 _Default_ST;
            uniform sampler2D _Cloud_copy; uniform float4 _Cloud_copy_ST;
            uniform float4 _Color;
            uniform float _FresnelExposent;
            uniform float _Multiplier;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Default_var = tex2D(_Default,TRANSFORM_TEX(i.uv0, _Default));
                float4 node_4376 = _Time + _TimeEditor;
                float4 _Cloud_copy_var = tex2D(_Cloud_copy,TRANSFORM_TEX(i.uv0, _Cloud_copy));
                float2 node_1585 = float2((i.uv0.r+node_4376.g+_Cloud_copy_var.r),(i.uv0.g+node_4376.g+_Cloud_copy_var.r));
                float4 _Cloud_var = tex2D(_Cloud,TRANSFORM_TEX(node_1585, _Cloud));
                float node_1810 = (1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExposent));
                float3 emissive = (_Color.a*(_Default_var.rgb*_Cloud_var.r)*_Color.rgb*_Multiplier*node_1810);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
