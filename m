Return-Path: <blinux-list+bncBDW4PB6JVENBBE42QW6AMGQEWJ6LWMY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id BE966A097A3
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 17:38:45 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8eb5ea994sf25343676d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 08:38:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736527124; cv=pass;
        d=google.com; s=arc-20240605;
        b=hy7EInzeKDM0YPd09EOC3pb3bHEZOK8+d+Z3ySZyRwOlHp0St3+k29lzJDucL5tB9h
         h+lpqswXPw4r6XshvZVhBCNW/icHcxO0FxLcNwmWqLb4Ji0HolqwO6CX2gjvVLVErUNj
         ONyfBOcRtzgL0HzIIQJKcoEo5wYKIzLLhEjlZFGeMBmFdvCTQXKl0UpWEnx2phSexuGc
         ddNO8vES3RUpbr1HNLy6hTmDZHFL93MFkikOX72YJnxZs4i7Q+56cHJnbk7NjaLaOKr9
         jUJQWl5QtcGCDrBrw7IEWvNKjPzEsYZAtl061fX+wB4do5htTSj+nIiS+ftZgcm+2XCU
         rflQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:subject:from:to
         :mime-version:date:message-id:delivered-to;
        bh=xkfg+1n97MYO6vFXbbTCwHVLlT5+NVLJc2jY5zBrsW4=;
        fh=l1EFZqbSXuNyA3kAzUD3mNtfEkDK1yvetWsLxOL+Kmg=;
        b=IuTPvqIqK6dVLcDqKb6/aCf6ZnWnJMaime59y66+lorHLMn38HMQthvIIBaznSZub6
         6TJj5sLfDMgvgWHPO5cxYcDtPCOX5+RTDxJUZe+QCnqfDRH8Xx2KcUGwZz5Ns8KDYOjG
         fT+jNiUHjuy7UyegLwBZDcACKVwLUR5mac6VtZXX5fxnxb91T83M+dTyfG4xq87bd/oC
         U8WvpmDTaoCdr4lTCsUL+8r0OkkCsGTvmsNdBtdjnJcJsKinbiEL1NFyqs1xjNbuqAoF
         56JYr+kyAm9UhKUt8ZhUQczV+99zUQoVw9Gd26d+mq75ZyYBmialwy9VnNwcnWTBOClX
         Pp5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) smtp.mailfrom=blinux@clul.router5.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736527124; x=1737131924;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkfg+1n97MYO6vFXbbTCwHVLlT5+NVLJc2jY5zBrsW4=;
        b=I4W/JXP+jfbf0eFY4dnUrZhpE9fbDlgPNVtW0jxW+j5crvS/2Wf4vx437694U7ssuZ
         mbI9vZx2v5K7VuidggbDTdZU9ZEE6TXn0xxbz0MxcfunhlD8W+lR9rkDQV2XJdwAm1k+
         eLXJmcTQBedVIju/lH0jPeNnbfaKMkZ5bgyw10RY30/qL+OAloCVGwatxmLOa7nzyMVb
         kaB9IphKIVbiFHMbCcMa3JgRZ4wmt3qbyfIpaAOTkA7nPTMZhJLMPboghkrnxKCIzlIj
         T5xrLbKV7oYXuv+8zmP08PZms11VlwPronJRXE4DimJjcx4oKkQoql4VnJ9TxsWYb6ab
         tWMw==
X-Forwarded-Encrypted: i=2; AJvYcCUHzIBCHdVrorWKachOD5J2gB6tsLMPSyALIXnwvr5+dNM85I5J07YNf4LCMQrIMnjSB/X1Tw==@lfdr.de
X-Gm-Message-State: AOJu0Ywg2/LzCFm+YuzKu5XGxqtUyfLo3JYwzXMnM/0vqXcTrEM/mZ5d
	sac2pRA1qGbaMdA2arZf0oBhUNaxrsBiqBjRUbn+ktVRiXEQrBdNdjaF6E7bXIM=
X-Google-Smtp-Source: AGHT+IG7YWLtXm3/igE4LVyqX1jUig6Ir+oCQccEn2yCixak5UoDIjW1QY89NqN8guP82LSvMtI8bA==
X-Received: by 2002:a05:6214:2f88:b0:6d4:2910:7f12 with SMTP id 6a1803df08f44-6df9b2e546dmr171784766d6.41.1736527124229;
        Fri, 10 Jan 2025 08:38:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:122:b0:6d9:9c5:3874 with SMTP id
 6a1803df08f44-6dfa36f98acls23988946d6.0.-pod-prod-08-us; Fri, 10 Jan 2025
 08:38:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUdBHkNEJtuaO2ytlB8mmi49g9Z9uRTNpZQWiFVeq8qYrUB9HFnjV5T2FopGQMQx3MFHtdv33H44sPjJg==@gapps.redhat.com
X-Received: by 2002:a05:6122:78d:b0:516:230b:eec with SMTP id 71dfb90a1353d-51c6c46c377mr10705983e0c.5.1736527123062;
        Fri, 10 Jan 2025 08:38:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736527123; cv=none;
        d=google.com; s=arc-20240605;
        b=BiuQXMyWKPpAA265/t2riaJqttdxPc81UTuGp0zNLgdV+Md79glU6pRMxb5CISOTru
         VKpJB3AnxZyVVSBtin0xnHqwbK7+pZAQe4UEDTDXAX5j9mon6+e8mJJ33RtUtbYx94X8
         Z0bmYJjT707TlxIFB76Q6sJz6EZe4ziP5JUJwntmYBfOYNs7BjTuuvLVJiyorK3RoxE9
         5GAzDKGV3ivP9RjuA/yrJgiyq6x2Vu56N85qngrVvdYkX4qfQPhdrRT/ApRNooiGBJQg
         Sa42Lo67ArDdEXW0WvD6oDr5HocqRBoRjo8l+CmsfjnA0m+7uzxB9CAjFTJ5p9t6sNgg
         gjrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :mime-version:date:message-id:delivered-to;
        bh=ksfuVbIY3yrsuUSrfZFRo2lgg2r4btzJCVBwyyVKJCw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=VGslvm7rWJCeD/dz6IbwnlBksVZCxoscfesH5YphiXOYnFx1LJIQ/mCppMdWslPd96
         YqtLypxOTaYgAvVIOkB8LmLXQik5OfpazUzuHOJZv2SLkU/5Qz0oBecl2Zq1anl5S2Jx
         GPK4Cc4f0KlkKgE+dRcTl/Og3hvApxjWMl7EEXZm8Rlpl5KHx9qS98UdhHTmNNUrNsZz
         3Eq13OOKyWpNa93vQL9TwKIU6CppHRwiiq12StqmDhM+UmXGO2oPCdSge0vQMI+ZGaFr
         wV1GqzsBDXw8l3JVEU2ZvLLc9NtpjZlvWWSDmbexcY6gc7aIbjTXyBIPHmgZYPkxhs19
         H61g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) smtp.mailfrom=blinux@clul.router5.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 71dfb90a1353d-51c7fba143dsi1595773e0c.6.2025.01.10.08.38.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 08:38:42 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) client-ip=173.166.91.13;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-436-3Vkq54B9O8WMH3yabORYSg-1; Fri,
 10 Jan 2025 11:38:41 -0500
X-MC-Unique: 3Vkq54B9O8WMH3yabORYSg-1
X-Mimecast-MFC-AGG-ID: 3Vkq54B9O8WMH3yabORYSg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A7AFC1956075
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 16:38:40 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A3327195E3DE; Fri, 10 Jan 2025 16:38:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A0C35195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 16:38:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1EE471955D6D
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 16:38:40 +0000 (UTC)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-602-OvKT1AfuNR2oYIVoeaTi1g-1; Fri, 10 Jan 2025 11:38:37 -0500
X-MC-Unique: OvKT1AfuNR2oYIVoeaTi1g-1
X-Mimecast-MFC-AGG-ID: OvKT1AfuNR2oYIVoeaTi1g
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 50AFkOEW017371
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <blinux-list@redhat.com>; Fri, 10 Jan 2025 10:46:25 -0500 (EST)
        (envelope-from blinux@clul.router5.com)
Message-ID: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
Date: Fri, 10 Jan 2025 12:46:17 -0300
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Cleverson Casarin Uliana' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: List problems and a suggestion
X-Mimecast-MFC-PROC-ID: sGMuO5GC3ysAaUQfTJMQ3A-8bIoriIkiDzR4emZoqnw_1736527117
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: a7Fwo0HS-AFPvudAPTtx9G67M8t038voK_9gm4HHlzA_1736527120
X-Mimecast-Originator: clul.router5.com
Content-Language: pt-BR
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: blinux@clul.router5.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux@clul.router5.com designates 173.166.91.13 as permitted
 sender) smtp.mailfrom=blinux@clul.router5.com
X-Original-From: Cleverson Casarin Uliana <blinux@clul.router5.com>
Reply-To: Cleverson Casarin Uliana <blinux@clul.router5.com>
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

Hi, I'm about to retire this e-mail address which is subscribed to this 
group. I'm unable to do any operation such as unsubscribe this e-mail, 
subscribe another one, or even turn vacation mode on.

I recall someone suggested to create another group to replace this one. 
That would be good for me too, though I believe another option is you 
all subscribe to a group like Stormux at groups.io, and use that for 
general discussions.

I prefer not to risk creating an alternative group, because I've never 
administered a group, so I'd probably be too amateur at that.

Regards,
Cleverson

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

