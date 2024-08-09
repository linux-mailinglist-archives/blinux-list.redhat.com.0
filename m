Return-Path: <blinux-list+bncBCVPTHE7K4INVH62WUDBUBBBLL46C@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id A65A994D87C
	for <lists+blinux-list@lfdr.de>; Fri,  9 Aug 2024 23:53:32 +0200 (CEST)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3dc298e09bcsf2312825b6e.3
        for <lists+blinux-list@lfdr.de>; Fri, 09 Aug 2024 14:53:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723240411; cv=pass;
        d=google.com; s=arc-20160816;
        b=fvgVZFO3HVSwEsyNuup/z90k0XzvoHNo8mJUfoPXBFrSFjwRp0W+xlDnIFiRdIsPjJ
         N+/iw2KadNiWNaDnUkit2V6mMP2VAmiU9Rt6CFCbXKg4mlsLGWigBjs+59I8eDmBm8RO
         t9G8X6cpiv2NYhUAOk17HuSAKdnQ1e1SPBSFZqWlr2fNmZZ196zFdIx8MvNcnawEyDep
         wUXpNVVXgXTs870GhCxDUnuoInJo0/K8+TQ+2Q/rEi7FLQHXnaYCm5Jn9SBZQb0WnKxS
         1vkjy+6/88IEwlwFBt/3YZLuHLLypmdhLC9Ho6u3IgI8AuIB+rwWveYHCuYI9X6ZeCQg
         1QCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=o0sNdK2zazCMmZN0pkQ1nYiPjdzjwYG3ILhCVQoPlbY=;
        fh=cSpv0Gjmc2IHOfYd2I3ZsFWIj9chvvyF8JaKsoQKg9Y=;
        b=UQfrcXIcuZKjSsqcsmfrNfC7XZdFEAGV34jnArUxtlfBgwDAW5qnK1gNv/a8EbFCaL
         b2zM5t9fFpWawVOm9MsVwABtQ2oJ811l4iO/ZyeiR7ijO80XglUnPb6sLGP6wuh6kESz
         v11E4Ol71qLr0iYvE21ntOK2T2a2M4KmsU3TgM+FkQcBUecHUs9zRTPbH1eNHTC3syjm
         9uKy3xxYkKqkay/SofEtB/U0yC5yVHetl0Kd8kvNYp4+f/v20mZUuf9AYekX2GI2in23
         P9cv1euUM+D2sEeBLTakruoCgFr08ZUNOACAmKTDwOyyBXnVYu2HZl7+nMWXY457sYEk
         12+Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723240411; x=1723845211;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0sNdK2zazCMmZN0pkQ1nYiPjdzjwYG3ILhCVQoPlbY=;
        b=jJQVgDcAvwNnPui1fxSkruCSNeEz1/bOIDNspyqB30QpkJqp/1XJse0CJRYbTtlHw+
         beEoiNPDX/mk82o9U52gdps9YXdoQ2tMLEr47d5a7oTuQKeA+FPM8mv2+qeOsh68LFBq
         GouMR1jOSB9zdz6AISoSc87s5AZnyupesYYW1RkltyBcjrKN/BVQoH7M7wkUQftrnx57
         aSA2+b3sAi8KztxAg1Fd7G5vgqm+2YUQVzyqEmSepF+dWATRu/gZkWQCRXK6I9T+VCmH
         7X+f1+TD+H6LERkNUoArFY4NJfMpIsCgTGkh/WzSdpBSgsmmpdEA6Hi2Wv1upARh5xuP
         JtSw==
X-Forwarded-Encrypted: i=2; AJvYcCVRgoE2OXBz5Xs/oNemoz+e2bwcN92fp6mhYv71s8SlNO/at1f0CqRiORVkd+68JVwPqosE/89ByHRfwNzuHTnhx3KYqM72uHDK
X-Gm-Message-State: AOJu0Yw8dfYlLYXbkCB5KSJElS3pbq44x8uFb2bSh7aYI8iwTevH6ZWF
	61Th+Gi4Ab1sVy4sFyZ1koCIoBdSw1AkJBnVlCO7OD5U4eJeiuHHgYfh5l2r8L8=
X-Google-Smtp-Source: AGHT+IHJPYN85vHjA+EMoN/2pwojSTYPhr5O+SzZc4jfqrvVdTPoNx45U5iZ2Czp1L51i8Eb9G4Wmw==
X-Received: by 2002:a05:6808:1817:b0:3d9:2dfd:275d with SMTP id 5614622812f47-3dc416f024amr3453960b6e.31.1723240411135;
        Fri, 09 Aug 2024 14:53:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:547:b0:451:a112:70fc with SMTP id
 d75a77b69052e-451d12f1e67ls32285831cf.2.-pod-prod-02-us; Fri, 09 Aug 2024
 14:53:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUKTwBDf4ubf+XEnk3Rgs6gnu2nschcT/jojCWpoplnIqVV0ggnF2oAXPhks3A7RZ48PH8U+gynUV0VVc+3/KpPAEwynbmO1boI6pVq
X-Received: by 2002:a05:620a:199e:b0:79f:87c:a540 with SMTP id af79cd13be357-7a4c184c0b6mr393674385a.58.1723240410105;
        Fri, 09 Aug 2024 14:53:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723240410; cv=none;
        d=google.com; s=arc-20160816;
        b=fm2e8fyxmF/86BFwYrkdPUYjouHhq8DS2j+l1Av/MO/6F1JfjKEYeQR4THyriFG4Wa
         H+gsZ8U2ddUdHRjA6eAgSRebVrPWdCax2ykDA/oC+bC8vEcNbPJzcGggCiwZAiNeOzkW
         9h2tLdrhlBfJfSlpQuZoSh4SnFJ+8rM+HXnybjKVyvWvbsBiPENt2e90mYvhkVMiXsV2
         teV/bipKlt+r6yzT16KqoJuN4yoc8uzStt52yitQzlVc4Z1+A7mN5SAxPKBhMCzAnuUq
         y1L+H9gHp1eZoBmBRuRPFkRRSdf5CiE3ubIpIrQ2PG+ALtGkPy+7M4K2uoMOVmdXtpj7
         +Uyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=o0sNdK2zazCMmZN0pkQ1nYiPjdzjwYG3ILhCVQoPlbY=;
        fh=ib8P8Qb5xBHahqKnjYJ9L6tWxLwD8UVPqX3WKlHDIac=;
        b=W8+LjXmGbIDLFye7Vo0feOIZWnkiqE1V2PjR/Q3zq/f5qhZz0pN11gNWuV8L93HlkL
         xJRyDf+uRsVHClfGmxgk5teCNyUReiUK5vx7ttWuhcuSQbTcQzYDl5TASh47P+Queb11
         b2sgHJ/o/b1uPYAoklcL6HhuSC+Qi7Mf1JjVUhh3wiYmouMbOZ5blPYEeLSp51ihZf3L
         AkyIiOwPKNLKWS4ImCVi1K2Tv249/gEfEfgUQCDvhAsyCoNXQ4yrgH0ZkYuuVc/3eOk2
         Pyi1zobr7+SRISElG3HFJySpr85AQqhSkV51Fr82pUnsD2gu6ZF0R3gn8mqeFidvVhiH
         7hiQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c266c3csi4595431cf.364.2024.08.09.14.53.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 14:53:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-248-ZkHNl2vnOf2l8zL6D3zNYA-1; Fri,
 09 Aug 2024 17:53:28 -0400
X-MC-Unique: ZkHNl2vnOf2l8zL6D3zNYA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA5361955F69
	for <blinux-list@gapps.redhat.com>; Fri,  9 Aug 2024 21:53:27 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D399C1953BB7; Fri,  9 Aug 2024 21:53:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D18821955BFC
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 21:53:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6BA2A195423B
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 21:53:27 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-218-8tmlCGUiMMaemKNC1QZRGg-1; Fri,
 09 Aug 2024 17:53:25 -0400
X-MC-Unique: 8tmlCGUiMMaemKNC1QZRGg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 538FA40508;
	Fri,  9 Aug 2024 17:53:24 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 097291000A7; Fri,  9 Aug 2024 17:53:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0835710008A;
	Fri,  9 Aug 2024 17:53:24 -0400 (EDT)
Date: Fri, 9 Aug 2024 17:53:24 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Paul Merrell <marbux@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?
In-Reply-To: <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1270910981-1723240404=:4153529"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1270910981-1723240404=:4153529
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

  well..how would that save a file in a way to share it with others?
print screen creates in theory a printed copy.



On Fri, 9 Aug 2024, Paul Merrell wrote:

> Have you tried pushing the Print Screen button on your keyboard ?
>
> --=20
> [Notice not included in the above original message:  The U.S. National
> Security Agency neither confirms nor denies that it intercepted this
> message.]
>                                                =C2=AF\_(=E3=83=84)_/=C2=
=AF
>
--1949452079-1270910981-1723240404=:4153529--

