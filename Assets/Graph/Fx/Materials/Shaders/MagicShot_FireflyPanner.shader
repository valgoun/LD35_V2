// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9909,x:33193,y:32740,varname:node_9909,prsc:2|emission-6831-OUT;n:type:ShaderForge.SFN_Tex2d,id:4846,x:31669,y:32794,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_4846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:613,x:32062,y:32828,varname:node_613,prsc:2|A-2908-OUT,B-405-OUT;n:type:ShaderForge.SFN_Tex2d,id:9281,x:32246,y:32828,ptovrint:False,ptlb:Gradient,ptin:_Gradient,varname:node_9281,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-613-OUT;n:type:ShaderForge.SFN_Vector1,id:405,x:31854,y:32978,varname:node_405,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1079,x:32530,y:32655,varname:node_1079,prsc:2|A-5973-OUT,B-4846-R;n:type:ShaderForge.SFN_RemapRange,id:2908,x:31884,y:32828,varname:node_2908,prsc:2,frmn:0,frmx:1,tomn:-0.2,tomx:1|IN-4846-R;n:type:ShaderForge.SFN_Multiply,id:3928,x:32696,y:32836,varname:node_3928,prsc:2|A-1079-OUT,B-8564-RGB;n:type:ShaderForge.SFN_Tex2d,id:8564,x:32378,y:33099,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_8564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4627-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:886,x:32003,y:33110,varname:node_886,prsc:2,sctp:0;n:type:ShaderForge.SFN_VertexColor,id:9550,x:32446,y:32296,varname:node_9550,prsc:2;n:type:ShaderForge.SFN_Normalize,id:4289,x:30854,y:33082,varname:node_4289,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6831,x:32981,y:32837,varname:node_6831,prsc:2|A-3928-OUT,B-9550-A,C-9550-RGB;n:type:ShaderForge.SFN_Color,id:2070,x:32081,y:32571,ptovrint:False,ptlb:FadingColor,ptin:_FadingColor,varname:node_2070,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2110727,c2:0.8970588,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5973,x:32342,y:32567,varname:node_5973,prsc:2|A-2070-RGB,B-9281-RGB,T-9550-A;n:type:ShaderForge.SFN_Panner,id:4627,x:32190,y:33110,varname:node_4627,prsc:2,spu:0,spv:1|UVIN-886-UVOUT;proporder:4846-9281-8564-2070;pass:END;sub:END;*/

Shader "L35/MagicShot_FireflyPanner" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Gradient ("Gradient", 2D) = "white" {}
        _Cloud ("Cloud", 2D) = "white" {}
        _FadingColor ("FadingColor", Color) = (0.2110727,0.8970588,0,1)
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            uniform float4 _FadingColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
////// Lighting:
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float2 node_613 = float2((_Texture_var.r*1.2+-0.2),0.0);
                float4 _Gradient_var = tex2D(_Gradient,TRANSFORM_TEX(node_613, _Gradient));
                float4 node_9962 = _Time + _TimeEditor;
                float2 node_4627 = (i.screenPos.rg+node_9962.g*float2(0,1));
                float4 _Cloud_var = tex2D(_Cloud,TRANSFORM_TEX(node_4627, _Cloud));
                float3 emissive = (((lerp(_FadingColor.rgb,_Gradient_var.rgb,i.vertexColor.a)*_Texture_var.r)*_Cloud_var.rgb)*i.vertexColor.a*i.vertexColor.rgb);
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
