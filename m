Return-Path: <blinux-list+bncBDP7P6HU4IERBLNUWKZQMGQELM7VMZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 4214C9092ED
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 21:29:51 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b07983a8adsf65017206d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 12:29:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718393390; cv=pass;
        d=google.com; s=arc-20160816;
        b=RsoMA5Xidl6RGPMFEwa1OaG+6PaG5gs6R1E8TWFjGt3Cxw+AvmLLaWT5Yu78TKq8lP
         oxLJrCEmSgMQBj+pqUi98zSKriamRcF6po2QiZiakHEjCmmnGhyGCWlpa58W9l8yH7AG
         6mYDxPygNGZ76yRZCiVnvKaEg7S/gLFt/c6cy6SQ+neoad3oOHK9XwdThPS0MFkQ4Qmr
         OKenXuEEOV7R2aco1S4OjMfyYycMO0qRmVGCMksXeC8FHlANkcOpwfBt7fOu38cedUy3
         SKl4RtdvBEJE4k4NvKSSFwSoHG5OPak8dTzX3oAOLuXz8Rt3VMrXgGW9TcxQOBkGam9A
         tPLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=2PEVcnWUEMC/usCnrHSreiIWD6ncmWeA/nRkA+QLFt8=;
        fh=yNRaE2izYDtspjevB2/R0hTgfSvKUo+lbSM17YzCqRs=;
        b=dMXsaA0ffrkUfaNnnT46ky2yWEWXmhEYlH1tINJW6lfzV1zgtZyE5+7/auSbRmnIB5
         mm09UjWKjmGbaVQ8Bl5z6KmfpJNSZLd5pDA4h+0qYzrIBkNMYDSGzpGfovklWygro80C
         WpmxG1CAzuUuf8HY7FQamQC3syyu5CltQ2eoO6VBRudclCeWwHAlkd9a8qriFJjVb3pE
         eu0qzAIwBnVqjj5LX5STXKKO01sxd/sppjYYFMNulqd1HpX4+02vaooH8Lk7SWaJwYka
         kXIk23agGV9VGECNvTz4NFkIxVlnao38T3g9SbFOWlt8Z/3u+DycSbj+v8IuGmS8kB6I
         X3iQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718393390; x=1718998190;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2PEVcnWUEMC/usCnrHSreiIWD6ncmWeA/nRkA+QLFt8=;
        b=M3LU3LHju0nf5y0vLU0eKkYeXMNzVso+i7cVYc1ZFJ4mmshXfqFYQhlbOcuNZdeXgD
         BDkocLiCUCRmV+0UJHJS/DbrWeJ+YC5/eBRJPCStqvy68dyw1k5hSEqRq8AkamDHQtWP
         Ak0G0bqH4LHkG8EdWET2w6t9oHFXNE9yloWxAfJxgDaPTotPYLBsoZAQEw6PXlWp6nI1
         8BFLCZaEHzSMyVAtfrF2gjHvcN2kzN5D5p1XfYsHLdY/9Ar4vQ2Yd3k54SAja5ESAsD7
         kiaIIAih3z49kYMH6h8z3KkLIul3XlcnyAxCfsz3kXwneLo5dvJwMJ3tbHR7RNw2e2dB
         BQUw==
X-Forwarded-Encrypted: i=2; AJvYcCVusdk25EJi4nIl9YPKn5zreexgBPay0hJlf+bUqBw/qKW+OSTXKTRtjoY/lcoyy9NlzV3wqlj8TsOihboTPjcI21O3iHOMO1V6
X-Gm-Message-State: AOJu0YytQgPQrG/aXytCBxylH0Wu7uECLTQFfLxZ5iLe5WPYg3VlXyFx
	yeWLd6REBOL3wegkb5B80bcg8qZx9WKK2X9LYSH6PSdGmP4wDYTJuz+DUL/p+NQ=
X-Google-Smtp-Source: AGHT+IFAzkr0C3GG97/HlsFQzZYaMYx7NkY22XnMzv7NTGND3W94MDGbJr82qeKi28ql27snZDNDSw==
X-Received: by 2002:ad4:5984:0:b0:6b0:9488:626b with SMTP id 6a1803df08f44-6b2af26460emr64739026d6.9.1718393389918;
        Fri, 14 Jun 2024 12:29:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:64c:0:b0:440:5b30:b50c with SMTP id d75a77b69052e-44178dd032fls45204021cf.0.-pod-prod-00-us;
 Fri, 14 Jun 2024 12:29:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVK4uhvzZ9WBPQmwc8SHPwsmgxRgzsz8UCeIIPhDEDF95/Yht56blkomw0TQSBhiwZdbeJTUlu2jGhj6fVZeuE62tKw0DjX8ATgs3SX
X-Received: by 2002:a05:620a:46a1:b0:797:c91b:ccc7 with SMTP id af79cd13be357-798d03e6863mr664540085a.34.1718393388715;
        Fri, 14 Jun 2024 12:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718393388; cv=none;
        d=google.com; s=arc-20160816;
        b=kpmJ7WngVqYr3TbchOX8nN85nWlNFtTkW+E/sV+iG8VOaZNtDsLydM5pkqXsfzJ5xP
         xgiSqDDJ3gMZiniUK9VdQzTzbW+WsjC/Q/kfq3qVHW10+LAswQFvPYeu8rVoNeiRUdzM
         v7Sf+nXqWSpNvHepsupF6EvcC2aE1Crpcot8zMYm4v4q3A92oVyofJhOw0iKS+GHlzIK
         T3DpFhTRYnXZ8wtjjCescFbZMzFnQlOBuA4OKKzM/bJjLLL7RD7+zcPQa6Wq/dejvu6D
         MdTiquJBoYfcO8oqveCC8pHPgDsIfQ4p274B3lhZpd2FyGAu5GDjwfY6xSCfzqNtRGfz
         kFmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=XdpEs7s6EX3+HQBfdY4Swpv1bRckCCHiYIf+ZeCaBFU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UNKMMN3QoIkDObX4Awnof4Y7poJpAeEZqnJ+SZSBOsbd84/RnnuLRTzdvSYm5SbJ2y
         9Uak4pJSnimem2BsXiBbV0vEVwGpYKquHvgWCaq8S+JUWuvQz6MDjTATXEeaESMb/I5Q
         stTwaLWT7SJaV2L8Gr8PyYpNxVuHhjuKx3bu6assIVipvkgd5cmsQt1CS1nNSMtxG2/t
         5PZv5XzTd4VJopgD15nDNgIXyBdOtMdNwGvZe0HHQY8Qb/yZ+B3qFxgrmcCl4pztla4H
         IxbglZ/SaRvtNIbzqSN1ejsmIpEy5h48guTIUPLssTAKF3YtaK/IrmR+6myUlXL9hZKu
         GukA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-798af5a0b52si427443785a.106.2024.06.14.12.29.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 12:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted sender) client-ip=65.20.63.175;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642-MaBPIMwpONKM_Hil2s5WnA-1; Fri,
 14 Jun 2024 15:29:47 -0400
X-MC-Unique: MaBPIMwpONKM_Hil2s5WnA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D869B19560B6
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 19:29:45 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C94CA1954AC0; Fri, 14 Jun 2024 19:29:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C65441956087
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 19:29:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 48A6619560AE
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 19:29:45 +0000 (UTC)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai
 (altprdrgo05.altice.prod.cloud.openwave.ai [65.20.63.175]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-NIqsERGNPP2AkWJi9vhSjQ-1; Fri,
 14 Jun 2024 15:29:43 -0400
X-MC-Unique: NIqsERGNPP2AkWJi9vhSjQ-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6669BA360069E7EB
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrfeduledgudefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6669BA360069E7EB for blinux-list@redhat.com; Fri, 14 Jun 2024 15:27:50 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1sICaO-0005wl-1q
	for blinux-list@redhat.com;
	Fri, 14 Jun 2024 14:27:44 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-reply-to: <ab2a608d-cd4e-b1b7-fd55-aadf93729ad4@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it> <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com> <ZmyHH4DeAXMQzthQ@panix.com> <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com> <05ff5050-87b5-a355-80bc-d328a2bd0a8d@panix.com> <1e59cb21-fbcf-bd00-24aa-3ac3c0364a2f@hubert-humphrey.com> <ab2a608d-cd4e-b1b7-fd55-aadf93729ad4@panix.com>
Comments: In-reply-to Jude DaShiell <jdashiel@panix.com>
   message dated "Fri, 14 Jun 2024 14:33:27 -0400."
MIME-Version: 1.0
Date: Fri, 14 Jun 2024 14:27:44 -0500
Message-Id: <E1sICaO-0005wl-1q@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <22861.1718393264.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

Unless they are switching to something new and useless, I noticed
the same thing, using lynx as in L Y N X and it just sat there
doing nothing.  After a few minutes it was back to normal again.
When I am searching for articles about some topic, I tend to use
lynx for that and edge, firefox or brave for getting videos and
articles from sites that don't work at all with lynx.  That way,
I leave a very confusing trail for ad  weenies who think I care
about their spam.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

