Return-Path: <blinux-list+bncBDM4LSNO5MHBBNN2TGVQMGQEQDC6O5Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F86D7FC808
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 22:35:50 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1ef4f8d294esf8090533fac.1
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 13:35:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701207349; cv=pass;
        d=google.com; s=arc-20160816;
        b=eR6dvQsNNLiWYJ9skMKbI2qqbkr48eqrdBHdRZi1+egbxz+9JLxcViTXMsTrNyb92v
         Gm8E5v0VizF5pbT02LdjrxOTh5+GULJNLIb8jHNBKQ4tS6XrxgA2sngNBI+L3kEITfhQ
         pVTTzT6O5FlEApOr9FZSwH1LuAVw1pTZCPhmqGcG4YrRpcwIjHi3CKHT9hE1guq/w9+Q
         aDd87pnq0H9LIHH+mXJvM10gNtd+/GL2HcQVuzW3nYBqgysLnLJ6ry3879jqpSGCvQCP
         BxXu0GMPbiGD3cJG3ftlf+c60JeOFBP5bZ7DOMjf+6Kpt5OyxZC/75arYL2lelyom1Nh
         W7yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :ui-outboundreport:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=iPjB7NIOslS/Hn7b0gqsM0XRdqP8rrIne1diGFNstys=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=M63hKIddPKL/uA28jH+SJPyLKZepI+vPJpYggrVIPNzk0cdcjV4D8taeKEwLXk49eS
         FJYu1fna5RiMVgY/ISPB/5udBCwMP5IHxiZyn/7jEps7IUaDx/4IBMn8jTOREZP+/3DS
         Pw9hkpXzlyC/j0C+/8bcbkdDeYI2QFG339NoPCod7EYhjNM9Sdz8czaGhiaEOPaupTK6
         AnSuwD7nttzDCdd7Gx3KiS+q3f+Dbw9srEIjMinU4wJEF884HaIqpjv0j/weJ/HyaaPH
         varmU1Ek+z74nNg4+jqmHknENRQee9agrdjcKABVUPvlV3cTRAyg/x376kRVzzmXJegd
         mABQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701207349; x=1701812149;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iPjB7NIOslS/Hn7b0gqsM0XRdqP8rrIne1diGFNstys=;
        b=qVtApP149eCa4Fn/TY+ucs10UA2AmNGg9dWujQsgG/e4cuI1j48z8NTfCU9H+GVkp3
         +2JMiy0AoMzI4gRqTy4QkTmFxYFchPK5pmPmnyUdn77RXH/nWjGsugqFAyOx7mdq/uXN
         k9IM61y/9CNV5LsuCp4ci0DhTw7Uz7Hw+Bq/WVsjCX2xzjAzo2VgG4r/+TyPabAzUm4Y
         r38DaZmnjtnYR3blDvKfGWAbqiRa552BQy4sF1pM7MXle+XCV/dCwpPa72LcKSjoB1EU
         zS6GbvzaSyHuAWIryy9Eu30IjxHM0SeFfQTh7q2VCPwdEUVRSqsmWnMlqwREHBNxWe2b
         JZyA==
X-Gm-Message-State: AOJu0YxcLgA8m9RFb4rv7FG0EKkvMU1Lj8hH8GPsf/daUu6mWjV9GasJ
	VakqF9co46VjhRXUNxM/eWgz9w==
X-Google-Smtp-Source: AGHT+IHLLjPWnnGB4eOClI8usRjqHHXePG5JddHdkXBAvmqFyfrFCAZqk89G4mv6KPWppPgroi+rPA==
X-Received: by 2002:a05:6870:6113:b0:1f9:e4cf:dbec with SMTP id s19-20020a056870611300b001f9e4cfdbecmr19708801oae.35.1701207349260;
        Tue, 28 Nov 2023 13:35:49 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:62c1:b0:1e1:371:c3f8 with SMTP id
 rf1-20020a05687162c100b001e10371c3f8ls689287oab.2.-pod-prod-02-us; Tue, 28
 Nov 2023 13:35:48 -0800 (PST)
X-Received: by 2002:a05:6358:2249:b0:16d:fb13:67aa with SMTP id i9-20020a056358224900b0016dfb1367aamr18208034rwc.0.1701207348588;
        Tue, 28 Nov 2023 13:35:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701207348; cv=none;
        d=google.com; s=arc-20160816;
        b=nmqJHcj21+Pd8yetd1LCrhkq9J5LiM9GOpXdaqdAJtZbCdsbkZZTq3v83DX9Yo3sZT
         a1hZtX3YVUlUJ+p83nKNuxb+wU/tITuQcWqnWC5sdkSOd0gV7vpCw+DHsQw9GszmZMSb
         WXKiGbeZKcWZ5t2/cfTk58FmMrnJUH8rXorfB6Zg15eeLbypCHFLiLwCvoyW+MSKyKPi
         nCEwYAlt8K/JsZ00Qkw3d7APeIhb0/COKuNNJY9dfGnehJ83oajRWBs6A8BLqoGsIQJd
         kh0dp60Vb9AscLfmpMRQgX3O+llaG1RwUgEruw4IRq3ocYIwIOU6QktvcWDGWObTFo9R
         jTlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Je7Q5BK9BpzK3PuKyjY8d8/hnvVsYSq9sUpAKMvpczY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=PU9eR67McQkOBNMbXi+OIs8JVPDiOcohViBJpqMRfwBL9Lac67F6G8o6etRfx/N0AU
         oQdN+jg8V/rqg9jlRSx6/rEznxVBPJWQTRP8GBojiIKKqiDDeH9fjCiiU7MjV8CTq8NN
         EimVz0cr1+ItZE9bQH+JVce7lck3ddqF7//OZ6An9PirrwTdLC5u+TSvKXNkWgCG7J34
         LZC8Rt7rVX+2R7W62eN1/kfswKgjRrbYh9d0q8yxpuLIgKTknzi94k7AZzVIl1ZAahUX
         mSt3oOAZedf5/0dSwK11tzdNlDndyz5DT+zjY2gEzXHQm/CU9ZBASqCwETiC8zPuGLgJ
         VRQw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id l15-20020ac84ccf000000b00423c17c188fsi4751060qtv.664.2023.11.28.13.35.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:35:48 -0800 (PST)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-350-mn9Adkf7OqaQRnl4Uhq8tA-1; Tue, 28 Nov 2023 16:35:47 -0500
X-MC-Unique: mn9Adkf7OqaQRnl4Uhq8tA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 273628526E4
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 21:35:47 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 24DB820268DC; Tue, 28 Nov 2023 21:35:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DE1C20268DB
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:35:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E09CA28AC1EB
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:35:46 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-681--JrntzRkP6CdY4nIuN7TJw-1; Tue,
 28 Nov 2023 16:35:44 -0500
X-MC-Unique: -JrntzRkP6CdY4nIuN7TJw-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus005 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MRWOc-1qjqmV2vEm-00ShdE
 for <blinux-list@redhat.com>; Tue, 28 Nov 2023 22:35:44 +0100
Message-ID: <aaa51ae5-e06a-499f-aefa-462bc17e1ac3@mail.com>
Date: Tue, 28 Nov 2023 22:35:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Brave, or new browser projects and the command line?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
X-Provags-ID: V03:K1:NZiwegcdDOfmNDx7/Ow+ipm4ivzSMOVVAKNKGDHazMPPHPgQSpB
 HgbiUQem+KeQOxSgkFv9NQ88wI1Ise/r9/lqIZv4PomQF4w6pWPdZJCl/nMJXINAQm8F24M
 XOJ/y7bzRzTeEP6mZ6EFmTMqvZQJSYqyyrZOxv8IzsNkAZiLHrG2IjC3MkB02TrvVfjcUI+
 Mto9X0WQi0WX5sY+xkNfQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:T0kHiD0tNrA=;i2WkAgc3wGrDcN/nBG5StugHvs0
 AfhXyQ2kTq5/OIRekossAoBNlr9IAmakju86jDpFn0bxDF34mFgxpXePD99fywOkZR/vmA2oc
 O2hCxF1AhhuGezcCpv031+l86pIaIm+ET0sXsMnZN5w05aZ9KMa0ip/x/9rUyYVA6gEnUC5Hv
 lKzBq19d1RMMv56M6bRR9KpzGGsVr8Yz12aL6je/EiUEXccB9L6MXVygLRUKAt0UbMLNtMMwx
 769A9ZAJAEtxaSbM1Fj9mOSoKu4yJyuNOUYPOf2aVuAKBKWYeXY2o/V9gFaIOeZhMqRvxlDPI
 jSm8uts9wD79GD7vayKae5lUXc44eB4YuUCVB1XJAudUm5teHtuoEUKxbNXfQ0kthq1lG0bpN
 IdeDrFm4WSuEsiSYKUJgR76VpsdbCRC7AC1owTass83lvftA8FiSCA1Wvf6KAAWfNTBoWpl81
 dT7VTxS/V4eIlijh71yh2jDNN97NK+ZTzqKSDLVUmZq527STQgyCKHQY/JIPYjo0UyS3ShNkV
 kWadJFHyoJoz+PxLsNGj4tG2YUVz28EPT5Xy2h0X5rNn5X+ObZlLKu2QLBx9XWFvRNq33rWVF
 OLy/sjpLZSdPgLJjo25fndBV4z+0Za7jC01ucaFjMh6K/lqo5tF4qW5vcyURq/Vjyx6/IvH7x
 34LlbGSuDGAMr9dcJzoa2ieE9DCaAxK/nqPeEibiF66ZkNXiJkimOljDCGZ5o6YM6p5YGanE7
 ykT44bJ35cMv5qcIM44h3dCqt6B+v2mIGsp0n1AL58oI5Y3pA7m/XqQbtdkaiDHWLTxsuv887
 5TmgJLBWl1+gLkzPgY+uKXCp0TiJTLGPlECXb6YjRL5Axpih8Xb+erqV4IcgMy9OM0Qe1RiSI
 9G4mTd330QykXihLBOY5KYD1UAcv6IwAkqKP5aa4ikyibBC7VtOwrHRuuUgOBwfskJnBxvYGg
 Bl+LyQ==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 11/28/23 22:04, Karen Lewellen wrote:
> Hi everyone,
> what is feeding the question is that the development team at fastmail is
> rather stunned that they have dropped access so completely.
> Future testing with lynx, links, and elinks, is=C2=A0 intended, but they
> reference a new browser, brave that I=C2=A0 have been asked to=C2=A0 rais=
e here.
> does it come with Linux builds currently?

https://brave.com/linux/

Am I missunderstanding the point of this thread.

--
John Doe

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

