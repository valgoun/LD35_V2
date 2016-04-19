// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9909,x:32719,y:32712,varname:node_9909,prsc:2|emission-1079-OUT;n:type:ShaderForge.SFN_Tex2d,id:4846,x:31669,y:32794,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_4846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:613,x:32062,y:32828,varname:node_613,prsc:2|A-2908-OUT,B-405-OUT;n:type:ShaderForge.SFN_Tex2d,id:9281,x:32321,y:32825,ptovrint:False,ptlb:Gradient,ptin:_Gradient,varname:node_9281,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-613-OUT;n:type:ShaderForge.SFN_Vector1,id:405,x:31854,y:32978,varname:node_405,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1079,x:32488,y:32723,varname:node_1079,prsc:2|A-9281-RGB,B-4846-R,C-2989-RGB,D-2989-A;n:type:ShaderForge.SFN_RemapRange,id:2908,x:31864,y:32828,varname:node_2908,prsc:2,frmn:0,frmx:1,tomn:-0.2,tomx:1|IN-4846-R;n:type:ShaderForge.SFN_VertexColor,id:2989,x:32259,y:32641,varname:node_2989,prsc:2;proporder:4846-9281;pass:END;sub:END;*/

Shader "L35/MagicWut" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Gradient ("Gradient", 2D) = "white" {}
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float2 node_613 = float2((_Texture_var.r*1.2+-0.2),0.0);
                float4 _Gradient_var = tex2D(_Gradient,TRANSFORM_TEX(node_613, _Gradient));
                float3 emissive = (_Gradient_var.rgb*_Texture_var.r*i.vertexColor.rgb*i.vertexColor.a);
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
