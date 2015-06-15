// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1173,x:32966,y:32752,varname:node_1173,prsc:2|diff-1021-RGB,normal-1321-RGB,alpha-6321-OUT,clip-6342-R;n:type:ShaderForge.SFN_FragmentPosition,id:4233,x:30986,y:32071,varname:node_4233,prsc:2;n:type:ShaderForge.SFN_Subtract,id:402,x:31275,y:32184,varname:node_402,prsc:2|A-4233-XYZ,B-7461-XYZ;n:type:ShaderForge.SFN_Normalize,id:8478,x:31460,y:32184,varname:node_8478,prsc:2|IN-402-OUT;n:type:ShaderForge.SFN_Dot,id:3377,x:31671,y:32271,varname:node_3377,prsc:2,dt:4|A-8478-OUT,B-9515-XYZ;n:type:ShaderForge.SFN_Power,id:6321,x:32513,y:33205,varname:node_6321,prsc:2|VAL-1301-OUT,EXP-6674-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6674,x:32513,y:33351,ptovrint:False,ptlb:Tightness,ptin:_Tightness,varname:node_6674,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_Vector4Property,id:7461,x:30991,y:32387,ptovrint:False,ptlb:PlayerPos,ptin:_PlayerPos,varname:node_7461,prsc:2,glob:True,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_Transform,id:9515,x:31637,y:32443,varname:node_9515,prsc:2,tffrom:3,tfto:0|IN-1560-OUT;n:type:ShaderForge.SFN_Vector3,id:1560,x:31450,y:32443,varname:node_1560,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_RemapRange,id:6513,x:31841,y:32271,varname:node_6513,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1.2|IN-3377-OUT;n:type:ShaderForge.SFN_Clamp01,id:3000,x:32000,y:32271,varname:node_3000,prsc:2|IN-6513-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7759,x:31640,y:32969,varname:node_7759,prsc:2,sctp:0;n:type:ShaderForge.SFN_Length,id:601,x:32102,y:33009,varname:node_601,prsc:2|IN-9101-OUT;n:type:ShaderForge.SFN_Subtract,id:1301,x:32298,y:33218,varname:node_1301,prsc:2|A-601-OUT,B-5100-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5100,x:32034,y:33226,ptovrint:False,ptlb:node_5100,ptin:_node_5100,varname:node_5100,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Vector2,id:8430,x:31629,y:33197,varname:node_8430,prsc:2,v1:-0.6,v2:0;n:type:ShaderForge.SFN_Subtract,id:9101,x:31902,y:33009,varname:node_9101,prsc:2|A-7759-UVOUT,B-8430-OUT;n:type:ShaderForge.SFN_Tex2d,id:1021,x:32497,y:32525,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_1021,prsc:2,tex:fc79468710d144c4f87cc6209aa1c4cc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1321,x:32497,y:32705,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_1321,prsc:2,tex:9e463e1043f31724387ef30c1c366525,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6342,x:32215,y:32797,ptovrint:False,ptlb:node_6342,ptin:_node_6342,varname:node_6342,prsc:2,tex:cb89008e708e4bc48a4368c06b3ff5fc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9710,x:32657,y:32974,varname:node_9710,prsc:2|B-6342-R;proporder:6674-5100-1021-1321-6342;pass:END;sub:END;*/

Shader "Shader Forge/ForegroundFader" {
    Properties {
        _Tightness ("Tightness", Float ) = 100
        _node_5100 ("node_5100", Float ) = 0
        _Texture ("Texture", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _node_6342 ("node_6342", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform float4 _LightColor0;
            uniform float _Tightness;
            uniform float _node_5100;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _node_6342; uniform float4 _node_6342_ST;
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
                float4 screenPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
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
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_6342_var = tex2D(_node_6342,TRANSFORM_TEX(i.uv0, _node_6342));
                clip(_node_6342_var.r - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 diffuseColor = _Texture_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,pow((length((i.screenPos.rg-float2(-0.6,0)))-_node_5100),_Tightness));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float _Tightness;
            uniform float _node_5100;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _node_6342; uniform float4 _node_6342_ST;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
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
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_6342_var = tex2D(_node_6342,TRANSFORM_TEX(i.uv0, _node_6342));
                clip(_node_6342_var.r - 0.5);
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
                return fixed4(finalColor * pow((length((i.screenPos.rg-float2(-0.6,0)))-_node_5100),_Tightness),0);
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
            uniform sampler2D _node_6342; uniform float4 _node_6342_ST;
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
                float4 _node_6342_var = tex2D(_node_6342,TRANSFORM_TEX(i.uv0, _node_6342));
                clip(_node_6342_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
