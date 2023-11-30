Return-Path: <blinux-list+bncBC3NDNGRUAMRBU5UUCVQMGQEBYAVGXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDB97FE88D
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 06:15:01 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67a27d5e4d9sf36595656d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 21:15:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701321300; cv=pass;
        d=google.com; s=arc-20160816;
        b=t3T3eKZomQWVabTUR+RFCjaPyvq6diCIr5yPHg19xw52P0/qH1UamNx79HXOadrT2z
         NHc6SxsO27+tptOZbFb9L1yoD7i0oRujgTR13+5pAxyNT2RiLh72ReXDpc6FZzBewDXa
         IdS2kyJ0cSxiQDHwbLx0L1FM9eidbz+nl8Q1wEP4jNDGZSS1T/P5/Oqj6ArccR1uUG+J
         xMKVsBnCsX7Bwe+1sOdRGdJkrIVWsseiw/p4ucEPYMlaTUw4KCJM0kDwdsIAKWP8EdUn
         3uQTW59nq7IQLJS9lLwUOgOVx6oDQuzsLklQjEUV0yY4n9/NZH62/OdB6dNXEBmLdxY2
         /8Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=Akiy1MaiOGvPoXq2Mb90BvVkVUfEGEtPkqkciFrmLNw=;
        fh=dySJoaI0YIg8lBdVIj5InnGto4jopuxePvx29Zt5bFo=;
        b=W/20YK6s20j7QlJzKQregI920gQ61lvOIsaFlv+D3+0MKdtX7KefzM77XOBJMUr4ES
         He2ZZe9dSr+mBIxP9olRY/d9bwauOGmI2BmiMPKD6//p9MQZApjzrk83YuGKtSS5ospP
         oo4V+2Y5xFzBZNYmIxJZi1uFsPaKmYTmJUXesDGPduxBnGPq/RHqWCvGRx9r5he4q2KU
         Gyd7R7lmrid7zO1JSLuvdPIe4ghtOgOuqGfXJS4T786kflYoS7msZ46ph8J+h/49xDYb
         2kTF8WUWCWQ/+LEhBXFBNUXgc+SJL0ST/9+yidJPiCQcR0HT7/pvVbVEkZvRx4vQ0/Eq
         qWrw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701321300; x=1701926100;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Akiy1MaiOGvPoXq2Mb90BvVkVUfEGEtPkqkciFrmLNw=;
        b=pHASTrYufgndXsrz7Fyv2t8zb5TukemuCYmHs2Sf9JJKZrRDpsRbYFJp8vnThES7nV
         nzeo/Sp4EIGu8bsG1xGa85t3/fSJfekvKsKYCy38PZjKRt2Ybkvf7XGWlsRYuUlOWw2a
         ax09xbgQGvQxZshpBAmRGc8m/L/De9aNi00WZvC6vTCBHJ7k3CwseiVw4D/HCxO70hf4
         avGLuk6/Fdx89M8Kz5bjRVPktIDOiTX9fC3vaFSw7T8IFxJRmqct2MwNP8M4m7I4F+kb
         euLvGN1zjKsfn4DrwEWqnVlYEqW2m5SGo/fvIIwlb8xdtZr6VecXNDxxxngiAg3O5gsd
         Zs4A==
X-Gm-Message-State: AOJu0YzRnkJrYR5+UvqHCeg/KWhfEv0ck2+Mf8AeEzd4pxLx1YxAipwp
	eoxq0dR4jaKod3g9ZxBPTXfQdw==
X-Google-Smtp-Source: AGHT+IFifBkcfiObd82H3XawFQ5Dhy5jyoP9I8J969JE1NILvQND3//dUqPArR7mqbxnSrNksQTr5Q==
X-Received: by 2002:a05:6214:27cb:b0:67a:4643:a1d9 with SMTP id ge11-20020a05621427cb00b0067a4643a1d9mr21359554qvb.13.1701321300056;
        Wed, 29 Nov 2023 21:15:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1806:b0:67a:2b07:54c8 with SMTP id
 o6-20020a056214180600b0067a2b0754c8ls1343393qvw.2.-pod-prod-00-us; Wed, 29
 Nov 2023 21:14:59 -0800 (PST)
X-Received: by 2002:a0c:f050:0:b0:67a:e56:221d with SMTP id b16-20020a0cf050000000b0067a0e56221dmr29232479qvl.29.1701321299426;
        Wed, 29 Nov 2023 21:14:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701321299; cv=none;
        d=google.com; s=arc-20160816;
        b=jUTy2RLKpp1UN8+RuanEJe0S8TfiXpB1dubRX44TQ0jAwj3TgE9kpAFpYKqckcNznK
         cjHtTLIf9If0JbkdeeLN3/O+UqdeIN87SmQ7yGsCCLTvnuN6KQ7FzDcYolaKgXcCWx0N
         F/qYxEdaa1lsSATpR/fuySRzywnQnwcMmSDitn4n0QP+mk2TkajQcDZiRGNNSBh+/QPh
         ohk8Wp8+sqzikQHMp1uMU9UxysOov2GhAcWiLJYFlzq1ZMJCUKh8iJobrCeZ9XryrWdP
         +D8vDrWmcrurv6zwjzuFYP3Beo+Vds/9jWUVmZynbU6Pe+vcwJklSFcKHznTyfbdNiaF
         VTTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=bzOJLMV3j+dbn+V8MHPUMgAaDibbFrl376JhFBAv14E=;
        fh=dySJoaI0YIg8lBdVIj5InnGto4jopuxePvx29Zt5bFo=;
        b=ACQmCL3bltRD3taMU8t0U+WzZn3acbdvBNR/4BPw0IvVxKkUuaRLQ3jpTvDPyUsMyQ
         m10A2L7mvSNLoWSGF0DF/XhZbvEr3ErLf9I5GuSZ7jt4zuCHOoEmozlttcgxQK64VkKt
         V8W5gwPWgJp9sNz6qCzqRK5z/LNLt7kk7l4Y5/aXptkHMwfEBSvF+TBeCoIiwv3kXkws
         SZSwkVuYCy0dMWOhmkmXAIYlwlA4Vy23U3bTJ52DMGjnIjRmBc5Hj7+03eCUQJQbwqJK
         zaisg5Dwgte4dpmhUbSnAXiJ0rcZqLPR+BPFTYc7WnCfGW75FxdzAxfg+RG7p6cyU5GP
         vL9A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id l17-20020a0ce851000000b0067a3897e69dsi292833qvo.573.2023.11.29.21.14.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 21:14:59 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-602-Y8pdX8ORNhKFKmp1TBzz3Q-1; Thu,
 30 Nov 2023 00:14:57 -0500
X-MC-Unique: Y8pdX8ORNhKFKmp1TBzz3Q-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D30229ABA00
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 05:14:57 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8A08E492BFC; Thu, 30 Nov 2023 05:14:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81D3F492BFA
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 05:14:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C75A811E82
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 05:14:57 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-460-crWaIxOvP1qamBSqUBlh-w-1; Thu, 30 Nov 2023 00:14:55 -0500
X-MC-Unique: crWaIxOvP1qamBSqUBlh-w-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 282E45C0166;
	Thu, 30 Nov 2023 00:14:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Thu, 30 Nov 2023 00:14:55 -0500
X-ME-Sender: <xms:ThpoZXzF3KjUNWPBcn3y_OGggWEykPlDFk_fC49fHklo-6YJaIludQ>
    <xme:ThpoZfSZsx0Y9qSPu6JDNPyTcz3VxFDBs6pqubyYahtx05NJ2ospQe6fr13E0HpUj
    MAgqz6iq1syLfmWB_A>
X-ME-Received: <xmr:ThpoZRUdGn51kA0PlIu1XbUSE4YcTP4s8s5ti8wepcSAzOtEg5vq7VlzLFOj1nF6aB5CMSahtcJqYa6z1J0eOk_ibTieSZ_2zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiiedgkeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:TxpoZRisfnFmTGzxaJ3npdbujraNour4PUjrX8LokMhAV381kXz37g>
    <xmx:TxpoZZCa8NOXlR11G-kWKXb8W3gTWgVmt9np_Wr_0elffv_ulLH-xg>
    <xmx:TxpoZaLL9UW2Ikkolp3Pw0BFwWDR7bZbwzA8nCeIGKri9gnQ8dkIfA>
    <xmx:TxpoZW4iBjFtzAyjlU_QREXRyAqeUMfZFuUV5NSKYy7cOERF9ALUkQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Nov 2023 00:14:54 -0500 (EST)
Date: Wed, 29 Nov 2023 21:14:52 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Jude DaShiell <jdashiel@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311292351310.3721152@users.shellworld.net>
Message-ID: <c7729650-4674-9b10-4a3e-d65a802bce17@hubert-humphrey.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com> <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net> <Pine.LNX.4.64.2311292351310.3721152@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.26 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

O, Karen, after typing
elinks
it says "go to url" but after that nothing worked. An escape gave no output
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

