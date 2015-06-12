// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1135,x:33733,y:32620,varname:node_1135,prsc:2|diff-2049-RGB,normal-7013-RGB,clip-9653-R,voffset-4184-OUT;n:type:ShaderForge.SFN_Tex2d,id:9653,x:33315,y:32740,ptovrint:False,ptlb:Transparancy,ptin:_Transparancy,varname:_Transparancy,prsc:2,tex:cb89008e708e4bc48a4368c06b3ff5fc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7013,x:33142,y:32633,ptovrint:False,ptlb:node_7013,ptin:_node_7013,varname:_node_7013,prsc:2,tex:9e463e1043f31724387ef30c1c366525,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:2049,x:33319,y:32406,ptovrint:False,ptlb:texture,ptin:_texture,varname:_texture,prsc:2,tex:fc79468710d144c4f87cc6209aa1c4cc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:4216,x:32061,y:32347,ptovrint:False,ptlb:ShakeDistance,ptin:_ShakeDistance,varname:_ShakeDistance,prsc:2,min:0,cur:1.5,max:3;n:type:ShaderForge.SFN_Sin,id:5356,x:31887,y:32464,varname:node_5356,prsc:2|IN-2043-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1094,x:31619,y:32522,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2834,x:31619,y:32646,ptovrint:False,ptlb:PlayerX,ptin:_PlayerX,varname:_PlayerX,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:6414,x:31619,y:32760,varname:node_6414,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:3639,x:31619,y:32834,ptovrint:False,ptlb:PlayerZ,ptin:_PlayerZ,varname:_PlayerZ,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:6258,x:31956,y:32714,varname:node_6258,prsc:2|A-2834-OUT,B-6414-OUT,C-3639-OUT;n:type:ShaderForge.SFN_Multiply,id:4297,x:32759,y:32762,varname:node_4297,prsc:2|A-1094-OUT,B-2692-OUT,C-9558-R,D-5356-OUT,E-4216-OUT;n:type:ShaderForge.SFN_Normalize,id:2692,x:32214,y:32769,varname:node_2692,prsc:2|IN-6258-OUT;n:type:ShaderForge.SFN_Multiply,id:2043,x:31337,y:32818,varname:node_2043,prsc:2|A-117-OUT,B-5653-OUT;n:type:ShaderForge.SFN_VertexColor,id:9558,x:32247,y:33484,varname:node_9558,prsc:2;n:type:ShaderForge.SFN_Add,id:4184,x:33115,y:33054,varname:node_4184,prsc:2|A-4297-OUT,B-9082-OUT;n:type:ShaderForge.SFN_Slider,id:117,x:30469,y:32774,ptovrint:False,ptlb:ShakeSpeed,ptin:_ShakeSpeed,varname:_ShakeSpeed,prsc:2,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Add,id:5653,x:31136,y:32977,varname:node_5653,prsc:2|A-2820-OUT,B-6924-OUT;n:type:ShaderForge.SFN_Subtract,id:2820,x:30823,y:32960,varname:node_2820,prsc:2|A-224-OUT,B-1583-T;n:type:ShaderForge.SFN_ValueProperty,id:224,x:30469,y:32940,ptovrint:False,ptlb:HitTime,ptin:_HitTime,varname:_HitTime,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Time,id:1583,x:30796,y:33360,varname:node_1583,prsc:2;n:type:ShaderForge.SFN_Slider,id:1657,x:30455,y:33264,ptovrint:False,ptlb:WindDistance,ptin:_WindDistance,varname:_WindDistance,prsc:2,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Multiply,id:9082,x:32846,y:33185,varname:node_9082,prsc:2|A-2396-OUT,B-5919-OUT,C-9558-R,D-1657-OUT;n:type:ShaderForge.SFN_Add,id:595,x:31453,y:33353,varname:node_595,prsc:2|A-1583-T,B-6924-OUT;n:type:ShaderForge.SFN_Multiply,id:2942,x:31645,y:33446,varname:node_2942,prsc:2|A-595-OUT,B-8740-OUT;n:type:ShaderForge.SFN_Sin,id:5919,x:31868,y:33297,varname:node_5919,prsc:2|IN-2942-OUT;n:type:ShaderForge.SFN_Slider,id:8740,x:30866,y:33802,ptovrint:False,ptlb:WindSpeed,ptin:_WindSpeed,varname:_WindSpeed,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:100,x:31513,y:34079,ptovrint:False,ptlb:TimeOffset(G),ptin:_TimeOffsetG,varname:_TimeOffsetG,prsc:2,min:0,cur:2,max:3;n:type:ShaderForge.SFN_Multiply,id:6924,x:31909,y:33983,varname:node_6924,prsc:2|A-9558-G,B-100-OUT;n:type:ShaderForge.SFN_Vector1,id:3034,x:31394,y:33071,varname:node_3034,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:4254,x:31643,y:33064,varname:node_4254,prsc:2|A-3034-OUT,B-1528-OUT,C-1528-OUT;n:type:ShaderForge.SFN_Normalize,id:2396,x:31889,y:33040,varname:node_2396,prsc:2|IN-4254-OUT;n:type:ShaderForge.SFN_Vector1,id:1528,x:31365,y:33170,varname:node_1528,prsc:2,v1:0;proporder:9653-7013-2049-100-8740-117-1657-4216-2834-3639-1094-224;pass:END;sub:END;*/

Shader "Shader Forge/Foolige" {
    Properties {
        _Transparancy ("Transparancy", 2D) = "white" {}
        _node_7013 ("node_7013", 2D) = "bump" {}
        _texture ("texture", 2D) = "white" {}
        _TimeOffsetG ("TimeOffset(G)", Range(0, 3)) = 2
        _WindSpeed ("WindSpeed", Range(0, 10)) = 0
        _ShakeSpeed ("ShakeSpeed", Range(0, 10)) = 1
        _WindDistance ("WindDistance", Range(0, 2)) = 0.5
        _ShakeDistance ("ShakeDistance", Range(0, 3)) = 1.5
        _PlayerX ("PlayerX", Float ) = 1
        _PlayerZ ("PlayerZ", Float ) = 1
        _Intensity ("Intensity", Float ) = 1
        _HitTime ("HitTime", Float ) = 0
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Transparancy; uniform float4 _Transparancy_ST;
            uniform sampler2D _node_7013; uniform float4 _node_7013_ST;
            uniform sampler2D _texture; uniform float4 _texture_ST;
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
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1583 = _Time + _TimeEditor;
                float node_6924 = (o.vertexColor.g*_TimeOffsetG);
                float node_1528 = 0.0;
                v.vertex.xyz += ((_Intensity*normalize(float3(_PlayerX,0.0,_PlayerZ))*o.vertexColor.r*sin((_ShakeSpeed*((_HitTime-node_1583.g)+node_6924)))*_ShakeDistance)+(normalize(float3(1.0,node_1528,node_1528))*sin(((node_1583.g+node_6924)*_WindSpeed))*o.vertexColor.r*_WindDistance));
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
                float3 _node_7013_var = UnpackNormal(tex2D(_node_7013,TRANSFORM_TEX(i.uv0, _node_7013)));
                float3 normalLocal = _node_7013_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Transparancy_var = tex2D(_Transparancy,TRANSFORM_TEX(i.uv0, _Transparancy));
                clip(_Transparancy_var.r - 0.5);
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
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                float3 diffuseColor = _texture_var.rgb;
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
            uniform sampler2D _Transparancy; uniform float4 _Transparancy_ST;
            uniform sampler2D _node_7013; uniform float4 _node_7013_ST;
            uniform sampler2D _texture; uniform float4 _texture_ST;
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
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1583 = _Time + _TimeEditor;
                float node_6924 = (o.vertexColor.g*_TimeOffsetG);
                float node_1528 = 0.0;
                v.vertex.xyz += ((_Intensity*normalize(float3(_PlayerX,0.0,_PlayerZ))*o.vertexColor.r*sin((_ShakeSpeed*((_HitTime-node_1583.g)+node_6924)))*_ShakeDistance)+(normalize(float3(1.0,node_1528,node_1528))*sin(((node_1583.g+node_6924)*_WindSpeed))*o.vertexColor.r*_WindDistance));
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
                float3 _node_7013_var = UnpackNormal(tex2D(_node_7013,TRANSFORM_TEX(i.uv0, _node_7013)));
                float3 normalLocal = _node_7013_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Transparancy_var = tex2D(_Transparancy,TRANSFORM_TEX(i.uv0, _Transparancy));
                clip(_Transparancy_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                float3 diffuseColor = _texture_var.rgb;
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
            uniform sampler2D _Transparancy; uniform float4 _Transparancy_ST;
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
                float4 node_1583 = _Time + _TimeEditor;
                float node_6924 = (o.vertexColor.g*_TimeOffsetG);
                float node_1528 = 0.0;
                v.vertex.xyz += ((_Intensity*normalize(float3(_PlayerX,0.0,_PlayerZ))*o.vertexColor.r*sin((_ShakeSpeed*((_HitTime-node_1583.g)+node_6924)))*_ShakeDistance)+(normalize(float3(1.0,node_1528,node_1528))*sin(((node_1583.g+node_6924)*_WindSpeed))*o.vertexColor.r*_WindDistance));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _Transparancy_var = tex2D(_Transparancy,TRANSFORM_TEX(i.uv0, _Transparancy));
                clip(_Transparancy_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
