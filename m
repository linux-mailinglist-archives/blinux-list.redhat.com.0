Return-Path: <blinux-list+bncBCLPHQH4XEIRBY7R4GWAMGQE4TGDDEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A5A825C38
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jan 2024 22:47:17 +0100 (CET)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6dbac6bb6b6sf2307153a34.1
        for <lists+blinux-list@lfdr.de>; Fri, 05 Jan 2024 13:47:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704491236; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZbXkSpZQP98LWZkn7rwSBSzGaPN0Ads7Qd3Wo+Hm+k8gzan/5u24gt+O5V2xrLZxA
         q037+IGrrp2XiZJN3VncgixLaQn1NakyAXVlH5HRvHyD+mhIUK1dsSj3+p0Oel1XZPov
         iRs6Gufj4TgBDlm1mAHQkhdUDbbJNNTxfLX0G11I2YxCPdLcZAznws6NZZRxwiJWAfG4
         1z89fJYiYJI912G4hivGJXOEZpaDcJOCJDdE6NfanG0pXzZJw5ehyWA9fMZL8fO2wcMT
         cD6t8sasTO7s3BPZEAH7EqYXIZwoMlHvygMmGD84sTOw377EI9Yw1CqvxHc+V1kMM63Q
         Tt3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=5wKezDhSW4K0xBNlQ1Y6HfeIMfkZZ2M2TqXsRxQmK14=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Jmm/iUH3rTeLt7r/dV15G3enUVbDhm62axJcfxLjcUV1ud9lfN2/fe4JNN71K1YBSy
         N9pzgVJAlv/aLNl1RVi3XQoIrU3Dm0QQpGr98tQzybiTUE9WxYWeszHU1bzEe+GdmSV1
         YpZ13rNyXUkPVgMIxIO07vMY6zoZkMBoUjNrl3zYZWvH/pnaUdXdOu/ZIiIeaqs3vesY
         8S+quryXuidSq4dtbkqpHLjPGqpYrTmmUYq1kh3dxLlB8jzV4QeWhBz4dKJc7gn426z2
         YeMmEx58zvLe9Zzc1vZihPP1SexBhpqfhDoRbz5gs/I7pyXJCHxgGEGcnlQA9E/+qdmU
         35bQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704491236; x=1705096036;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5wKezDhSW4K0xBNlQ1Y6HfeIMfkZZ2M2TqXsRxQmK14=;
        b=S4uI1Ed4UEivJgMHz2WrhUy3CVVxGsLNK8GNuvAAJI3yqlQ89Eojqi3j0DRK4TtTok
         93b1IK9YxvtVJ5MA6kuOh+GWw/UtpMmkMzRETfNWgdi2nsQ3uMkS7FZ46l4wuFQkLAg6
         P/Ru4Z5WfY2okO1E2HH5eQwlxqh/NITiDqMCynDAGPKuhxZpWvqdOv4vQ8AtfSa6OxuA
         89wJJtRML9O1VrkX7lfTZyNn6WlnktRSsg6smN9UdfzRrMhRzHjcflT1sAFNZJNqsTQg
         kFaXuxy2AxmZcuXRoyKHEjONTh3Js3InYJFpr4hJCvCW52YL+mwa2r3+MlrZwLGW5vIj
         /BVA==
X-Gm-Message-State: AOJu0YygUOguy4d9abyxMM2yqfriDyrvGCUUN7M05Sn4aYV4MXc/PsZe
	c/KiVh2MvFR18iOwU9i6r3OI2g7RMd6enQ==
X-Google-Smtp-Source: AGHT+IF8ewk0cf6qUbg7ZhLHgS795lhS9vCc8j6dxha+qFAaM3bGDSdUym4TkX+MfFkLrg7rRMF1bQ==
X-Received: by 2002:a05:6871:650d:b0:205:e56f:8aff with SMTP id rl13-20020a056871650d00b00205e56f8affmr38215oab.40.1704491235876;
        Fri, 05 Jan 2024 13:47:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:8289:b0:203:d592:1051 with SMTP id
 sq9-20020a056871828900b00203d5921051ls56170oab.1.-pod-prod-04-us; Fri, 05 Jan
 2024 13:47:13 -0800 (PST)
X-Received: by 2002:a05:6808:f94:b0:3bc:1a73:2945 with SMTP id o20-20020a0568080f9400b003bc1a732945mr58276oiw.59.1704491233762;
        Fri, 05 Jan 2024 13:47:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704491233; cv=none;
        d=google.com; s=arc-20160816;
        b=PY67U3JHkAuTOwTskmHBMbJJ0CaIIIGZXr18j9q66v5b39xr6vIeRcwfcwvvnQMlDV
         TtQ5WOWYdZKVCnL5YGRCRfU/8zGTxac5guYXt0yuD+4hrm/A/ZK+tFnD5SE0c3dTG3wl
         CtJVmZl2NSHy0O2vUuroWr7EFwDMLliF31NnkMVLZXosyW+byjknT5hbe9kypnhANDmy
         OPjqGuh4d+b4SZryrGqfh6YL/c5PcBO5I2rFf47RaIN41asmt8AIOMm7WVm95T2a8CxQ
         +2YsY2z/bQUhFAesIfUhLU7q/tzHRZr1s9zB6MF6tSxMW2MRJf64FhgxCjuBYSCCamWt
         FYUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=wgypv4W9jLq4dF2Qj9QCPDL2+jIa7icn0Ngzrf3p/Zo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0jXdWs0d/vB9D/BXwxKQO3nYCFGN8Eg2QSSkKEFykLPw4iaqDw6fLoRxqFyEBeRtMR
         x7ehPIEhYFlXvVZVIa3ithpSNIQSHnkS3+rXfGqgvFiqiLtcMxRW+iECaxMdDfrIaRDK
         e67mi8WqnvOTrhqq+nxq9UVW2DIo1+z7ExuipDXK04mofAHIbuCFDrE1NYdy8mxIUuRw
         X48YnYecoID/J/UkShLxBlcd4wYqm+Lt/8MOYFggxZ1daDxp/LSq8zqNd5B8P4bdoGh8
         nDJjs31QpsEjmPfJZhSJU1b5DC0Qqm15jKBARugiIXnlR5OzpnIj0kr95AXIvQZVi623
         rsvg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id 13-20020ac8594d000000b004297e904304si677798qtz.35.2024.01.05.13.47.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 13:47:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-57-x-ET4CrRND-tJfGq9kFI1g-1; Fri, 05 Jan 2024 16:47:12 -0500
X-MC-Unique: x-ET4CrRND-tJfGq9kFI1g-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F006F8371C0
	for <blinux-list@gapps.redhat.com>; Fri,  5 Jan 2024 21:47:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id ECFF6492BC8; Fri,  5 Jan 2024 21:47:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E613E492BC7
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 21:47:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C284385CBA2
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 21:47:11 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-63-xW5yOnUtNz2GsjPEOazeAQ-1; Fri,
 05 Jan 2024 16:47:09 -0500
X-MC-Unique: xW5yOnUtNz2GsjPEOazeAQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 51AEE32007
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 21:47:08 +0000 (UTC)
Message-ID: <f1cb940a-2306-4b18-9e78-fd758254ff81@jasonjgw.net>
Date: Fri, 5 Jan 2024 16:47:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: dragora and upgrading fedora
To: blinux-list@redhat.com
References: <F46D1BA2-10F4-4454-AAF4-3DE130D8C220@gmail.com>
 <5d459c69-9848-4791-9011-aeb3cc3c8000@informal.com.br>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <5d459c69-9848-4791-9011-aeb3cc3c8000@informal.com.br>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 5/1/24 13:46, Jos=C3=A9 Vilmar Est=C3=A1cio de Souza wrote:
> I use dnf command line.
I do too, and there haven't been any problems with it. The fedora system=20
is a server, though, not a workstation.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

