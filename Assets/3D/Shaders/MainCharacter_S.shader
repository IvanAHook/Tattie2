// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1445,x:33006,y:32692,varname:node_1445,prsc:2|diff-4855-RGB,normal-1273-RGB,emission-775-OUT,custl-1043-OUT,clip-3231-R;n:type:ShaderForge.SFN_Tex2d,id:4855,x:31807,y:32502,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,tex:f6bd1eb52599f9541b32d60b4c41ea24,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3231,x:32552,y:34202,ptovrint:False,ptlb:Masking,ptin:_Masking,varname:_Masking,prsc:2,tex:772f0e1376e7fcd42907c523f2af26ca,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1273,x:32329,y:32557,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,tex:278e24ae8d8a6b244a968f40b4eb9711,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7937,x:31807,y:32261,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:_Specular,prsc:2,tex:180ab63eece6fda428ac296381738d9d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9477,x:31683,y:32703,varname:node_9477,prsc:2|A-4855-RGB,B-8933-OUT;n:type:ShaderForge.SFN_Multiply,id:1043,x:32743,y:34330,varname:node_1043,prsc:2|A-1460-OUT,B-5691-RGB,C-3231-G;n:type:ShaderForge.SFN_LightColor,id:5691,x:32386,y:34439,varname:node_5691,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:853,x:32111,y:34218,varname:node_853,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6027,x:32103,y:34433,varname:node_6027,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1460,x:32316,y:34274,varname:node_1460,prsc:2|A-853-OUT,B-6027-OUT;n:type:ShaderForge.SFN_Fresnel,id:4347,x:31745,y:32772,varname:node_4347,prsc:2|EXP-8060-OUT;n:type:ShaderForge.SFN_Slider,id:8060,x:31313,y:32657,ptovrint:False,ptlb:fresnel value,ptin:_fresnelvalue,varname:_fresnelvalue,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:4884,x:31778,y:32919,varname:node_4884,prsc:2|A-4347-OUT,B-9584-RGB;n:type:ShaderForge.SFN_Cubemap,id:9584,x:31474,y:32991,ptovrint:False,ptlb:node_9584,ptin:_node_9584,varname:_node_9584,prsc:2,cube:8d2c0362fde4d1848bd41a7892a55dd5,pvfc:0;n:type:ShaderForge.SFN_Lerp,id:8933,x:31863,y:32944,varname:node_8933,prsc:2|A-4884-OUT,B-8948-OUT,T-6297-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8948,x:31823,y:33030,ptovrint:False,ptlb:value,ptin:_value,varname:_value,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:6297,x:31826,y:33156,ptovrint:False,ptlb:fresnel strength,ptin:_fresnelstrength,varname:_fresnelstrength,prsc:2,min:0,cur:0.3534181,max:1;n:type:ShaderForge.SFN_Color,id:9498,x:32660,y:32460,ptovrint:False,ptlb:node_9498,ptin:_node_9498,varname:_node_9498,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9696,x:32819,y:32565,varname:node_9696,prsc:2|A-9498-RGB,B-4855-A;n:type:ShaderForge.SFN_Vector1,id:2008,x:32713,y:32772,varname:node_2008,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Time,id:8820,x:32104,y:33290,varname:node_8820,prsc:2;n:type:ShaderForge.SFN_Sin,id:6036,x:32302,y:33290,varname:node_6036,prsc:2|IN-8820-T;n:type:ShaderForge.SFN_Multiply,id:775,x:32747,y:33070,varname:node_775,prsc:2|A-2336-OUT,B-5901-OUT;n:type:ShaderForge.SFN_RemapRange,id:5901,x:32469,y:33140,varname:node_5901,prsc:2,frmn:-1,frmx:1,tomn:0.4,tomx:2|IN-6036-OUT;n:type:ShaderForge.SFN_Power,id:9162,x:32353,y:32836,varname:node_9162,prsc:2|VAL-1735-OUT,EXP-9128-OUT;n:type:ShaderForge.SFN_Vector1,id:9128,x:32088,y:32887,varname:node_9128,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:1735,x:32041,y:32710,varname:node_1735,prsc:2|A-4855-A,B-5237-OUT;n:type:ShaderForge.SFN_Vector1,id:5237,x:32146,y:33118,varname:node_5237,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:3104,x:32522,y:32994,varname:node_3104,prsc:2|A-9162-OUT,B-5237-OUT;n:type:ShaderForge.SFN_Clamp01,id:2336,x:32666,y:32878,varname:node_2336,prsc:2|IN-3104-OUT;proporder:7937-1273-3231-4855-8060-9584-8948-6297-9498;pass:END;sub:END;*/

Shader "Shader Forge/MainCharacter_S" {
    Properties {
        _Specular ("Specular", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Masking ("Masking", 2D) = "white" {}
        _Texture ("Texture", 2D) = "white" {}
        _fresnelvalue ("fresnel value", Range(0, 1)) = 1
        _node_9584 ("node_9584", Cube) = "_Skybox" {}
        _value ("value", Float ) = 1
        _fresnelstrength ("fresnel strength", Range(0, 1)) = 0.3534181
        _node_9498 ("node_9498", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Masking; uniform float4 _Masking_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Masking_var = tex2D(_Masking,TRANSFORM_TEX(i.uv0, _Masking));
                clip(_Masking_var.r - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 diffuseColor = _Texture_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_5237 = 0.5;
                float4 node_8820 = _Time + _TimeEditor;
                float node_775 = (saturate((pow((_Texture_var.a+node_5237),2.0)-node_5237))*(sin(node_8820.g)*0.8+1.2));
                float3 emissive = float3(node_775,node_775,node_775);
/// Final Color:
                float3 finalColor = diffuse + emissive;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Masking; uniform float4 _Masking_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Masking_var = tex2D(_Masking,TRANSFORM_TEX(i.uv0, _Masking));
                clip(_Masking_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 diffuseColor = _Texture_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _Masking; uniform float4 _Masking_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Masking_var = tex2D(_Masking,TRANSFORM_TEX(i.uv0, _Masking));
                clip(_Masking_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
