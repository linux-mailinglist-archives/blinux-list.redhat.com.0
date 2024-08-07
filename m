Return-Path: <blinux-list+bncBCL6RD6O3QGRBEM6Z22QMGQEJKEE5TA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id DB44094AC3D
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2024 17:13:23 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b79bfa1c07sf307146d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 07 Aug 2024 08:13:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723043603; cv=pass;
        d=google.com; s=arc-20160816;
        b=tLAiYXTq0VSbtGWu0JYI+PX7pd6QS3B1lKDbeEgo7Xi5NacC/yzGWpD3IaB47hnrFC
         LQjprU+GTO9fLueHkX6+IyD1O3slhFYTU5skD55pgYKPpvHEV03JW9K+ZbAUcP5BCg0z
         Es6IAZYzMyBzW+Gk6wBgS3Qx6k2NfIc1T3g5Csrtu7p0HCq5GA2xr+2lnjamg24UvhoC
         EBzxmvB5KjQE9vEoXnUokteu83FOnGLMCAYweJdXK4Cq/QZtPKa1SO7ZssXtppHZTPne
         j7/EoDmjcP73V6WwN8DwikFsjLJi5mwA/b33Y8zRnn9/XcBwE+GooFwMKDHzzRDdiZoh
         /N7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:references:subject:from:to:user-agent:mime-version
         :date:message-id:delivered-to;
        bh=VCJejph75ds7dr3+Rj+wfeNecdq9ANAwX1AfrbBzmvo=;
        fh=Umi7IPoo7AeGlItB1SA7pm8QILESby1MmvfDptOSFP8=;
        b=prc/YrJQnic3fUIDEevP1HYpun0oLPQhjhFstrnk3Dz+PHPAu6KTq61R5xxCvRqoHH
         pByB84TRFst0U+Ds2TFQUGvOzRZKDUVKle+6l+G3zgZnUQgRpnNPmT1fx+OWtYuVjGdY
         S1aq/AocTJbygo85sQUsfj5yrvP9Ekm9QYaVKgylexXkARQyf83Ew1CizzW+p87FclVE
         45QjBIGfnDU242xErza5uslGKmHq8jeQSk7ASJfFNLUN0g5tVxJqLhybhxzB+s8Q7kQe
         FMr1KKlO3olIy5uA3w1DQrxYvj3R1jokw1ISbFWwQsHVI/+lBke7jPolTYBoK/Rm9Nto
         b8vQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of albert.e.sten_clanton@verizon.net designates 98.137.69.82 as permitted sender) smtp.mailfrom=albert.e.sten_clanton@verizon.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723043602; x=1723648402;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:references:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCJejph75ds7dr3+Rj+wfeNecdq9ANAwX1AfrbBzmvo=;
        b=fTcge3NtkhcIxlU3CJ7KlxCGM5bSKdquspJMRhDqGH0Y+YcLKO+xv1wfKHtuA9Xn6I
         R6d02tTX2vJ1Sn1lwkwBAAD4scKh3C6QMp8BOD8ycJBK5azDQ/kh1giNh1bcL//Zmt3H
         zSoBlvCOh77S3lcEonYXPIdD1xnWxVzo8WFOFNW9lrawgQ3NzlruNW2ESeZ0eN0we9LS
         cp0qdHsvDiI3IFSbiegj4yg2VFPrTdK72oy9QfYSfBsCNBFmyfBIVGM97cuPprhbWVY9
         UT6NzqHlCB1KlxMHZBuCB0Pi4/uj/MrUAbHwqcDfYqxEK4anOKZasdyGgRQHdBvHlt6D
         mB2A==
X-Forwarded-Encrypted: i=2; AJvYcCV6hz/ZtL5TJwTIIso7dw6RNF7M514iaAVOVJjaOzB0eDohUHchS7l/oOjroJ6kM1dQ2lAQcRGfoqzDPCsCAq5cqwjwsf0rjOLp
X-Gm-Message-State: AOJu0YwBk7RugwtSID92VUVgNHJ/pBegoQhT03X+51NqFJI55dkqnoJQ
	RToJFiHEYCCjvRKPM1/z16afDIpNMFcYlIOnacIPZJRjBJOThajC/zWYwVLdlFY=
X-Google-Smtp-Source: AGHT+IGD0IcUDY3PNS2Aq+8knRne38dW/nTUW6ex0MfMIrdfylLp52+TGfAOuAz2brZ+6xya4nUn4Q==
X-Received: by 2002:a05:6214:3f86:b0:6b7:431c:1b19 with SMTP id 6a1803df08f44-6bb9830f75amr255051746d6.6.1723043602394;
        Wed, 07 Aug 2024 08:13:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1cc1:b0:6b5:e006:11bb with SMTP id
 6a1803df08f44-6bc697bc496ls916706d6.0.-pod-prod-06-us; Wed, 07 Aug 2024
 08:13:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXRVSaoPrqlfW5/0/FKzX4xJ2sWrjg3T9ANGpYkddYGJ9AdnDVIFE2I4XGFEvzS5ClF+za/Ztq+qyro0uS5ax8JneITWnD4+VESRewN
X-Received: by 2002:a05:6102:290c:b0:492:7675:a394 with SMTP id ada2fe7eead31-4945bdb7b1dmr22856337137.2.1723043601220;
        Wed, 07 Aug 2024 08:13:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723043601; cv=none;
        d=google.com; s=arc-20160816;
        b=RKzzR5FRoizI37s8ASuNtfBfGDL6BjAGWA/xTniHlfdknEz01I8ss8KFkKh3UH7aoM
         ZPTveVx0dV8cZl/kjDgjsfpN+V6D6A6OtbCmarqcqH9btEF9A4l825FOE5272p3m2Fj7
         EhIv54uHIHlkrvdDs8eq9ODPu4at2UBw90Nltj3TTldSoLuorFstioCLny90ifrwDerA
         +VJQ0ivUdaQY3g0EixQf/uyN344nLDSoOhw4kcrOdGlxtRxXLO/cN8Wc29UMjQ6qL1VM
         vRhd5MRfX4v83fSseT/jv8VyoHWHCptgZH0eP//gR9e7qp0N6RKhOO05wXihPQU/qn+C
         8zGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:references:subject:from
         :to:user-agent:mime-version:date:message-id:delivered-to;
        bh=Mb4Yo0uNWcfPPz6KZdwZGT68OUWElBNiLBu3gyj90Jo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=vSW1KKxXYFITLoIiz2vqTWuxnhSZ9tbvIPmdKyy/IJyrheT1yhXkWeNuRvuSAyyIQR
         A7dms0ftkgZkl7N3ranWkveaPJXH1KZ9Vh0m/noeboKwaaI70TJqqF4ouWXX6BAt7V69
         n+IGR5T+ntyM60NMx5vRxChYY/P39yfJ2Srt7FkRVY03vLZzwsJxEwbUDIChTtzJiI5l
         WODqBwirsEMYWvZi3V4rkYUULOUKfIeGOiZhcmybh19QkASTLhMauaDUybiJaNWS1CSN
         487UoyUWxg+utj8n0grB6Igp3lROLARX139NDxoVS7RnNnRjLGkl/EM4XMOHFu8fe4QA
         dAlw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of albert.e.sten_clanton@verizon.net designates 98.137.69.82 as permitted sender) smtp.mailfrom=albert.e.sten_clanton@verizon.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4945dabb69asi2516489137.177.2024.08.07.08.13.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 08:13:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of albert.e.sten_clanton@verizon.net designates 98.137.69.82 as permitted sender) client-ip=98.137.69.82;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-640-Lz7UDh7EMXevqwn5yD_l0A-1; Wed,
 07 Aug 2024 11:13:17 -0400
X-MC-Unique: Lz7UDh7EMXevqwn5yD_l0A-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A0DBB1955EAA
	for <blinux-list@gapps.redhat.com>; Wed,  7 Aug 2024 15:13:16 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9BF0619560AE; Wed,  7 Aug 2024 15:13:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9999819560AA
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 15:13:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 20D821944D3E
	for <blinux-list@redhat.com>; Wed,  7 Aug 2024 15:13:16 +0000 (UTC)
Received: from sonic314-19.consmr.mail.gq1.yahoo.com
 (sonic314-19.consmr.mail.gq1.yahoo.com [98.137.69.82]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-610-fgu8YVAjPHC5qBXTP11tWQ-1; Wed,
 07 Aug 2024 11:13:12 -0400
X-MC-Unique: fgu8YVAjPHC5qBXTP11tWQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1723043592; bh=XcUmPBbrqIkwWnXf4CbwDj0hWWvVcYnn+VZdyRdYtr6=; h=X-Sonic-MF:Date:To:From:Subject:From:Subject; b=KynzdHfRWfKHjOIyIufiJmkItkvmA+7knQUL4gjN0Dck0uHvfweFDibo2D2dmMPtIVgTHRgpE/maDOGKe3xs9NDwY/vu3kUFXaA+rE274RkdKF7uEPJp8WvDnPdyBk1oysmPEQPzOBYKrkORjpBlW33AbHuHMnZyEyO52y1FjXt3mYOXO4GSZb7+dKqGvC4xn+PWOICF8iw5/chQd615l0qJsY8z/uVTmY0gQBDquIa0Tbr4MGiN7/H3t0Ia+9TKHHbGENK6b+ZCfKyPu/yNQuzwEIg8yB4VNa5AgD34RMhuQpRn8YuIxpGr1hKd9rHpi7Ogq2ZfixAylnfY95jWFw==
X-YMail-OSG: O6pCo3AVM1nWHWJW2ytgRvGRMIQ4TIVFyxwWN_6kjMJrqXwwiq_DIwT3.Nm_Rn.
 qfvMjiA4kfbAbpa0kiW2hQEPDqgzB34gOb0Qs0uH46sAeeZfNECIjTM4grl2EkE2rBZUc1sOhNzx
 GhKD8yeqo.3BmUf4d2dOT3GHOMWGGoFiu._DaZm7kZTIGldcfjK2GzThryaLGyLUWO_X4bI0oC6h
 lXwCozc_ft8Os41LXhugG16Oz3Eo_FUssAA9trwLtnpW0yyAPyuqNehBvE9..IrZDa.GqLPl.OyF
 xJubX41hhw_CxVCylTc5XO9eWaCfzqXmRj7_fV2qk_wu_OUQLqGtc8bt7RrFvP.ZNWfUQO1z38B7
 VKbgpR9sl0btUwkmYFn8dO6DmGvKncollJuWdBo6NAzAj41BzW2JkH2hU66yjASwgNKVFp_G59TP
 O2YqXcpFmqHtXzxTaHc.ewo1GIevRmGWfM_2PuyqQUTlTIpCpRJ5DlXtX3fBC15fxId6OJnZy7ZN
 F.KV8ru0TaIpVgVcVsCJ6mO2wmkZCfgWLmM5WcLDit0CtshQXyr4vdARLXYfWg.GIq0T8jdMO3kY
 WNfXfbjgeN7Zivep57dSWogLC8Y4gjGq7OPrumTru2PVMH8s06jQvHuDRWMgKHijCtVuGKr8iVsS
 TR.5cXTMAcxR2.GGIcYC7.wrXt9eIQBRK0n_YOOLgvcFkEPWZ3IdlB8iExTno1SdKSye.v2uVdPd
 8Ej7zNHAzGGN3EvO9pTS7EkAFf1OTPRLhAf9QubP.d3yr0JB_gsFaoHfDKldCBQGKb7bGJLF7Kle
 RGZWGa0XPtCAGOGuLmILzbl._wuuBbnfxEqUn9ThKGeEP6OLC.cPQwqVJqWriWNZCK_WIcpCYa3H
 K2D5asVlUkkitm9_KFBFo7s52Rf8P09tR1IfnVy4SH1dKgO5CZvsWWU82PLDmPumz_UfVQ0wLZlW
 Se_4nCYiSdiusZurm3bdFxPY3t2Y0eKLKxNtB9H.SWxPbn02L_zaGGnhxbGqtI7p_aVGe3wrPvas
 H8J1vFJTBjgYMvmKr4aDA44nRnzXS6f8GYzKrL0_t8eBaYyEYqBXAi31y5oIsrAVejYkXNljlhQy
 2CcULSo2cbUn8VpboeeeGKwU5S1MNYK58OfaOo9.Or9Lf16WLfH.Lsahm7KSWNwpuIpwLf.cx9vD
 o5pAdVwCQsHZMESLI33h2.51y9kC10FToHc8vMS4PGLx13u8gXweXlaG2roME0sSO7QCnXf0irAd
 LQjvRU_0CL40SmMaIdKbrhHW3RO2kFSHVF.0IM4HrdQlDneSYMDWEU8VTbh5vlU4KWr4XxAJ0XS4
 X6PJjeotyMLk7oD9wna9Tmh2.QGNzG24502EnHpeRlRg8u0MSjp65oqMtieRkIQjmJkoTzdeBa_A
 MmGmUmSX.hBlbf0adiv3yS3HqRkLtvm3Js2nPvYclbt6f7JOgfloipnsx9l5pMWaEMt7owhjkdIv
 cqcLEHVYmyJUwa6o8tZZrFB75s1nAHXG1DoLTZYBMM1iSYqtBeWuhcMtDMssa20kd5hKrXGdDVTK
 dj00KHJpjUppBapQ0D3wMqbnsmJwrhXea2bMaRCXSE_xMa8chKef0XOX3Q6tXVj4xhJDlGUtafTD
 It0qHm8lRzrefuSV8NL6PISbyXQxCIPr.vXzStZczYYUxM52JB4nVDbGEQGY1f8CpC5IIQzSiI21
 X2IXGVxEyhtyVFl0jR3U_CpyLagVvhzI4R0mXd5PneZmuGGSC_i.v881mi98stHrDCpzGWuOMCKm
 Z8OCz7SbTOC9gobWnMZKSwB10PyE2FI8B1tc2.Qac.0nSh4Q488lqk6em1lX4hlE5xhFzOOlmEqF
 _ZlgNoog2k71hu3_3VvRvTesVoVF530739CbY3P2YEj6oG_CsN1JiJF2GsbACrRqyycOj54JfmzV
 .8J1z7a7LCTwqAMbtgb8KhoQZIBPUlrQdMuAfNWDmoT52WiM_wFRz73JjS4Qah1Tq3aggYe4b1vf
 rV7V3KF4axiIh5cpxAprTQUfCnJBOyuJfRWKMJQf3JzmpxaNKcz4X9iknuOWjBruER2yrL5Z.QAm
 wT9Fd_k9LhvLdgkEhTrLNcNpxTE0YLSLG084nTfdR8H7E_Bt77tkdhYS7YN9UOyVqmeUDqkiRzDF
 QcqDsWjcXE9CxELU7tGtDHX2iGb4FOo46iuLN08ipIJy0Y4daa4RwfU3MaPSPzRg0z.YwIHW96lH
 XaHO2pnFsX_Y9QiZdXOVyDg2zFaBBPFV.NmtsSBBw4ToGDcosAbQM
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
X-Sonic-ID: bc894300-635a-4f06-b777-b2d133e5ed48
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.gq1.yahoo.com with HTTP; Wed, 7 Aug 2024 15:13:12 +0000
Received: by hermes--production-bf1-774ddfff8-cth6d (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 5c23c09be486dc80a3f090da01fd2595;
          Wed, 07 Aug 2024 15:13:07 +0000 (UTC)
Message-ID: <37ae7068-5dd0-4446-81d4-3aa55b69cd0d@verizon.net>
Date: Wed, 7 Aug 2024 11:12:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Al Sten-Clanton' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: how to enable use of right-alt key
References: <37ae7068-5dd0-4446-81d4-3aa55b69cd0d.ref@verizon.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: verizon.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: albert.e.sten_clanton@verizon.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of albert.e.sten_clanton@verizon.net designates 98.137.69.82 as
 permitted sender) smtp.mailfrom=albert.e.sten_clanton@verizon.net
X-Original-From: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
Reply-To: Al Sten-Clanton <albert.e.sten_clanton@verizon.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Greetings!


A long time ago, I found and used a command that enabled me to use the=20
right-alt key in the same way that I could use the left-alt key.=C2=A0 I di=
d=20
this especially for making Emacs easier to use, but I recall that the=20
command itself was by way of the Bash shell.


Recently, I've look for the way to do this but have not found it.=C2=A0 I'v=
e=20
so far done no better searching Emacs information.=C2=A0 Can anybody tell m=
e=20
or point me to how I'd do this?=C2=A0 The main benefit for me would be in=
=20
using Emacs, but being able to use both alt keys at the command line=20
would also help some.


Thanks for any information.


Al Sten-Clanton


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

