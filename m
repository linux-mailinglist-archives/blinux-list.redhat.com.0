Return-Path: <blinux-list+bncBDEPFPWCWMDRBOOTY6WAMGQEWMOJNRQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AC9820FA7
	for <lists+blinux-list@lfdr.de>; Sun, 31 Dec 2023 23:22:50 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-427b56e96a6sf135041051cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 31 Dec 2023 14:22:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704061369; cv=pass;
        d=google.com; s=arc-20160816;
        b=CRwJB8Fe4HmB2b23xZiPePtBqithHOB1hwa/xkU3HbrsW7wzcizAPC/krmIWVKEToH
         Brwq0+9yUt+5qkO65DPyGKJrtAeBIRZ/P8BAtrek5OLeXGoC6CcO6X8aii3Uuzr2MT2b
         6GHDLIVwubWN7fjAXQNqeVDVH79JdGPcLj6nAOw24opjbSdovIEjwbtiJjaJTM2lzAuc
         ybGLL1Cm+9arJw5KiLRzBU/YSqWi6YpeMVyc8xe+uJUf6MID2pbfontJF5cBtG0D0jtP
         Z6b0suyhK6ysBTJl4ixBxtHMBuKdD9B7ibS7Zdg2h3tGUtv1B4sG79fTuzBmnoBFxweC
         PMlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=V+FGGLPUExaXgQrFswWqe37LTfqimj2WJpp29p5lMGA=;
        fh=bUWW1R1V4Oa4f6njeRZrKqBiOU2zKO5LVIe4RDhFmeU=;
        b=fogN9QVFLt0D5LqQjc4CwigeVUv6y9Z/Rs+ABZDYNM9v8F8E7x7HI42iL0EO4RNRtt
         sZKkHstDk9Uhahveza23LyxOjNYvwDYopTL0IUU9IENeufWWmMX69j/1OMce6k6h4q6Z
         dq+er8fRCCQJwzizG/I+p8dROhmJ2FFBtainHfhpJD8/fZuWaiZ1ngAfvey3i/GYJUp2
         TNs5qepTEWcXvrTScXUrjQIvQux1azBGTD2Wmkt6kLozhLvSjdoI3rG7JAwUBO5nN53t
         gdI3lDsSxsJHePOxOR8FSc2tFTrmsrfv0Ljgi5/+FdreAwSWFCWDH0I+nWjHLF8zQCkf
         mVPg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704061369; x=1704666169;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+FGGLPUExaXgQrFswWqe37LTfqimj2WJpp29p5lMGA=;
        b=bF5HP3SLEJQyVGy55Vq61RCkVJ/xdFsfBsW/lHf6rBQAWMRy3Cy9p/NbneMvVPt43j
         J1Aq0yxq98Z5e4Ozun3R7lYaey7HXd4rWp8s3X75stw7dxG3/xmIs5DnziCYYXt1OozO
         nx1A8IM9xE85kuOgZZ/WkBvK3SpNpMjnDkfSwIssYSYPsP7+xdZC9K7k7d1as75BvuM0
         2H3+BazcMw3hT+GVT4O4xYacMGMNpqLe0cwXl9H821trqm7R078dWc5rfT/hmvE+baM2
         2Cm+9qSRVcr0hP2xOlpViejRhNXmcKzAkkZNQG/XtV5GMtKt+bLoQXHku22QYZHEjTGS
         eAdA==
X-Gm-Message-State: AOJu0Yw4ARn9EhHa+rLYmbpeLtaGJElTg/kVNuyNESzCtino+weWIXaD
	GmB4Cukk6VpV/ipLrnQnFdl1Kl5GfwFivQ==
X-Google-Smtp-Source: AGHT+IEskvHvQMTYjJ5L3FzMxAAJ9kCdUYrXmtPKgH/p5tE/Asfwfw8WygOudJnD2cujy4cdy+Grtw==
X-Received: by 2002:a05:622a:646:b0:425:4043:96d9 with SMTP id a6-20020a05622a064600b00425404396d9mr22733073qtb.102.1704061369544;
        Sun, 31 Dec 2023 14:22:49 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:13c6:b0:427:a283:e24c with SMTP id
 p6-20020a05622a13c600b00427a283e24cls2083853qtk.1.-pod-prod-09-us; Sun, 31
 Dec 2023 14:22:48 -0800 (PST)
X-Received: by 2002:a05:622a:1485:b0:428:d16:835e with SMTP id t5-20020a05622a148500b004280d16835emr4980918qtx.41.1704061368712;
        Sun, 31 Dec 2023 14:22:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704061368; cv=none;
        d=google.com; s=arc-20160816;
        b=t4b2YBQJ4kOZF35vrYjA1/MzRXCCEAr/BSnvZJFldcOyUmvKwPcwSmrYVzv+J7jXGl
         w6d9tBO4Q8aGIgAgtw8TG0Fkul5Bcngv92FOyccRTH2He4V8LI5feBP+FBUNsyKhTFoG
         3GIs4h2vgJ8H5AXoHZBaZhA3vNefcLpu7JZjV0TgRJ3wXA0dsEwX4FOuKWdFuld1Y+vP
         5WJLkXc9L9TvINcfjw/4MqQ50++iUP/d24QTbIlr1G7wPMAiA+uwuc7TOFJgg39sntz/
         729ffpDw8o5hoexba+SbfDj+S77Upq9PHgFZAjGOQtSWUp7KEPC2dN+AwFXJ/3dgWmHe
         2aMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=zDcbnzpSU8jCyVcHcDgyI1LN9fM4feGgLofPqw5OzK0=;
        fh=bUWW1R1V4Oa4f6njeRZrKqBiOU2zKO5LVIe4RDhFmeU=;
        b=KU2QUG7f2xOaKr96U3mcnQbNfK1l6jKW2ZbCyP1FpCo2G/SOmgTtlmiUuez9WOvC4B
         1mZfD+YSyrcymk9uNtRwbD+zdsC4jsa7E04kQ4gY4kG7NY/rOUWxj0KFvBeaUhM006R8
         NrZFofvSCkWhfs9w32FkN6fKz0GCLajhsvpzXO4I9DMF+R1ibwrDUVciENHt6FqI0FlL
         etnOt+Wnk3gTodsTAER8MXqC6a2tSW+oECMErRf0JS3BrlD5+LvHh55lCxcuwVSbraiu
         qVcgvVpuuABiqctKK+50dqssHd4roWzgei2aAkMcDJHaAYWGSZNS86F4fkrVnPTV+Idr
         li/w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id 1-20020ac85941000000b004237f549779si23580666qtz.53.2023.12.31.14.22.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Dec 2023 14:22:48 -0800 (PST)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-685-26reNu_pMM2Kxmf4nqXd8w-1; Sun, 31 Dec 2023 17:22:46 -0500
X-MC-Unique: 26reNu_pMM2Kxmf4nqXd8w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1CDB85A588
	for <blinux-list@gapps.redhat.com>; Sun, 31 Dec 2023 22:22:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AE4035191; Sun, 31 Dec 2023 22:22:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A66F55190
	for <blinux-list@redhat.com>; Sun, 31 Dec 2023 22:22:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B3083C000BA
	for <blinux-list@redhat.com>; Sun, 31 Dec 2023 22:22:46 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-695-95mA0tjyP1GLGt21VLttJQ-1; Sun, 31 Dec 2023 17:22:44 -0500
X-MC-Unique: 95mA0tjyP1GLGt21VLttJQ-1
Received: from email.seznam.cz
	by smtpc-mxd-669f474d4c-28xh6
	(smtpc-mxd-669f474d4c-28xh6 [2a02:598:128:8a00::1000:a7d])
	id 49a1fae75c39a9bd484b0bfb;
	Sun, 31 Dec 2023 23:22:37 +0100 (CET)
Received: from [192.168.1.193]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-57455747ff-m6g2z (smtpd/2.0.17) with ESMTPA
	id 98aa5fd0-4323-40ae-8731-d835a8f77400;
	Sun, 31 Dec 2023 23:22:35 +0100
Message-ID: <ba666dd4-3459-46f0-a29a-a1c087fba3e2@seznam.cz>
Date: Sun, 31 Dec 2023 23:22:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: stormux@groups.io,
 Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: Arch crash upgrade
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Hello all,

in Stormux and Arch for Intel machines, there was new upgrade.
iputils-20231222-2
mesa-1:23.3.2-1

After upgrading these packages, it isn't possible to run Mate, only 
console. Please is some way to repair it? In Intel arch Mate works, in 
Stormux not.

Thanks a lot.

Best regards

Vojta.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

