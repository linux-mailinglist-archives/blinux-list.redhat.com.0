Return-Path: <blinux-list+bncBCAJTHUAX4NBBI6ITKVQMGQEUHAF5XY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 178447FCCFE
	for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 03:38:29 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-421af801578sf66160711cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 18:38:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701225508; cv=pass;
        d=google.com; s=arc-20160816;
        b=c6G279OwH6gRE+A8xu00Vo+F/+r0TcfohbBP+O3Vyc0WQCjXE2XXVpz8g4mnwW2paD
         JKGBvHg7zBVdjjRvs/FlxXgsP5Q7NfEz6nXXmUxilH0tVXNnkLHsKU0ELlTle3L5GMh9
         q2fMwNY1j95eKkIQ+hzTSGXSPPCMoRr723Hp6xIiCDe+t0jGe6P0PQ3Q1Z3IRVzms7Xm
         sTZx8vC/Tr665unwyrGnV2aABg9NobONqLTxJPXccLH1Pn5qTFa+I4BPNkWnHldg9YgP
         CddJjBjUq2SYHW3jf8wZbIFGH7m1zl6vqygtKjcxN1HX98Q7YuW7JcTEG/HMTEM7pL6N
         jZeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=viW/zH2HDmsO5BMT6J+12u7hc0WPel51KEKKY6B5QdE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=nRjw8Ge4BE3pa90QvzjXMilQwPb8R6fSQNNWm6+Qp6yZc6x6dMvgLMeyDp9X13zntg
         KpXiGaDNPdcxu9xsb3r6m2mOCR/gg5sUhcIRqhlFiQjjxfQCzambLZ8pA8NJxHpPvmp9
         BE1L43GHa2SGpopPbwS3LbXXCUijffw9tKRzF1IQi/cdjNBl4aziFXUdi2v3UArXucvx
         8l89W0zYSyrmJw2DGeggrLcVcx0Nw+ZTyMEYFS6maYI45p5/FCYuooSNJu+5/qdzYKJi
         k/VUj8rOxWI0BHeGjR1PRO/zEJFYv3bF2srsWKyXsBtm/3qMzCjNm09fuKswKgVq2oHB
         UwJQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 68.178.252.232 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701225508; x=1701830308;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=viW/zH2HDmsO5BMT6J+12u7hc0WPel51KEKKY6B5QdE=;
        b=eab+v8oWeVzh8X6Cgvlgzn5rhyF3GvLs/LsYi+7eswei5b3ymmQdY84TywzI6lUvYy
         arhELzH1I4S17tEhgJqMScaMlWSSX+K0oQL3xx6YwCk/SDyWqN08O7zgMP5uu5+5X24d
         Ham6f27e2MHNNqUvQUWUNojniRhaGxznVxvWttcPpnLZeILsTwNWjy60gsrtmvsRWlhj
         ZJH7mztNBvUcCVBHkx2rQHraKE24gaxGpnbL29N57hc4/L81V5zBO7kCntidIgM3aqqz
         iP4l9/VcCCHiXgjToLKstGCwE+NPwS6N8wG6fn4QP1OmIKeRP7kzG9uWw8Bs8Cm/R26j
         SDXw==
X-Gm-Message-State: AOJu0YyQvDQGr0s2L+H4xUShrjIxtrLSm1PPsqJB7DZ4ic6kirtpXgHR
	En7E6IuuE/c38rzKtuuQi9Og8Q==
X-Google-Smtp-Source: AGHT+IHasypVn0e8Qh1U5fTKfgZL7fqwcMC5zndmcBY3zcFHmSjTYluft7YD/NrC0rwhBcZbT4kSxA==
X-Received: by 2002:ac8:7d12:0:b0:423:7d3c:fa97 with SMTP id g18-20020ac87d12000000b004237d3cfa97mr15367913qtb.67.1701225507705;
        Tue, 28 Nov 2023 18:38:27 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:178e:b0:423:7e09:4f05 with SMTP id
 s14-20020a05622a178e00b004237e094f05ls2672415qtk.2.-pod-prod-08-us; Tue, 28
 Nov 2023 18:38:26 -0800 (PST)
X-Received: by 2002:a05:620a:388a:b0:77d:795c:71f8 with SMTP id qp10-20020a05620a388a00b0077d795c71f8mr14823873qkn.19.1701225506804;
        Tue, 28 Nov 2023 18:38:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701225506; cv=none;
        d=google.com; s=arc-20160816;
        b=yx2nuU3c/4fK6bHy49yAsf3UZ51vKtMNxuMVIOluGRbqhK0aLnZneSylPMK8kxoKV0
         y8kg6f7u3wjifK/mzm9wLd9Gbb0p1VhafhjM5Bl8BMVbmEpuXKNLiYmJQUk9ziHX0YCg
         HLIMkyRGrcQ8LVSlhcO8nHML8NDExEClgaouGGhFPD1bOOQwLXuyzI8D9RdZ+70rbflv
         9x36Wx3vBGH4+ks+D6HXxgKsH1DXtuj3SOY/oXHWAFLKxJtwtVnrlv+GwduGD+vku+ZS
         KDycy13HucvjjwhnfmOfHAhWTHqgqHevqvER2kAAJhHump519m1qsTB1xd9lPHpqBO7V
         85tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=1mDHu3zURELwJNlmJ8EjjdipbR8lgGeKm4FzIVf3jBg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Hb0p1lOdvPrA48DL9XfK/EBh98N3ydrWgkcmhqMYCTIv99QoxPDI+1xAzWgxcTNpYy
         nxIq2B59V0fhahyISPWIqiHrj0FGSOg96HTt88nGOjGME5VuEQrycA8zUHJPTWob5VIH
         COxtqxH+IXeCCDO2S1k+e6oD4+qg0BqplYyKNlZ/HUwiLqmBGYH8QvMgG+nvsGimnUW8
         buy/An3g/PMPH1NJPdMeXvSRZJdBweBF3pZGrbO1x9QpRGn2o4iNVfgJfZrZd3dClr0Q
         9PP+ngvCG3sJGQn7UBYPmzfEqZE/aaRLB0mnuB+OIQf87LK6HqZTNh1czvYLFdxIjRZP
         c5mA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 68.178.252.232 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id j21-20020a05620a411500b0077dc8d1add0si1238360qko.286.2023.11.28.18.38.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 18:38:26 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 68.178.252.232 as permitted sender) client-ip=68.178.252.232;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-689-ESHv2kkiPnSzx56PN6OWdw-1; Tue, 28 Nov 2023 21:38:25 -0500
X-MC-Unique: ESHv2kkiPnSzx56PN6OWdw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 406A2185A78F
	for <blinux-list@gapps.redhat.com>; Wed, 29 Nov 2023 02:38:25 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3DE9A5038; Wed, 29 Nov 2023 02:38:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3734D502A
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 02:38:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C50F3806284
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 02:38:25 +0000 (UTC)
Received: from p3plsmtpa12-03.prod.phx3.secureserver.net
 (p3plsmtpa12-03.prod.phx3.secureserver.net [68.178.252.232]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-194-MKIY-JzgPHuDD2JOt6yldg-1; Tue, 28 Nov 2023 21:38:21 -0500
X-MC-Unique: MKIY-JzgPHuDD2JOt6yldg-1
Received: from [192.168.50.149] ([68.179.171.114])
	by :SMTPAUTH: with ESMTPA
	id 8AQ4ronXn1XLd8AQ4rnajL; Tue, 28 Nov 2023 19:35:21 -0700
X-CMAE-Analysis: v=2.4 cv=Upqldc8B c=1 sm=1 tr=0 ts=6566a369
 a=YrtbGwoLYg24scX8z8I1bA==:117 a=YrtbGwoLYg24scX8z8I1bA==:17
 a=IkcTkHD0fZMA:10 a=jFqc2ilGAAAA:8 a=HIEtth6NAAAA:8 a=20KFwNOVAAAA:8
 a=HSpsSKEK1NANHWV0UXQA:9 a=QEXdDO2ut3YA:10 a=VTOJT1tCTgUA:10
 a=Oy6HhNWbaxdC2QQDTMdG:22 a=n4l0BUb0bFZZ7qw8SKYN:22
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Message-ID: <4345ec30-0e29-4dd3-a40d-e24dfbc41aa7@crosslink.net>
Date: Tue, 28 Nov 2023 21:36:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Brave, or new browser projects and the command line?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
 <aaa51ae5-e06a-499f-aefa-462bc17e1ac3@mail.com>
 <Pine.LNX.4.64.2311281652250.3701114@users.shellworld.net>
From: Chevelle <cstrobel@crosslink.net>
In-Reply-To: <Pine.LNX.4.64.2311281652250.3701114@users.shellworld.net>
X-CMAE-Envelope: MS4xfP3Pce40Vn+++U6l2ZyPgpb/6oMVQxESXBn7wQ7R5DfgLoCnaY5XlNJXKVxeUKVgkLxptDKNuCvecZtFAObOz9W0hj5meKuZJY7rlvpCHNa1NYe2RMzu
 KKdDzVKeGUcohorJWPUTVYDMCwUFNtw1moIr6L5e5V4U3qxJ3IGjT4tbdbDKDjorXrm+6gdhZJVmz7mcbGZMMqvWnAWPYTkOeCs=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 68.178.252.232 as permitted
 sender) smtp.mailfrom=cstrobel@crosslink.net
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

 =C2=A0=C2=A0=C2=A0 I've never tried it, but the browser called Browsh clai=
ms to=20
support JavaScript.=C2=A0 It apparently uses a version of Firefox and rende=
rs=20
the output in text.

https://www.brow.sh/

On 11/28/2023 4:54 PM, Karen Lewellen wrote:
> Yes, but that is my fault.
> Fastmail wants to improve their web interface.
> brave is one browser they list, but they realize gui browsers can=20
> present challenges.
> So, I was wondering if there were additional tools that=C2=A0 like Elinks=
=20
> can when=C2=A0 compiled=C2=A0 blend the best of both worlds?
>
>
>
> On Tue, 28 Nov 2023, john doe wrote:
>
>> On 11/28/23 22:04, Karen Lewellen wrote:
>>> =C2=A0Hi everyone,
>>> =C2=A0what is feeding the question is that the development team at=20
>>> fastmail is
>>> =C2=A0rather stunned that they have dropped access so completely.
>>> =C2=A0Future testing with lynx, links, and elinks, is=C2=A0 intended, b=
ut they
>>> =C2=A0reference a new browser, brave that I=C2=A0 have been asked to ra=
ise here.
>>> =C2=A0does it come with Linux builds currently?
>>
>> https://brave.com/linux/
>>
>> Am I missunderstanding the point of this thread.
>>
>> --=20
>> John Doe
>>
>> --=20
>> You received this message because you are subscribed to the Google=20
>> Groups "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it,=20
>> send an email to blinux-list+unsubscribe@redhat.com.
>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

