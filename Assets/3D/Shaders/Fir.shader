// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6392,x:32719,y:32712,varname:node_6392,prsc:2|diff-1125-RGB,clip-1125-A,voffset-7963-OUT;n:type:ShaderForge.SFN_Tex2d,id:1125,x:32352,y:32701,ptovrint:False,ptlb:node_1125,ptin:_node_1125,varname:_node_1125,prsc:2,tex:54f48f20a48f34e499715af5cd473395,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:4510,x:30676,y:32682,ptovrint:False,ptlb:ShakeDistance,ptin:_ShakeDistance,varname:_ShakeDistance,prsc:2,min:0,cur:1.5,max:3;n:type:ShaderForge.SFN_Sin,id:6993,x:30502,y:32799,varname:node_6993,prsc:2|IN-1490-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6307,x:30234,y:32857,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:9188,x:30234,y:32981,ptovrint:False,ptlb:PlayerX,ptin:_PlayerX,varname:_PlayerX,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:648,x:30234,y:33095,varname:node_648,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6578,x:30234,y:33169,ptovrint:False,ptlb:PlayerZ,ptin:_PlayerZ,varname:_PlayerZ,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:7379,x:30571,y:33049,varname:node_7379,prsc:2|A-9188-OUT,B-648-OUT,C-6578-OUT;n:type:ShaderForge.SFN_Multiply,id:7008,x:31374,y:33097,varname:node_7008,prsc:2|A-6307-OUT,B-1252-OUT,C-9189-R,D-6993-OUT,E-4510-OUT;n:type:ShaderForge.SFN_Normalize,id:1252,x:30829,y:33104,varname:node_1252,prsc:2|IN-7379-OUT;n:type:ShaderForge.SFN_Multiply,id:1490,x:29952,y:33153,varname:node_1490,prsc:2|A-1035-OUT,B-3390-OUT;n:type:ShaderForge.SFN_VertexColor,id:9189,x:30862,y:33819,varname:node_9189,prsc:2;n:type:ShaderForge.SFN_Add,id:7963,x:31730,y:33389,varname:node_7963,prsc:2|A-7008-OUT,B-8408-OUT;n:type:ShaderForge.SFN_Slider,id:1035,x:29084,y:33109,ptovrint:False,ptlb:ShakeSpeed,ptin:_ShakeSpeed,varname:_ShakeSpeed,prsc:2,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Add,id:3390,x:29751,y:33312,varname:node_3390,prsc:2|A-7560-OUT,B-6080-OUT;n:type:ShaderForge.SFN_Subtract,id:7560,x:29438,y:33295,varname:node_7560,prsc:2|A-668-OUT,B-4777-T;n:type:ShaderForge.SFN_ValueProperty,id:668,x:29084,y:33275,ptovrint:False,ptlb:HitTime,ptin:_HitTime,varname:_HitTime,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Time,id:4777,x:29411,y:33695,varname:node_4777,prsc:2;n:type:ShaderForge.SFN_Slider,id:9403,x:29070,y:33599,ptovrint:False,ptlb:WindDistance,ptin:_WindDistance,varname:_WindDistance,prsc:2,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Multiply,id:8408,x:31461,y:33520,varname:node_8408,prsc:2|A-6880-OUT,B-9350-OUT,C-9189-R,D-9403-OUT;n:type:ShaderForge.SFN_Add,id:790,x:30068,y:33688,varname:node_790,prsc:2|A-4777-T,B-6080-OUT;n:type:ShaderForge.SFN_Multiply,id:3511,x:30260,y:33781,varname:node_3511,prsc:2|A-790-OUT,B-6934-OUT;n:type:ShaderForge.SFN_Sin,id:9350,x:30483,y:33632,varname:node_9350,prsc:2|IN-3511-OUT;n:type:ShaderForge.SFN_Slider,id:6934,x:29481,y:34137,ptovrint:False,ptlb:WindSpeed,ptin:_WindSpeed,varname:_WindSpeed,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:6052,x:30128,y:34414,ptovrint:False,ptlb:TimeOffset(G),ptin:_TimeOffsetG,varname:_TimeOffsetG,prsc:2,min:0,cur:2,max:3;n:type:ShaderForge.SFN_Multiply,id:6080,x:30524,y:34318,varname:node_6080,prsc:2|A-9189-G,B-6052-OUT;n:type:ShaderForge.SFN_Vector1,id:2142,x:30009,y:33406,varname:node_2142,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:1092,x:30258,y:33399,varname:node_1092,prsc:2|A-2142-OUT,B-3023-OUT,C-3023-OUT;n:type:ShaderForge.SFN_Normalize,id:6880,x:30504,y:33375,varname:node_6880,prsc:2|IN-1092-OUT;n:type:ShaderForge.SFN_Vector1,id:3023,x:29980,y:33505,varname:node_3023,prsc:2,v1:0;proporder:1125-4510-6307-9188-6578-1035-668-9403-6934-6052;pass:END;sub:END;*/

Shader "Custom/Fir" {
    Properties {
        _node_1125 ("node_1125", 2D) = "white" {}
        _ShakeDistance ("ShakeDistance", Range(0, 3)) = 1.5
        _Intensity ("Intensity", Float ) = 1
        _PlayerX ("PlayerX", Float ) = 1
        _PlayerZ ("PlayerZ", Float ) = 1
        _ShakeSpeed ("ShakeSpeed", Range(0, 10)) = 1
        _HitTime ("HitTime", Float ) = 0
        _WindDistance ("WindDistance", Range(0, 2)) = 0.5
        _WindSpeed ("WindSpeed", Range(0, 10)) = 0
        _TimeOffsetG ("TimeOffset(G)", Range(0, 3)) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_1125; uniform float4 _node_1125_ST;
            uniform float _ShakeDistance;
            uniform float _Intensity;
            uniform float _PlayerX;
            uniform float _PlayerZ;
            uniform float _ShakeSpeed;
            uniform float _HitTime;
            uniform float _WindDistance;
            uniform float _WindSpeed;
            uniform float _TimeOffsetG;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4777 = _Time + _TimeEditor;
                float node_6080 = (o.vertexColor.g*_TimeOffsetG);
                float node_3023 = 0.0;
                v.vertex.xyz += ((_Intensity*normalize(float3(_PlayerX,0.0,_PlayerZ))*o.vertexColor.r*sin((_ShakeSpeed*((_HitTime-node_4777.g)+node_6080)))*_ShakeDistance)+(normalize(float3(1.0,node_3023,node_3023))*sin(((node_4777.g+node_6080)*_WindSpeed))*o.vertexColor.r*_WindDistance));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float4 _node_1125_var = tex2D(_node_1125,TRANSFORM_TEX(i.uv0, _node_1125));
                clip(_node_1125_var.a - 0.5);
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
                float3 diffuseColor = _node_1125_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_1125; uniform float4 _node_1125_ST;
            uniform float _ShakeDistance;
            uniform float _Intensity;
            uniform float _PlayerX;
            uniform float _PlayerZ;
            uniform float _ShakeSpeed;
            uniform float _HitTime;
            uniform float _WindDistance;
            uniform float _WindSpeed;
            uniform float _TimeOffsetG;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4777 = _Time + _TimeEditor;
                float node_6080 = (o.vertexColor.g*_TimeOffsetG);
                float node_3023 = 0.0;
                v.vertex.xyz += ((_Intensity*normalize(float3(_PlayerX,0.0,_PlayerZ))*o.vertexColor.r*sin((_ShakeSpeed*((_HitTime-node_4777.g)+node_6080)))*_ShakeDistance)+(normalize(float3(1.0,node_3023,node_3023))*sin(((node_4777.g+node_6080)*_WindSpeed))*o.vertexColor.r*_WindDistance));
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float4 _node_1125_var = tex2D(_node_1125,TRANSFORM_TEX(i.uv0, _node_1125));
                clip(_node_1125_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _node_1125_var.rgb;
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_1125; uniform float4 _node_1125_ST;
            uniform float _ShakeDistance;
            uniform float _Intensity;
            uniform float _PlayerX;
            uniform float _PlayerZ;
            uniform float _ShakeSpeed;
            uniform float _HitTime;
            uniform float _WindDistance;
            uniform float _WindSpeed;
            uniform float _TimeOffsetG;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_4777 = _Time + _TimeEditor;
                float node_6080 = (o.vertexColor.g*_TimeOffsetG);
                float node_3023 = 0.0;
                v.vertex.xyz += ((_Intensity*normalize(float3(_PlayerX,0.0,_PlayerZ))*o.vertexColor.r*sin((_ShakeSpeed*((_HitTime-node_4777.g)+node_6080)))*_ShakeDistance)+(normalize(float3(1.0,node_3023,node_3023))*sin(((node_4777.g+node_6080)*_WindSpeed))*o.vertexColor.r*_WindDistance));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _node_1125_var = tex2D(_node_1125,TRANSFORM_TEX(i.uv0, _node_1125));
                clip(_node_1125_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
