Return-Path: <blinux-list+bncBDC2NMUJY4HBBUV672WQMGQEA7324YA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F408848E78
	for <lists+blinux-list@lfdr.de>; Sun,  4 Feb 2024 15:29:40 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-218f694d7e6sf3589805fac.3
        for <lists+blinux-list@lfdr.de>; Sun, 04 Feb 2024 06:29:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707056979; cv=pass;
        d=google.com; s=arc-20160816;
        b=gTJdDdeA38yVdHP//eui1CzvSPhxJya6EJLw2j58nF+gLlsgb+7tJ6wGKoDITL92jr
         xX6Ww6rlpikUMo2rhqZIJzmla4T3WLV1pWMzzogXjF923H3HmQw7H2irqH7GTVEZiNTo
         /Pg9UI+eE2Km0XfRojDTV7b/VhXJNaDvk6A7uMGRLUB1O+NV6WlmMc4/oV8cIXIc48dq
         +sdgv2BAgf4i7zALIwrdciHVsVYkPgD3XRqYRfGY2rrLzjwDrNDScQNtWbZNLbN0XMSM
         WZUJGrAgMbG7qZHNgSsd5hFWPQEZGMHnFhGBjuim1lT/csxlb6nPEIWtqL4yCB2A5Wp8
         OX2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:delivered-to;
        bh=AL0KYKEd4a0erE9dQb8PdITCdI1z6dD7hqaWrultHDQ=;
        fh=OPO1nhxqIShwZcYGPogungwQkBQuNVoJo13QnIFX9LI=;
        b=Ke88iCLqjIfTVmicEN3CLq5jD8wv9RCOaw8/XYnCykekuRT4XtwhIWbdVSxxQdMB9t
         U4PRAF60S3c/Vww5RFrHCRjn6f2zKDWyN0EjWZpYfKsGVPYSbGpezaF9QfYNJ8Wp6QuD
         rOsndfcV7UJgmgO6/cFwksQLQnVVfceDic6LJAWVN4W8+lUGiskbLtYESddySV2JcxKG
         7VdPBGD9H1KM/51/BGZnCDFn7dg2TNnxFemIRa832Bi3tpmnSUHatJdk71nRoWJg8CX9
         IKQSUS8n/XJNEOMRryh5gkj1JtBPEI3J20yvcnL5wgAVYikTNbK1zGX2dinAX6upBTDL
         33UQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ashbreger@yahoo.com designates 74.6.129.81 as permitted sender) smtp.mailfrom=ashbreger@yahoo.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707056979; x=1707661779;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:in-reply-to
         :cc:references:message-id:date:subject:mime-version:from
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AL0KYKEd4a0erE9dQb8PdITCdI1z6dD7hqaWrultHDQ=;
        b=Hfv9x9nzJos4OKR7RHxCL1ZXAQUKvZw0sZiLK1sTMJ0g58zUSqLmsFfJtwLSXjdg99
         sfkT/5mxl0Gt+c10uyJuQRcFop1/Xz0dn7WcpHDw+1crSOiJt0NQrjCloFsqUJMHqrTQ
         1KYTV9Jb6s1b4v2QSdUZxaQZWdDYvqBV+8k9Hk8CD8gD2JAuRcxXGHRARgdjPCBTI9pY
         IaNAMJ5HqBQukFE+gmkGtzrYXzkBUXA/lAZG2KsjENSwTKeU41Tafv44UZlhbgk5aar0
         9gXjmHLXlMzkDk5UtnDJnbluLEilSC9iDzbMT48Fooc6N9tUhzS9rotONGpmHIVuLxUQ
         RZTg==
X-Gm-Message-State: AOJu0YydrKhfBSdhOMFz8fmOvxW8wgsqLOOKgser9lFJ7Bsbc85XMjtw
	2mqXienvFUaK9nWunfRBiCvUGW3pyFxuZ+uFhYAeU7uUr80nFBeT5fSfXC2bbaA=
X-Google-Smtp-Source: AGHT+IFBrQwWScRWET+h+wUeUdntN7VjNacJFSRKhOBDpDAi0sgNoF8eVmBGR6U6Y63PIyTswcUHfw==
X-Received: by 2002:a05:6870:7d19:b0:219:198b:ade9 with SMTP id os25-20020a0568707d1900b00219198bade9mr5479292oab.36.1707056978966;
        Sun, 04 Feb 2024 06:29:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:9d0e:b0:219:7f07:7bdc with SMTP id
 pp14-20020a0568709d0e00b002197f077bdcls310889oab.1.-pod-prod-03-us; Sun, 04
 Feb 2024 06:29:38 -0800 (PST)
X-Received: by 2002:a05:6808:3c48:b0:3bd:9152:2e35 with SMTP id gl8-20020a0568083c4800b003bd91522e35mr17402752oib.32.1707056977905;
        Sun, 04 Feb 2024 06:29:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707056977; cv=none;
        d=google.com; s=arc-20160816;
        b=oGfInfmAYLZVoAClz+HZohjlJR6MumJPM4jkFhA1wRtM5pFpejSBsAH/FVwKE40vN1
         QrcKXQ7jlcn3Lpt7s84U1VXv4uEYWHU3I98l9Mll6eG7CNc8kS8gNd2hXEJPEeUOijAR
         aZhvNWN60iilD1nzP8sGGirOET67PUUNhVULYJEn6QsnnTFQu2w2g5Tr5Nhy7nAffFfM
         /Hb8kFI40TnX55/K1CQFaZIybHrdtQVMqjPgOy3Iivya/GQZPptXXPEWF3X/xLemqXJP
         D6Afjtko4ua9bms1ozq5pMT1sRD+z5ZLeuFOqM5jLxi8jj1Ov6fNDlBe/zF+fyfMN4tP
         cLAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:delivered-to;
        bh=O9Y/Dy4w0e/KRS5XoUMr1/K6yQ9fJ60OMvH7NPLtMeA=;
        fh=OPO1nhxqIShwZcYGPogungwQkBQuNVoJo13QnIFX9LI=;
        b=rUUwL4c6jeg58m/rB1Ev1rOU3tAfH/AqnXrvMRKFjU5aJ9G5Q46ZsCmziUeL+/Erk5
         n//NFAPpCfSBqyDUmWEJjGfW8gzYEsHMWqq55K7DFYEjnjbfxIp7qyp1CS35PAGfvBHg
         wnZdKi2smX0vDl3la6ZK0gM442mRxXZ3C4aYikjOLUSA5YAXSmGyfVnleuAD/ZbyvU9X
         xn+lTdEEaH07sCA/5Pq7ocdGCtOmZfYOnUs+hB1uEmeQ+4Q4AW/ovv2+J21ZpP6EKzUN
         fIq9TCP1E5KDQuNJwlLjhvKHXCMrxda5gzVy9ZZlu1LlxJElIS5QuMuGRAcT1ZjeTZKg
         soWg==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ashbreger@yahoo.com designates 74.6.129.81 as permitted sender) smtp.mailfrom=ashbreger@yahoo.com
X-Forwarded-Encrypted: i=0; AJvYcCW5Wh+xcqaYo29Nrznr7+PW9Jhdj0IASTAeEqcs7F7finEU0gWyo4zcG/dHbzZ+Gg5Vv2c6NzVnht09F1ZZMcb2MXIu1QukQrZ6gQfo
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id t7-20020ac85887000000b0042c0e22e440si3701138qta.774.2024.02.04.06.29.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Feb 2024 06:29:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ashbreger@yahoo.com designates 74.6.129.81 as permitted sender) client-ip=74.6.129.81;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-V0NTcs8RPOGShQea6D3ZhQ-1; Sun, 04 Feb 2024 09:29:36 -0500
X-MC-Unique: V0NTcs8RPOGShQea6D3ZhQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 379F1185A781
	for <blinux-list@gapps.redhat.com>; Sun,  4 Feb 2024 14:29:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 340E92B7; Sun,  4 Feb 2024 14:29:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C12B3C2E
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 14:29:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0195C83FC21
	for <blinux-list@redhat.com>; Sun,  4 Feb 2024 14:29:36 +0000 (UTC)
Received: from sonic317-26.consmr.mail.bf2.yahoo.com
 (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-280-o0BnK-2GM2iDZwJYsy1iPQ-1; Sun, 04 Feb 2024 09:29:33 -0500
X-MC-Unique: o0BnK-2GM2iDZwJYsy1iPQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1707056973; bh=2433ZIrgHd13LMURf46YmCNghD03HFNGljBiXFVLelD=; h=X-Sonic-MF:From:Subject:Date:To:From:Subject; b=IndDT2y/4lNy7rey0ujrtUZtOZuGUklf9cy2oyASStCwriJknRgO01oLM6zRBQ86unziMb4zgyNPVSJ4IalLMbtJMMtECn/7wXQhgKDOPCJw/rJ9QNXwF/J1lIRoDimdIpvn0oPNKSH7HiZusMCQeE+MeZP+574G/CPwoNKz/DCyyKBEq/siAUaugPZ27s/AmEvz2iTlM6ilNNnkrjiE7x+GDvvO57y4mM8385KQu2YU3xvc3bWViyiGXwQPyVLtMbyud00a41vi/TYAhjaM0PyxMcey0jg9ZmvRQUR6avTKsmTS7cLpMV9QOPMQskshnZYwRCXgVC5wIkv9DKqVNA==
X-YMail-OSG: D1raTBYVM1lcXV6amBJOtfEhzPQWwTAjW0_6VcpJ1vylbIrJM0JrgMC1LfdOx53
 YWtYssj2HUCLzX3yCKBoGizJF2GmDv6UQ0EAI17rOzbG74.8Exe6TON611UUHp.PQO4V8vGOM.9Z
 pgRHJvS2MVWqd_nE0aTOkJKWQHGFYmOBhjjDTFpB4qgFIHXa.Zyj5pkSSdqNqx8VGmkGqH8D.tJL
 qc0SZ7BnfURQ0FKS4o8KjHtprNE.ZY1lLmNHdiL1HDj5oVAo3JF4dGgcletTuOsCIqdHKEim2pPy
 b2PI4_jvfPeDlkr_MdlDIHk4QNcPhukPweAIVaDgn0yVT4InaW5dkibnNv689uGWPnqdrLWffudq
 hXDoX2dSJfwElR1W29n4Ijfz9oKd8BgEaBDKEwACX6mlBN7CmiTjMVRfWjm0W0jTNZHb_ldKS1i0
 QMUKUguzQufoXmWnr1dAp5NDmMA7uPWjxCXtIBW.ifJ5AJWVSiErE.yAyEUn_qXLSwZwrfmGMa3_
 LfTzj.0uCIEcXXJXtXleD5HjeY3CP.OsnP7bXxF.1rv4jFIEWPQPXCgGpYy1gWt_P4lnOR_6HdLu
 AyHYN9NrBf1UJxk_Pjyu1IkKfZPIZSUWFfLBtd2w9qinP2dAUYXYuYlkCMjkC4qQxvaZXbC25jAV
 ks61JYiFKN8Jwa7uW0jNZ4BQCkHlbM204aWTnB7xzMUtR69VO9vEzl0yNywuu1dsf1Re6Tk4g8y6
 ySVNnph._pQI9NVJ09VyBSSRpZ2mHvOzcEm0dPtOWvQAxsPI4jcIT5QwvQz3UDwgvQ.a4s4eBXPn
 _T54dtRVYCbRc4bx7T7IV05HkJfxRvnv9UDoNOav7EWm3SRvrKn9Tj5Mr4eMm7AkwkeaO7ElCMU5
 E3cA4Ygskc7nkYFxme0Hf4_Vlg_MblyCCTc97NUMzW_68GFrF5oq4XGdiSuQzdXMnds_eHJiJ2EM
 oxZVKrJo7c6kj1FnKHvjMoDInOPNjP5iwo1QYb5SY1BpYKa5J4LLZi.ruO6iZJmHr0WsYFR2AEG7
 z9AG.AXPIJ0jFVfC6XfSLpb6C42gp1G8VpRtag071tyf32Pq7VogFidfU6OEO4ymFMZRM61G3EC0
 N8CfJilsfQRiZJ3gY7hrUUQERpKQHMGuS7BE_YrvRUZCJSDgsOy4pM8PKhzxxOnu4UMDRL8QYFcJ
 BD7qsAGv1vVO5jJA9EKbiPfZwbrmo1ilI1CtnDwiG4sPefHV91QLDutL2s1KE76SlK5ig_d1fkCV
 1r.El47Ru7rtKPKxLH7dBdR_Rsjk.yaLMKBlBy9bvyYhLK_ffNHUu5kCky6IUJRWRlHGgvi1pPNx
 peKzTk4_713YScitCORZAjHavZE1g.29Ag1Lbc6asu8O5v3m0_cOuKSLPNwkroHBs7jiARluoXI0
 JpT6tMTKXKJJmOdsIO.VpAm2qo52WtFgSrNbwUhpNQW66..FUKe_yaQdyBymvVo4JPvZ.nrqSW5X
 4JAol8bUb_gk.7plGiX0jjq.kjFSWbfmnwEvz9bv6X9voB4FJTsrZlyIBSX2axxY1vu31_.p_Q6t
 BptbCWzGH5Z0G9lIKT2h4hiHn7e0pzNoWvTv9YMDhBmGH8AnFhnujAClmIpsDmrcASdci0vQLSFI
 qBY8l.DTA9djnz5hBOWuNBpBSLsH2v4daH2hWOhgcjhHn1jJcUIMITgwnf200T7lrngUjG.3otsp
 sJ.9_RH82Fh.aSwIeECoUZVq0sOiUB.exMLizuMXnPBOd6HSHG.g.5bTzhZtyNZEh6lScwePBmMY
 X0WIXvALYxpCG8sUhohzKCDAzfT7x8PwOWbe7OvxJcdUtplNc7Xf.7QTdO5asPPklzKxHyrIDqHl
 2Z6MUKkuHn9eZ__uwVq9rj.ysQ2eGY7dKAFGfKnjRW64cfzsZJi5kUmpe.Ipzi5TzKnHL7Jz9rtO
 cW_5JJ8Ba7P40msPTxHrWr2xMznKDX85r1vzCgHA5BmYuBQCLjBIFhXVOWmCSnuuv2uLanAMcn5n
 1zjl23.PPiGrWMmi6ho2u9qwtwPl6hJyjC5ilE.5ZNyIHSFPEY_2NLqE2DT_bLP.39sNLB.LrZN_
 ryRyo7bT6IQ0NeB_q1C_tYYCUIMUNYFVoYBc_bnrt4xdwRPxQvGpXrrdTH6hgZesFfBI3.I0Cr8R
 VxCnBkRKhIm.64qijG2GFCPlkxgKzLNYFYorhFGLgDUYAmyHHLtuZf1SHZ_HR2rgrVzKvqIG02WJ
 2iW.e2M3La0KPG8XNnWOYdsDclyZe3gtvR_EJMtd4GT.j.BgQTDHwZ5poil2inrJnV36TEGS2Dxu
 sc.i0uA.bjs5f20_q.byUiO3lR09UARQp8XjlCc.POHmkMmYvuk7UU8RFgmwoSZnYYo9lALOFyme
 0b8S6oc04yW.bSCuosA3bdOG28kMFhinOKcJfWqYRg70jTFgyWN0zcf8YH53ZzAehnOkoiaIX67a
 YtHKynRB1FEl1fD1.8kgchxBFGCiur2qWl6ljHL7RXqU8wekkpWPumnIYUXWwGhqJMlYTcN4o3BT
 nKG.VmmL1IPwFIfGrNN4NBk8Ow_CYFnj6dnUKa2ut.eM0VyEa.lekmneQVQqM9.mh_tYk.tMWIyu
 GKXBEr.M9n9CPtbX8yFI9AM4dRysevwvrkbPaUtEZuqtvW8AS3TWNfGunUyLza63qToPNkWIDR.7
 dbzJQu3CF
X-Sonic-MF: <ashbreger@yahoo.com>
X-Sonic-ID: 147bd543-8aed-425f-b039-5b53d70c982d
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Sun, 4 Feb 2024 14:29:33 +0000
Received: by hermes--production-ne1-859cdb6f58-wf5m7 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 9a8f29a52c72ad73a5c438f5ec5ef6d8;
          Sun, 04 Feb 2024 14:29:28 +0000 (UTC)
From: "'Ashley Breger' via blinux-list@redhat.com" <blinux-list@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: Programming lists
Date: Sun, 4 Feb 2024 08:28:56 -0600
Message-Id: <B42E3812-6138-4C06-BFEF-C0348F5776DD@yahoo.com>
References: <3bf96e24-1da8-4080-9b7c-d205ffe7f03e@jasonjgw.net>
Cc: blinux-list@redhat.com
In-Reply-To: <3bf96e24-1da8-4080-9b7c-d205ffe7f03e@jasonjgw.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: yahoo.com
Content-Type: multipart/alternative; boundary=Apple-Mail-3B0F8F00-A858-4A54-9A18-CFD908DB8B6C
X-Original-Sender: ashbreger@yahoo.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ashbreger@yahoo.com designates 74.6.129.81 as permitted sender) smtp.mailfrom=ashbreger@yahoo.com
X-Original-From: Ashley Breger <ashbreger@yahoo.com>
Reply-To: Ashley Breger <ashbreger@yahoo.com>
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

--Apple-Mail-3B0F8F00-A858-4A54-9A18-CFD908DB8B6C
Content-Type: multipart/related;
	type="text/html";
	boundary=Apple-Mail-AD036F59-F743-4768-9741-365D7AD015DC
Content-Transfer-Encoding: 7bit

--Apple-Mail-AD036F59-F743-4768-9741-365D7AD015DC
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto"><div style=3D"display: block;" class=3D=
"">Try the following link.</div><div style=3D"display: block;" class=3D""><=
br><div style=3D"-webkit-user-select: all; -webkit-user-drag: element; disp=
lay: inline-block;" class=3D"apple-rich-link" draggable=3D"true" role=3D"li=
nk" data-url=3D"https://nvda.groups.io/g/nvda/topic/88338966?p=3D%2C%2C%2C2=
0%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cposterid%3A20718%2C20%2C0%2=
C120%2C88338966"><a style=3D"border-radius:10px;font-family:-apple-system, =
Helvetica, Arial, sans-serif;display:block;-webkit-user-select:none;width:3=
00px;user-select:none;-webkit-user-modify:read-only;user-modify:read-only;o=
verflow:hidden;text-decoration:none;" class=3D"lp-rich-link" rel=3D"nofollo=
w" href=3D"https://nvda.groups.io/g/nvda/topic/88338966?p=3D%2C%2C%2C20%2C0=
%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cposterid%3A20718%2C20%2C0%2C120%=
2C88338966" dir=3D"ltr" role=3D"button" draggable=3D"false" width=3D"300"><=
table style=3D"table-layout:fixed;border-collapse:collapse;width:300px;back=
ground-color:#E9E9EB;font-family:-apple-system, Helvetica, Arial, sans-seri=
f;" class=3D"lp-rich-link-emailBaseTable" cellpadding=3D"0" cellspacing=3D"=
0" border=3D"0" width=3D"300"><tbody><tr><td vertical-align=3D"center"><tab=
le bgcolor=3D"#E9E9EB" cellpadding=3D"0" cellspacing=3D"0" width=3D"300" st=
yle=3D"font-family:-apple-system, Helvetica, Arial, sans-serif;table-layout=
:fixed;background-color:rgba(233, 233, 235, 1);" class=3D"lp-rich-link-capt=
ionBar"><tbody><tr><td style=3D"padding:8px 0px 8px 0px;" class=3D"lp-rich-=
link-captionBar-textStackItem"><div style=3D"max-width:100%;margin:0px 16px=
 0px 16px;overflow:hidden;" class=3D"lp-rich-link-captionBar-textStack"><di=
v style=3D"word-wrap:break-word;font-weight:500;font-size:12px;overflow:hid=
den;text-overflow:ellipsis;text-align:left;" class=3D"lp-rich-link-captionB=
ar-textStack-topCaption-leading"><a rel=3D"nofollow" href=3D"https://nvda.g=
roups.io/g/nvda/topic/88338966?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostd=
ate%2Fsticky%2C%2Cposterid%3A20718%2C20%2C0%2C120%2C88338966" style=3D"text=
-decoration: none" draggable=3D"false"><font color=3D"#000000" style=3D"col=
or: rgba(0, 0, 0, 1);">nvda@nvda.groups.io | Blind programmer mailing lists=
</font></a></div><div style=3D"word-wrap:break-word;font-weight:400;font-si=
ze:11px;overflow:hidden;text-overflow:ellipsis;text-align:left;" class=3D"l=
p-rich-link-captionBar-textStack-bottomCaption-leading"><a rel=3D"nofollow"=
 href=3D"https://nvda.groups.io/g/nvda/topic/88338966?p=3D%2C%2C%2C20%2C0%2=
C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2Cposterid%3A20718%2C20%2C0%2C120%2C=
88338966" style=3D"text-decoration: none" draggable=3D"false"><font color=
=3D"#A2A2A9" style=3D"color: rgba(60, 60, 67, 0.6);">nvda.groups.io</font><=
/a></div></div></td><td style=3D"padding:6px 12px 6px 0px;" class=3D"lp-ric=
h-link-captionBar-rightIconItem" width=3D"36"><a rel=3D"nofollow" href=3D"h=
ttps://nvda.groups.io/g/nvda/topic/88338966?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%=
3Arecentpostdate%2Fsticky%2C%2Cposterid%3A20718%2C20%2C0%2C120%2C88338966" =
draggable=3D"false"><img style=3D"pointer-events:none !important;display:in=
line-block;width:36px;height:36px;border-radius:3px;" width=3D"36" height=
=3D"36" draggable=3D"false" class=3D"lp-rich-link-captionBar-rightIcon" alt=
=3D"apple-icon-180x180.png" src=3D"cid:E78D0586-CE5C-429A-8A69-1EE81BEF55E5=
"></a></td></tr></tbody></table></td></tr></tbody></table></a></div></div><=
br id=3D"lineBreakAtBeginningOfSignature"><div dir=3D"ltr">Ashley Breger</d=
iv><div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 4, 2024, at 8:24=
=E2=80=AFAM, 'Jason J.G. White' via blinux-list@redhat.com &lt;blinux-list@=
redhat.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<span></span><br><span>On 4/2/24 00:37, Rich Morin=
 wrote:</span><br><blockquote type=3D"cite"><span>This reminds me of a ques=
tion I've been wondering about for a while. &nbsp;Is there (and if not, why=
 not) a multi-topic forum for the blind? &nbsp;It could be hosted and archi=
ved in any number of ways, have topical sub-channels, etc.</span><br></bloc=
kquote><span></span><br><span>I'm not aware of any. There are technology ma=
iling lists which are not specific to an operating system or screen reader,=
 however.</span><br><span></span><br><span>Harder to find are fora that att=
ract mostly or entirely people who have or seek to acquire technical knowle=
dge. Often, the fora are filled with questions from nontechnical end users =
that could often be answered in 30 seconds by doing a Web search, or by loo=
king up documentation. I'm only exaggerating slightly.</span><br><span></sp=
an><br><span>Are there any screen reader/assistive technology/braille-relat=
ed discussion fora that are open to participation but tend not to attract, =
for want of a better term, nontechnical end-users? The Linux-related lists =
are perhaps the closest we have.</span><br><span></span><br><span>-- </span=
><br><span>You received this message because you are subscribed to the Goog=
le Groups "blinux-list@redhat.com" group.</span><br><span>To unsubscribe fr=
om this group and stop receiving emails from it, send an email to blinux-li=
st+unsubscribe@redhat.com.</span><br><span></span><br></div></blockquote></=
body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--Apple-Mail-AD036F59-F743-4768-9741-365D7AD015DC
Content-Type: image/png;
	name=apple-icon-180x180.png;
	x-apple-part-url=E78D0586-CE5C-429A-8A69-1EE81BEF55E5
Content-Disposition: inline;
	filename=apple-icon-180x180.png
Content-Transfer-Encoding: base64
Content-Id: <E78D0586-CE5C-429A-8A69-1EE81BEF55E5>

iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAYAAAA9zQYyAAAABGdBTUEAALGPC/xhBQAAAAFzUkdC
AK7OHOkAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAZiS0dE
AP8A/wD/oL2nkwAAAAlwSFlzAAALEgAACxIB0t1+/AAAH2JJREFUeNrtnfmXJGWdr583IvetMmtf
uqt636q72dQDIos2Ag5XES+OIwKiCHqYe6/neM78FfeHO5zBEZQRWhQP6ug4KAwIKLay6Gg3vS90
d/VSmbVkVWZW7kvEe3+IrKbA7qrMrFyqqt+HkyxJx5bvJ95447sKKkBKOfc/7YAP6AS2A9cBm4AQ
MFD+3gvYKtm34rKlBKSBKDAKxIDjwJvAwfL3KaA4u4EQYsGdzvsnPiBkN9APXAHcBuwE1mAJ2TZn
f2Kh/SoUZeScD1gijwEjwH7gJeAdIAxkZzeaT9iX/D9zxOzAEu4u4G7gSqAN0FDCVTQGCZhAAtgH
/Ax4FUvoBbi0qC/67Rwxh7CE/BXgBsDf6itVXJYkgT3AU1jCjsHFRf0335TFLIAh4D7gAWBdq69I
oQBOAU8DzwBnAPlBUb/vv+aIeSPwTeAeINjqq1Ao5hAHngUeBU7wAVFrF9lgCEvM96PErFh6BLG0
+U0srb6PC4Iuz86h8h++B8s0p1AsRXxYGr0fCM21xmlwQcwO4BasF8Bgq89YoViAIJZWbwEcs6Ke
naEFsBbrBXBNq89UoaiQNViaXUv5fVArK9uFZZ67sdVnqFBUyY1Y2nVJKS84RwawnCZq3axYbviw
tDsACA3LbX0FlgdQoViOXImlYZuGFUh0KxBo9VkpFDUSwNKwVwO6sAKNtEXtUqFoHRqWhrs0YAfW
26IKNFIsVwSWhndowLVYDhWFYjkTAq7VsILzVTC+YrljAzZpqNlZsXIIaVj2O/VCqFjuaMCAhpUD
qFCsBDqFlLKIWkMrVgYlIT+QCatQLGfU2lmxolCCVqwolKAVKwolaMWKQglasaJQglasKBpqf5aA
YUoMKZES659YoVG6EAgBNk2gCaFC/ZY5c8falGBeZKx1IdC1xo51QwRtSkm2ZBLNFTkyneHgVIZY
vkimZFIyJXZN4LHpdLhsbO/wsiXkod1lw23T0ZSylxWmhGzJYCpX5Ggsy8GpNNO5EumSQcmU2DSB
16YRctnLY+2m02Vv2FjXVdASSBUMjsezvHouxhuRGc4k86SKBmbZfzN714J1x/odOmsCLj7aG+CW
wSAb2tx47XpjR0GxaCSQLhqcTGR5+WyMNyMzjCTzJAsXH2tNCAIOnUG/k4/2Bti1OsSmkDXW9dR1
3TyFhikZSeb59ekpnj89xUgyR8mkortQSolN01jf5uYz6zr4uzUhVvmc6BXUA1Y0H0NKziXz/Hpk
mudPT3EqkaVkyorqN5sS7JpgTcDFZ9a2c8faDgb99Rvrugi6YEr+OpHk6SPjvD4aJ1cy0Wo4QVOC
166xa3WQB7b2sr3Di12tQZYURVPyTjTF7iPjvHYuTqZk1DjWErdN4+OrQnx5aw9XdfnqMtaLFnTB
lPwxnOCx/WH2TqZAwmJuNlOCLuC6vgCP7Oznw91+bErUS4KiKXl7bIZ/3R/m7fEkpqzsCXwpZHlN
8qFuH/+4s5+P9rUtWtSLWkObEvZOpvj2/jB/nUhad+oitacJa79/DCfQhMB9pc7OTq96WWwxpoQD
U2kePxDhzbEkQixOzGBNfBL480SSf90fxmvXubrLv6j91ixoCZxN5Xn68Bh7J1M1PXbmvVApeCOS
oNttx2Pvo8djf69xgaK5CBhLF/jh0XHeGpupa88Ra1+Cv0ykePrIOD1uB6v8zpr3X7OgcyWT509F
+f1o4n1vs3X7DQWUTMlvzsVIFw263Hal5xYhgIlskTciMxhS1nXymsUEfnc+zraQh69u68Vlq83n
V5OgpYSjsQzPn54mUzIbthzQhGAmb/Dimdii1uWKxSPL70aNEDNYN02maPL86Sk+1t/Gjg5vTWNe
021QMCWvnY9zNplr+NpWiMW9ZCrqQx1ejyo6xkgyx+9G4xTN2p7HNQl6LJPnj+FEzQet+kLVZ0l8
mkHBkPwhnGA8W6hp+6oFLYEzyTyjqdoOqFAsxNlknrPJfE3vTNULWsLxWJZ0yWj1dStWKKmiwYl4
llo8JFULuiQlp2dyFAxlc1A0hoIhGZnJXogJqYaqBV0wTKZzRUxlRFM0CIlkKleq6R2tarOdISWF
Jr0MXgxl8GgurRhpieVmN2qYoasWtE0IHC3yQ6/2OxnyuyxToXpANJZyCMLpmRyjqXyzD41T12qK
wKta0A5do8ttR0NgNFFVmhDcua6DL23uadkNdblRMCRPHxnjuwfHkE0e6w6XvaZApaoFrQvB+jY3
Tl2QKTXvIt26xuagh3anTUXfNYmiKdkS8uC2NXesHbpgfZurphm66pdCIWBT0I3P0bysElNCu9um
gv6bjC4Eg34nIaetJhNarfjtNja0uWt6Yape0MCQ38Uav6uJL2iS4XYvfV6HcoM3EU1An9fB9k4v
zXxpWd/mYqjGiLuaXN9dHjs3DQRx6M2pgiCEQBOWwV3RXFy6Rr/XWVF6VV2OZ9O4caCNTre9pu1r
UqRNE9w00MbGoLsp960A/hBO8P3DY5xMZJtwRAVYE8iLZ6bZM5poyvEksCno4cb+IHqN70k1CVpg
PRbuWt9JwKE3RdTxfImfn4zy7f1hDk9nlNWuwSTyJX5yYpLHD0Q4Hm/8JCKBNofO59Z3sDZQ+3K2
5jWDXde4fSjErYMhdCEaLjBNCLJFkxfPxPjnfaP8ZSKlRN0gotkiu4+O8+ShMc4k8w0PEZZYeaS3
D7Vz62AIu177AWsWtAB63A7u39LLDf0BmuHrEALyJZPfnY/z//aeZ084UZO/X3FpIpkC3z0U4Zmj
40TShaaIWQA3DQS5b0sP3R7HoowNi0qSFQK2htz8484BBILfh+MYFdZnWMwxS1Lyp/Ek2ZJBptjH
rtUhVe6gDpxN5vnewQi/GpkinjcaL2Yp0TXBTQNBHtnRz+aQe9GWs7rU5TBMydFYhh8em+DFM9Mk
avwx5p7IQptLLLPSxjY3X93Wyx1rO/DUmId2uSOBk/EsTxyM8F9np0kXzIrMo7L8t1rmLymhzWnj
79aE+NLmHjYH3TW/CM6lbpWTTCmZyBZ57Vycf383yuFYhrxhVnzHeWw6W9vd+Ow6+6NppnLFBfPX
Zk980O/kvi093L2hk4DDpgKYqsAs54d+50CY187HyZYWHjMJODXBppAHIeBUPEu6ZFZ0PIkVp7Gt
3cPdGzrZtSpEp9tet6dB3ZsG5Q2TvZMp/u9fz/Pf48l53dQOXaPbbWe43cN1fQFuGGjDoWn89N1J
nj02wWSmWPFM0eO2c8/mbr64qZsOt12JugIMKdkfTfOd/WH2hGfImxWIWVrjtmt1kIeGe2lz2tgT
TvBGZIbD0xkms4V5Y+VLpuRDPX7+6epVXNXlw1lnX0bdq486y8FLfvv85jy7JvjUUDv3bulmbcCF
z65fEP/9W3rw2DR+cGSCcHrhSC8BjGeK7D4yTrZkcu+WHvo8yqs4HyVT8peJFN85EOaNsRmrNt0C
20gJHrvGrYMhHt7ez6agCyEEq3xOPr22g5OJLLuPjPPy2RilS4QYS8Bv1+ly2+suZmhYwfOFlaRr
gm3tbq7o9BJy2rCX6wYLIOS08cVN3Tyys4/1ba4LP8S8RxQwlSvyo2MTPHEwwkgypywgl6BgSt4Y
m+HRfef5Q6RyMfsdGp9e28H/umKAzUH3hbredk0Qctq4qsvH5qCHyqxujZltWtpwU5T/uhg+u87n
1nfit+t879AYh6czGHL+H14TgmShxE9PTJApGjw43MvGoFsFNM0hZ5jsGU3w+IEI+6KpiooESSDo
1PnMuk4eHO5lle/icRYCUX4qti5gfUl3kHXqGp9a047XrvPEwQh7J1IUTTnvUkIIQa4k+eWpKTIl
k68N97Kjw6tCTrHqOb96Ls53D0Y4NJ1Bq6DWhpTQ4bZx94YuHtjaQ4/H0erLmJclLWiwQhhvXhXE
Y9N4/GCENyNJCoa5gKitNeJLZ6ZJFg0eHu7lI71+HNrla9abKRi8MDLNk4civJvIVvTUkhJ6vXa+
sLGbe7d00+GqLWComSx5QYM1i3ykN4DbpuO1Rfjt+YXrEotyCtEfwgnShRIPbe/jpoEg7svQVj2d
K/HLU1G+f3iMc6lCZWIGVvmd3Le5m89v7CLoXBZSWR6CBkvUOzu9fPPKAXwOnRdGpkgWFha1BPZO
pnl0X5h00eT2odBl1fJiMlvkpycmLVd2pkIxS1gfdPHA1l7uXNeBbxn9XstG0LNsDLp5ZEcffrvO
v5+MMp0rzjtIs+8oR+MZvr1/lFTR4LPrOmhbJjPOYoikC/zo2DjPnZgkmi0uKGaJJebtHR4eHO7j
tsHQsnuiLctRHfS7eHC4l4BD58fHJwinF555NKwM5u8ejJAsGPzD5i46l8GasFbOpfI8dWiMX5yK
Es+XFva6ls0d13T7+Pr2Pm4cCOJcRNRbq1iWggbo9Ti4d0sPAYeNp4+McXomt7CohSCczrP76Bip
ksGXt/TQ513ab+21cDKR43uHIrwwMk2yUJmYNQHX9gb4+o4+ru0NLNtgr2UraLAcMJ/b0InXrvHk
oTGOxbILxgRoQhDNFnnu+ASposFXt/ayruy8WQkciWV44kCEV87FyBQXbugjJWia4OaBNh7e3sfV
Xb5lbeJc1oIGy416x5oOPHad7x6MsD+aBljQAZPIG/zy5BTJQomHhvvY3uFt9aUsmn2TKb5zMMye
0RlyJXPBMF4pJXZN45bBEA9v72N7u6cuEW+tZNkLGsBt09hVtlU/cSDCn8dTmMzvVRTlpNuXz8RJ
FUy+saOPa7oX17CmVZhS8vZ4kscPRHhrbIaiIReMY5HSSki9faidh4b72BRaGR7VFSFosLyK1/e1
4bHpVsBNZMbyKs6zjSYgb5rsiSTIGpaor1tm68eiaRUIf/xAhL2TqXIDzPm3mQ0y+vTaDr423Mva
gHtZ3sgXY8UIGqwgmWu6fXzrqlV4yg6Y3AIx2QLLq/in8RlyJYPs9n5uWtWGq0klGhZD3jB57Xyc
xw9EODSdxqwg2F4CAafOXes6+cq2Hlb5XCtGzLDCBA2Wq3y43cu3rlqF36Hzwsg0qaKxoKilhHei
af553yhZw+CTq5e2AyZTMvnN2RiPHwhzrJyVXUmQUYfLisv4cjkuYwVpGViBggZrKbGuzcX/uaIf
n03nF6eixPKligbvWCzDo/tGyRRN7ljTviQdMDMFq17G9w5GODWTq+i6JNDjcXDPpi7u2dxNu2tl
JkEsvdGqEwLo9zr5xs4+vHad505MMJEtLjiIQsCZmRyP7Q+TKhrctb6Trhqr+DSCWL7E86emePLw
GOcqKDEwG8S5yufk/i09fGFjF/4m1iVsNitW0LN0uux8dbgHr13jh8cmOJ/KVyBqQSSd54mDYWYK
Jf5hUzerfM5WXwrRbJGfn4zy1JExxtKFinIuBbA24OIr23q4a30nHtvKFTNcBoIGaHPY+NLmbvwO
nacOj/NuYuE1pyYEsVyJ3UfGSRYNvryll7VtzSxQ+X7GMgWeOzHJM0fGK04gFsDmoIevDfdyx9r2
hqQ8LTUuC0EDeO06d63vxFfOgDk0lb7QHfVSCCFIFw1+eiJKqmjw4LY+tpYznRcib5ikiiYzhRKp
glFOQBW4bRoBh47foeOz6xXZfs+l8vzo6ATPnZioLC4DK3ZlR6eXh7f3sWtV8wprtprLRtBgVdK8
fcjKgPnewQh/nkhhmvN71KwMGJNfnZ4mXTT52rDlHr7U2nUyW+TdRJYD0TTnUnki6QLRbJGcYaIB
PodOt9tBn9fB+jY3Ozo8rAm4LmlROZnI8fSRMf7jVJRUoUJXtoAP9fj5xvY+Ptbftqxd2dVyWQka
LFv1TQNt+Ow6Tx6K8PpogoJhLhhXXTQlr56Lky4aPLS9j+v7Au+bXeP5En8eT/Lb0Th7J1OcTebJ
FA0ultEvsMyLIZeNjUE31/YG+PiqIFvbPe9rt3FoKs2/HR7jv87EyJUqEbPVWP5j/W18fXsfH+n1
rwjvXzVcdoIGS0wf6vbjsWl47TovnYmRXSgDBquOxZtjM2RKJpmiwSdWh3BoghPxLL84GeXlszFG
kjmKhiUsrVzX+mJIrCz1aKTIgak0b47NcOfaDm4bCtHhsvPXiRRPHIzw+micgrFweTWzHJfxidVB
Hh7u48oub8MazS9lLktBg/VYHm738siOfrx2nf88FV04AwYrrWvfZIp/eSdMPF+i1+PguROT7Akn
SJWj2yp5xM/O0gjIFA3eHktyNpljNJ1nc9DDz09GeXPWfb/A7kwpcdk0PjXUzoPDvWwNeVeU968a
LltBg7WU2BB08/BwH16bxs9ORJnOl+YVw2yC/tFYhsf2h/HZ9XJnXbPmx7tWLkccSRd49tgEfrvO
eLZYsZh9dp0713fywNYe1gfcl3WBncta0GAJdNDv5CvbevHadZ49NsF4prigqAHCqcKFLxb7eJ+d
sRN5g3i+hBCiIjG3OW18fmMX923uYXWNfUlWEpe9oGeZzYDx2nV2Hx7nfLoSB0z9z8NahSy8Y1NC
p9vBFzd18cVN3fR6V15cRi0oQc+h3Wnj7zd04bPp/NsS7ucisepl3Lu5hy9sWtm5kdWiBP0B/A6d
O9d3EHDofOdgmCPT2QVLkDUTCazyOvjy1l7u3tC5JIOnWon6NS6CS9f45GAIr0PjsXcivDOZorhE
RD3kd/FgOS5jKYe3tgol6Etg0wTX97Xh1nUe2x/m7bEZChVU6WwUVucxNw9t7+OONe3Lrl5Gs1C/
yjzMOmD+6erVfKKcs9iq89ja7uF/X9HPZ9Z1KDHPg/plFkAIGO7w8K2rV7NrdaglcRE9HjuP7Ozn
9qH297nGFX+LEnQFWDHFTm4bDLUkBLPNaWNbuyoJXAlK0BUiJRQN2ZKuANly7IjqR7AwStBVYEhJ
K7pcSNmqevjLDyXoKvDMaWzUTJw2gcumLQmz4VJHCbpCNCHo9tjxO/Smz5YdLjsBZXOuCCXoCtEE
dLnsdLpsTX3+6wI2tLlXdKZ2PVGCroKAU2ddmxtE8xRt1zW2hNzKwlEhStBV4LbpXN/fhs9ma9ok
vdrnZGenF7WCrgwl6Cqwa4IrO31sDrmpc0fpi6IJwXW9AYb8rss6aL8alKCrwKrG5OB/rO3Aa2/s
y6FEMuR3luM21Pq5UpSgq8Rl07h5VRvX9wUadgwJeGw6n13fydZ2z2WbH1gLStBVIoABr5Mvbe5h
a8iDWed5WgI2IbhldYjPrrM6EygqRwm6Bmya4MM9fh7a3su6gNtqh1aH/Vpihuv7A3xtuJd+lVZV
NSoeukbcNisJwJTw5KEIx+NZDJOalgez/QHddo0b+tt4ZEd/eamh5FwtStCLwGvTuWNNOyGnjR8d
m+C/J5LM5A0kVmGYShrDm0hsQtDjdXDrYIgvbe5mfdvlXYpgMShBLxKnrnHzqiBrAi5+PTLN6+fj
nExkmSkalEx5oSDkrD5nZ2NNgEPX6HQ52N7h5bahEB9fFSSkcgQXhfr16sBsDeaHhnv5+ECQt8Zm
ODKdYSSZYzxTJFMyMMp2a7smCDhsDPgcrAu4uLLTx4d7/PR7nWpWrgNK0HXEqWsMd3jY2u5hplDi
fCrP+VSBaLZAqdx72G3T6HHbGQy46PM4VDpVnVGCbgCagKDTRtBpWxENPZcTanpQrCiUoBUrCiVo
xYpCCVqxolCCVqwolKAVK4qWCVpKq95EzjApmlKl6S9jJFZTpZxhkCtZrv9WUXc7tAQKhll2JFya
oin55ekoo+k8Ozu9XNsToNfrUOn6ywgJ5EoG4XSRt8dn2B9N8+fxJEVz/u1KUlIwzAvNQetJXQVd
MEzOJvO8cGaad+O5eXuOmFJyMpHjVCLHr05PsTHo5tbBdj45GGK136lquC1xCobkbCrHS2di/OZc
jJPxLJmSueB2uhC8G8/x4plp7Lpg0OfCoddvrIWsU3JcolDi96MJfnxsgr3RNHnDrOruM6XEbdO5
ptvHPZu6+Vh/m0rdX6LMFAz2hOM8e2ySvZNJsiVZVdisBJyaxtXdPu7Z3M0N/QECjvrMrXXZSzRb
5Benouw+Ms75VAFdVP8o0YQgZ5j8IZzgXDLPWKbAnes6aXcp7/xSYjpX4hcno/zg6Dhnk3mEqD4G
XAAF0+SNyAznUnnGMj18dl0HHXVorbHoGXo6V+LHxyd46vAY0VyxLp1LDSnp9Th4cLiXv9/Qpdou
LBFi+RI/OTHJ9w+NMZ4t1G2su9x2HtzWyxc2dS86fHZRVo5syeTXI1PsPjLGVJ3EDNY6ayxTYPeR
cV4+GyNXwdpM0ViyJZOXzkyz+8h43cQM1lhHs0WePjLOiyPTix7rmgVtStg7meKZoxNMZot1TxfS
heB8Ks8Pj05wYCp9IZ5Y0XwMKdkfTfHDoxOEU/m69w/XhGA8U+AHR8d5J5rCXMRQ1yRoCURzRX5y
YpJTiWzDct80ITg4neb501PEcqWGHEOxMNO5Ev95epojsQx6g6xPmhC8G8/y03ejxPLF2vdTy0ZS
Sv4ykeSPkZmGmtCt3tqS187FOTydUbN0CzCk5NB0mt+ejze82LsE9oQT/HUiVfOxahJ0smjwytk4
8UXcSRWfoBCEMwX2hBNkFrLYK+pOqmjw+miCsUyhKVno07kir5yLkapxrKsWtATOJfPsW+Rap6pj
SslbYzOMZwrKRd5EJDCeKfCnsWRTavnBe+9mo+l8TWNd/Qwt4dRMjulc42fnWYQQRNIFIplCS3qc
XK6YUhJOWb+7aGIGbzRb4nQiV1P1nqoFbQInYtmmmtIE1qNvZCZ3IZBJfRr/KRqSUzM50kWjqfE1
2ZLBiXimphm6ait20TAZTecXDD6qN0VT8vZYkk63HbuK82gKBUPyp/EkpWatLcsYEs6nCxRNs+o2
elULumCaJFvUYuy10Thvjs2oaLwmIbEcKs3GRJIqGBRNibPKcJ5l5VPOl0zyymuomIeq19AOXcNv
19UsqWgYGgKfXa9paVm1oO2aRr/XWXf3p0Ixiy5gwOfArlVvhKt6Cw3YGHSrElaKhuG26WwMempa
BVSvSgHr2lyEnIuPXVUoPogE2l021gRcNeVnVS1ogdVq7IpOr+r9oag7moCrunys9jlrmqFrsnIE
HDq3DAbZE04Qyzc2Ck7SuqbxivcQwgrpbfQc1u60s2t1EJ+9tiVtTYIWwuox8tG+AC+MTDfUJq0L
wZDfScBhU5aVFiHhQnngRvpYBHB9X4Bruv01B0LVJmig0+Xg8xu7ODSdaVhMtCElwx0eHtzWx6Df
Wff9KyrnTDLHkwfHODiVbkhMtCklG4JuPr+xa1G5hTU7VjQB13T5uG9LN4/tDzNV56wVQ0r6y+3T
bh9qx1nHVHdF9Wxr95AtmvzLO2HCmfpmrZjlvML7t/RwVZdvUe9mi7K9eew6n17bwf2bewg57XWL
hDOkpMft4IGtPdw2GFJiXgI4dY3bh9q5d0sPXW5H3ZItTClpd1livmNNx6LNwXWpyzGRLfKzE5M8
c2yCsXSh5jtMYsXDDvmd3L+lh7vWqzIGS41otsjPT0Z55ug451P5irp9XQpDwoDXwX1bevifGzrp
ci+BMgazxPIlfns+zo+PTbB/Kk3RlFUWmgGXLriqy8c9W7q5sT9IQBWaWZIkCiVeP5/g2eMT7JtM
kTeqLzTj0ARXdPr44uZubh5oI1inUhV1EzRA3jA5lbDKPL1yLsaZZJ5c6b3mwZe6ZrdNY12bm1tW
B/nUUDtD/vqWh1LUn4JhMjKTvzDWpxI5csbFA8fm1rBz2TTW+F18cjDE7UMh1gZcVYeIzkddBQ1W
VdFMyeBsKs/bkSTvTKU4lcgxkS2QK5mY5R59bptOj8fOhjY3Ozq9XNcXYMDrwG1TgU/LBSkhaxic
T+V5MzLDgakMJxNZxjNFsiVjzlhrdLsdrG9zW4U5e/2s9jmtsa7zYNdd0HMvtliuMhnLlRjLFJjO
lygZErsuaHfZ6PE4aHfacOgaNq3xRntFY5DyvYqi0+WxjuVLFA2JTRe0O230ehyEXDacuoZNiIb1
ZGyYoN93weWLnls3WCDe12FVsTJo9Vg3RdAKRbNQMaCKFYUStGJFoQStWFEoQStWFErQihWFBqg6
tYqVQkkD0tRURUyhWFJIIK0B0VafiUJRJ6IaMIpVg1GhWM6YwKgGxFp9JgpFnYhpwHHUi6Fi+VMC
jmvAW6hZWrH8iQFvacABYARl6VAsXySWhg9owCSwH/ViqFi+mFganpy1Q78MzLT6rBSKGpnB0nB6
1lP4DrCv1WelUNTIPiwNlzSs9cco8DMg1eozUyiqJIWl3VFAauV2XTngVeD3rT47haJKfo+l3ZwQ
4kK0nQROA09jvS0qFMuBESzNnqZspdOA2aaKBeAV4Ckg3uozVSgWII6l1VeAwmxj0Avx0OUvYsAP
gGdR62nF0iWFpdEfALG5XW4vVn/pDPBo+d/vAYKtPnuFYg5xLDE/iqXV9/E3pRLKVQ0EMATcBzwA
rGv1VSgUwCmsNfMzWGKWH+xBftHaH3NKdYSAXcBXgBsAf6uvSHFZkgT2YK2ZX6UceyQuUn7pksVs
5ojaAazBEvbdwJVAG9b6WxU+UjQCieXOTmA5TX6GJeQRLOPFRcUMCwjyA0WV3EA/cAVwG7ATS+gh
3luLizkfhWIh5JwPWF7rGJZw9wMvYXkAw0B2diMxT2G8ioT3AWHbAR/QCWwHrgM2YQl7oPy9l2XW
R1zRdEpYcURRLC9fDCs2/03gYPn7FFCc3UBUUOHx/wPQnErDcwNFPgAAABZ0RVh0Q3JlYXRpb24g
VGltZQAwMS8yNy8yMRqM1RkAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjEtMDEtMjlUMjE6MDU6MjYr
MDA6MDA+NfhYAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDIxLTAxLTI5VDIxOjA1OjI2KzAwOjAwT2hA
5AAAAEZ0RVh0c29mdHdhcmUASW1hZ2VNYWdpY2sgNi43LjgtOSAyMDE0LTA1LTEyIFExNiBodHRw
Oi8vd3d3LmltYWdlbWFnaWNrLm9yZ9yG7QAAAAAYdEVYdFRodW1iOjpEb2N1bWVudDo6UGFnZXMA
Maf/uy8AAAAYdEVYdFRodW1iOjpJbWFnZTo6aGVpZ2h0ADE5Mg8AcoUAAAAXdEVYdFRodW1iOjpJ
bWFnZTo6V2lkdGgAMTky06whCAAAABl0RVh0VGh1bWI6Ok1pbWV0eXBlAGltYWdlL3BuZz+yVk4A
AAAXdEVYdFRodW1iOjpNVGltZQAxNjExOTU0MzI20UxESAAAAA90RVh0VGh1bWI6OlNpemUAMEJC
lKI+7AAAAFZ0RVh0VGh1bWI6OlVSSQBmaWxlOi8vL21udGxvZy9mYXZpY29ucy8yMDIxLTAxLTI5
LzcwNDc0YmM5NDhiYTlkZTBkNDAzM2U5MTNmNDE4ZDA0Lmljby5wbmerpjF3AAAAAElFTkSuQmCC

--Apple-Mail-AD036F59-F743-4768-9741-365D7AD015DC--

--Apple-Mail-3B0F8F00-A858-4A54-9A18-CFD908DB8B6C--

