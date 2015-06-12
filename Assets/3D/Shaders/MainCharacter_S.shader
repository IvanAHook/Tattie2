// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1445,x:32994,y:32697,varname:node_1445,prsc:2|normal-1273-RGB,emission-9477-OUT,custl-1043-OUT,clip-3231-R;n:type:ShaderForge.SFN_Tex2d,id:4855,x:31984,y:32489,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,tex:8b95382807a1a7f42af1365449d8e5d4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3231,x:32293,y:33263,ptovrint:False,ptlb:Masking,ptin:_Masking,varname:_Masking,prsc:2,tex:772f0e1376e7fcd42907c523f2af26ca,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1273,x:32329,y:32557,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,tex:278e24ae8d8a6b244a968f40b4eb9711,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7937,x:31807,y:32261,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:_Specular,prsc:2,tex:180ab63eece6fda428ac296381738d9d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9477,x:32487,y:32789,varname:node_9477,prsc:2|A-4855-RGB,B-8933-OUT;n:type:ShaderForge.SFN_Multiply,id:1043,x:32484,y:33391,varname:node_1043,prsc:2|A-1460-OUT,B-5691-RGB,C-3231-G;n:type:ShaderForge.SFN_LightColor,id:5691,x:32127,y:33500,varname:node_5691,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:853,x:31852,y:33279,varname:node_853,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6027,x:31844,y:33494,varname:node_6027,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1460,x:32057,y:33335,varname:node_1460,prsc:2|A-853-OUT,B-6027-OUT;n:type:ShaderForge.SFN_Fresnel,id:4347,x:31745,y:32772,varname:node_4347,prsc:2|EXP-8060-OUT;n:type:ShaderForge.SFN_Slider,id:8060,x:31313,y:32657,ptovrint:False,ptlb:fresnel value,ptin:_fresnelvalue,varname:_fresnelvalue,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:4884,x:31976,y:32776,varname:node_4884,prsc:2|A-4347-OUT,B-9584-RGB;n:type:ShaderForge.SFN_Cubemap,id:9584,x:31474,y:32991,ptovrint:False,ptlb:node_9584,ptin:_node_9584,varname:_node_9584,prsc:2,cube:8d2c0362fde4d1848bd41a7892a55dd5,pvfc:0;n:type:ShaderForge.SFN_Lerp,id:8933,x:32233,y:32930,varname:node_8933,prsc:2|A-4884-OUT,B-8948-OUT,T-6297-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8948,x:31823,y:33030,ptovrint:False,ptlb:value,ptin:_value,varname:_value,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:6297,x:31826,y:33156,ptovrint:False,ptlb:fresnel strength,ptin:_fresnelstrength,varname:_fresnelstrength,prsc:2,min:0,cur:0.3534181,max:1;proporder:7937-1273-3231-4855-8060-9584-8948-6297;pass:END;sub:END;*/

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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Masking; uniform float4 _Masking_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _fresnelvalue;
            uniform samplerCUBE _node_9584;
            uniform float _value;
            uniform float _fresnelstrength;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Masking_var = tex2D(_Masking,TRANSFORM_TEX(i.uv0, _Masking));
                clip(_Masking_var.r - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 emissive = (_Texture_var.rgb*lerp((pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnelvalue)*texCUBE(_node_9584,viewReflectDirection).rgb),float3(_value,_value,_value),_fresnelstrength));
                float3 finalColor = emissive + ((attenuation*0.5)*_LightColor0.rgb*_Masking_var.g);
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Masking; uniform float4 _Masking_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _fresnelvalue;
            uniform samplerCUBE _node_9584;
            uniform float _value;
            uniform float _fresnelstrength;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Masking_var = tex2D(_Masking,TRANSFORM_TEX(i.uv0, _Masking));
                clip(_Masking_var.r - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = ((attenuation*0.5)*_LightColor0.rgb*_Masking_var.g);
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
