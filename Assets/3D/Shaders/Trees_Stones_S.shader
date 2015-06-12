// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:991,x:32719,y:32712,varname:node_991,prsc:2|diff-3684-OUT,normal-2832-OUT,alpha-2430-OUT,clip-4127-R;n:type:ShaderForge.SFN_Tex2d,id:6948,x:31387,y:33577,ptovrint:False,ptlb:T_tree,ptin:_T_tree,varname:_T_tree,prsc:2,tex:fc79468710d144c4f87cc6209aa1c4cc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4127,x:30470,y:32578,ptovrint:False,ptlb:Transp.,ptin:_Transp,varname:_Transp,prsc:2,tex:cb89008e708e4bc48a4368c06b3ff5fc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:543,x:31261,y:32785,varname:node_543,prsc:2|VAL-2900-OUT,EXP-3208-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3208,x:31261,y:32958,ptovrint:False,ptlb:Tightness,ptin:_Tightness,varname:_Tightness,prsc:2,glob:False,v1:100;n:type:ShaderForge.SFN_ScreenPos,id:4209,x:30257,y:32864,varname:node_4209,prsc:2,sctp:0;n:type:ShaderForge.SFN_Length,id:8506,x:30831,y:32904,varname:node_8506,prsc:2|IN-9910-OUT;n:type:ShaderForge.SFN_Subtract,id:2900,x:31051,y:32904,varname:node_2900,prsc:2|A-8506-OUT,B-520-OUT;n:type:ShaderForge.SFN_ValueProperty,id:520,x:30831,y:33067,ptovrint:False,ptlb:Distance,ptin:_Distance,varname:_Distance,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Vector2,id:3131,x:30257,y:33036,varname:node_3131,prsc:2,v1:-0.6,v2:0;n:type:ShaderForge.SFN_Subtract,id:9910,x:30519,y:32904,varname:node_9910,prsc:2|A-4209-UVOUT,B-3131-OUT;n:type:ShaderForge.SFN_VertexColor,id:6820,x:31446,y:32969,varname:node_6820,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2430,x:31596,y:32786,varname:node_2430,prsc:2|A-9030-OUT,B-1980-OUT,T-6820-R;n:type:ShaderForge.SFN_Vector1,id:1980,x:31596,y:32698,varname:node_1980,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9030,x:31261,y:32651,varname:node_9030,prsc:2|A-2086-OUT,B-543-OUT;n:type:ShaderForge.SFN_Lerp,id:2086,x:30888,y:32368,varname:node_2086,prsc:2|A-3783-OUT,B-4127-G,T-1936-OUT;n:type:ShaderForge.SFN_Vector1,id:3783,x:30599,y:32368,varname:node_3783,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1936,x:30313,y:32422,ptovrint:False,ptlb:DepthIntensity,ptin:_DepthIntensity,varname:_DepthIntensity,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:2148,x:31187,y:33577,ptovrint:False,ptlb:node_2148,ptin:_node_2148,varname:_node_2148,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:406,x:31677,y:33585,varname:node_406,prsc:2|A-2148-RGB,B-6948-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:3684,x:32098,y:33239,varname:node_3684,prsc:2,chbt:1|M-7365-OUT,R-2390-OUT,G-9730-RGB,B-406-OUT,BTM-406-OUT;n:type:ShaderForge.SFN_Append,id:7365,x:31635,y:33045,varname:node_7365,prsc:2|A-6820-G,B-6820-B,C-6820-A;n:type:ShaderForge.SFN_ChannelBlend,id:228,x:32082,y:33660,varname:node_228,prsc:2,chbt:1|M-7365-OUT,R-759-OUT,G-1807-OUT,B-759-OUT,BTM-8899-RGB;n:type:ShaderForge.SFN_Normalize,id:2832,x:32244,y:33660,varname:node_2832,prsc:2|IN-228-OUT;n:type:ShaderForge.SFN_Tex2d,id:8899,x:31739,y:33839,ptovrint:False,ptlb:N_Tree,ptin:_N_Tree,varname:_N_Tree,prsc:2,tex:9e463e1043f31724387ef30c1c366525,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9730,x:31399,y:33279,ptovrint:False,ptlb:T_Moss,ptin:_T_Moss,varname:_T_Moss,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:2390,x:31153,y:33246,varname:node_2390,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7278,x:31571,y:33306,varname:node_7278,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:154,x:31169,y:33891,ptovrint:False,ptlb:nN_Moss,ptin:_nN_Moss,varname:_nN_Moss,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:1807,x:31399,y:33891,varname:node_1807,prsc:2|BSE-154-RGB,DTL-8899-RGB;n:type:ShaderForge.SFN_Vector3,id:759,x:31829,y:33600,varname:node_759,prsc:2,v1:0,v2:0,v3:1;proporder:6948-4127-3208-520-1936-2148-8899-154-9730;pass:END;sub:END;*/

Shader "Shader Forge/Trees_Stones" {
    Properties {
        _T_tree ("T_tree", 2D) = "white" {}
        _Transp ("Transp.", 2D) = "white" {}
        _Tightness ("Tightness", Float ) = 100
        _Distance ("Distance", Float ) = 0
        _DepthIntensity ("DepthIntensity", Range(0, 1)) = 0
        _node_2148 ("node_2148", Color) = (0.5,0.5,0.5,1)
        _N_Tree ("N_Tree", 2D) = "bump" {}
        _nN_Moss ("nN_Moss", 2D) = "bump" {}
        _T_Moss ("T_Moss", 2D) = "white" {}
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
            uniform sampler2D _T_tree; uniform float4 _T_tree_ST;
            uniform sampler2D _Transp; uniform float4 _Transp_ST;
            uniform float _Tightness;
            uniform float _Distance;
            uniform float _DepthIntensity;
            uniform float4 _node_2148;
            uniform sampler2D _N_Tree; uniform float4 _N_Tree_ST;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
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
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 node_7365 = float3(i.vertexColor.g,i.vertexColor.b,i.vertexColor.a);
                float3 _N_Tree_var = UnpackNormal(tex2D(_N_Tree,TRANSFORM_TEX(i.uv0, _N_Tree)));
                float3 node_759 = float3(0,0,1);
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 node_1807_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_1807_nrm_detail = _N_Tree_var.rgb * float3(-1,-1,1);
                float3 node_1807_nrm_combined = node_1807_nrm_base*dot(node_1807_nrm_base, node_1807_nrm_detail)/node_1807_nrm_base.z - node_1807_nrm_detail;
                float3 node_1807 = node_1807_nrm_combined;
                float3 normalLocal = normalize((lerp( lerp( lerp( _N_Tree_var.rgb, node_759, node_7365.r ), node_1807, node_7365.g ), node_759, node_7365.b )));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Transp_var = tex2D(_Transp,TRANSFORM_TEX(i.uv0, _Transp));
                clip(_Transp_var.r - 0.5);
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
                float4 _T_tree_var = tex2D(_T_tree,TRANSFORM_TEX(i.uv0, _T_tree));
                float3 node_406 = (_node_2148.rgb*_T_tree_var.rgb);
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float3 diffuseColor = (lerp( lerp( lerp( node_406.r, 0.0, node_7365.r ), _T_Moss_var.rgb, node_7365.g ), node_406, node_7365.b ));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,lerp((lerp(1.0,_Transp_var.g,_DepthIntensity)*pow((length((i.screenPos.rg-float2(-0.6,0)))-_Distance),_Tightness)),1.0,i.vertexColor.r));
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
            uniform sampler2D _T_tree; uniform float4 _T_tree_ST;
            uniform sampler2D _Transp; uniform float4 _Transp_ST;
            uniform float _Tightness;
            uniform float _Distance;
            uniform float _DepthIntensity;
            uniform float4 _node_2148;
            uniform sampler2D _N_Tree; uniform float4 _N_Tree_ST;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
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
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
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
                float3 node_7365 = float3(i.vertexColor.g,i.vertexColor.b,i.vertexColor.a);
                float3 _N_Tree_var = UnpackNormal(tex2D(_N_Tree,TRANSFORM_TEX(i.uv0, _N_Tree)));
                float3 node_759 = float3(0,0,1);
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 node_1807_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_1807_nrm_detail = _N_Tree_var.rgb * float3(-1,-1,1);
                float3 node_1807_nrm_combined = node_1807_nrm_base*dot(node_1807_nrm_base, node_1807_nrm_detail)/node_1807_nrm_base.z - node_1807_nrm_detail;
                float3 node_1807 = node_1807_nrm_combined;
                float3 normalLocal = normalize((lerp( lerp( lerp( _N_Tree_var.rgb, node_759, node_7365.r ), node_1807, node_7365.g ), node_759, node_7365.b )));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Transp_var = tex2D(_Transp,TRANSFORM_TEX(i.uv0, _Transp));
                clip(_Transp_var.r - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _T_tree_var = tex2D(_T_tree,TRANSFORM_TEX(i.uv0, _T_tree));
                float3 node_406 = (_node_2148.rgb*_T_tree_var.rgb);
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float3 diffuseColor = (lerp( lerp( lerp( node_406.r, 0.0, node_7365.r ), _T_Moss_var.rgb, node_7365.g ), node_406, node_7365.b ));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * lerp((lerp(1.0,_Transp_var.g,_DepthIntensity)*pow((length((i.screenPos.rg-float2(-0.6,0)))-_Distance),_Tightness)),1.0,i.vertexColor.r),0);
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
            uniform sampler2D _Transp; uniform float4 _Transp_ST;
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
                float4 _Transp_var = tex2D(_Transp,TRANSFORM_TEX(i.uv0, _Transp));
                clip(_Transp_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
