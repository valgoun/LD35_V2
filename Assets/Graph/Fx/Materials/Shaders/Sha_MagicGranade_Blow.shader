// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9899,x:32720,y:32711,varname:node_9899,prsc:2|emission-6007-OUT;n:type:ShaderForge.SFN_Fresnel,id:5598,x:32191,y:32588,varname:node_5598,prsc:2|EXP-7214-OUT;n:type:ShaderForge.SFN_Multiply,id:6007,x:32406,y:32813,varname:node_6007,prsc:2|A-9631-OUT,B-8294-R,C-5003-RGB,D-5003-A;n:type:ShaderForge.SFN_Tex2d,id:8294,x:32180,y:32973,ptovrint:False,ptlb:node_8294,ptin:_node_8294,varname:node_8294,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:1891,x:31691,y:32770,varname:node_1891,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7214,x:31941,y:32706,varname:node_7214,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:5449,x:31617,y:33057,varname:node_5449,prsc:2,v1:1;n:type:ShaderForge.SFN_Fresnel,id:4183,x:31860,y:33023,varname:node_4183,prsc:2|EXP-5449-OUT;n:type:ShaderForge.SFN_ArcTan2,id:2375,x:31989,y:33196,varname:node_2375,prsc:2,attp:0;n:type:ShaderForge.SFN_Multiply,id:9631,x:32347,y:32659,varname:node_9631,prsc:2|A-5598-OUT,B-9416-OUT;n:type:ShaderForge.SFN_Vector1,id:9416,x:32121,y:32772,varname:node_9416,prsc:2,v1:2;n:type:ShaderForge.SFN_VertexColor,id:5003,x:32142,y:32829,varname:node_5003,prsc:2;proporder:8294;pass:END;sub:END;*/

Shader "Custom/Sha_MagicGranade_Blow" {
    Properties {
        _node_8294 ("node_8294", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
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
            uniform sampler2D _node_8294; uniform float4 _node_8294_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_8294_var = tex2D(_node_8294,TRANSFORM_TEX(i.uv0, _node_8294));
                float3 emissive = ((pow(1.0-max(0,dot(normalDirection, viewDirection)),1.0)*2.0)*_node_8294_var.r*i.vertexColor.rgb*i.vertexColor.a);
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
