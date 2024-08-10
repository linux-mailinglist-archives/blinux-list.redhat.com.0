Return-Path: <blinux-list+bncBCVPTHE7K4IJFX62WUDBUBBTKG5YS@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 2117494D958
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 02:08:52 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44ff5210422sf63614311cf.1
        for <lists+blinux-list@lfdr.de>; Fri, 09 Aug 2024 17:08:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723248531; cv=pass;
        d=google.com; s=arc-20160816;
        b=NlOTm04ojPNHm03OyXlyUoy+yGs8p5Zn2vHkepMF7IBQFsN0TPuuFsM+p7Lk6zGUhJ
         zuLQFdsyeHk7hk5rihplWNGnuKQ80lOsu8O+2oB6dDycyJBQliwJTWTrRdU/pbDIRwtE
         ay17r+is2p3vmQaFgFbzgyoTUbuxFh/EgK4fIBRSTINh453fvnRzc+rXS8GM1ZHXk3pz
         QEeFexMLJs2B1e0BK5yxm4TDCrodx9eUpK3NcmBTA570b7iXMiBKvSJweQ823xKiGQ8s
         W6Hpvff8HJOISjPwA4W1IHX9Ls+6CeFopkMM3m8nHixqaYErrhz49abxPnNbGvhWRZnU
         lZIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=+wWdCPpzfwGPRynAdzFF6Be5wGZ/iDLfRtL9ZQAHosE=;
        fh=8QGYpQrmVkNBtcFilcsSTK3Qzff069olcbj/IpJdZq4=;
        b=lOSmeO7gaOWOt4aFzPHPsjlLr5zlP0wDkYyQlZ2H0BLtxSoWg4wF2YqyS0/56hMV+s
         KOC0JlRrekNyCR73twPn0fE+VQdWdRmcJry6IYcFo5EdF4jVrNDj9m3+l6mNX4uTmXxi
         clDg5oTYZkn9Oznr77oUZOQbvnWePFt04gRA8folmiYpBycWWYfgMaNKW8wt4kBqgo4p
         QY/PAhqyOdx2HCoTsbMBY7Z2QzIt+K0ShRijUHpA+P+bAilebWC1LfERzwaxQQ1Ae8SI
         YqXKuj7rCPiP9+yjoHcMGGfDkIZ+pj9GI/yCuKWTjz4By4Be+1c26MZU6orkHI/X7m1S
         QtqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723248531; x=1723853331;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+wWdCPpzfwGPRynAdzFF6Be5wGZ/iDLfRtL9ZQAHosE=;
        b=xRsdd04A76Jri5lbqREIomNeTa4Wczz0wsWfq99PBiYF9YGwQOae7CB90D05GMXHKI
         Ubk5RnJc6XRyQFiUg9tVenVMaTM+hwRQxcUQUjrI2/8D23sfha9yv6r02phYlg/qBY2u
         NsBHRvYuwZ4zhjS3ur3Cvk+xN0nmXAlXZebkfL63wMc5KkmUPxWc2sj0ODmOSecgDgYm
         2v32i74ZCREHml48MF3pExrJbqL1S8DKmsg44JniRBBH4r2T0w4iIgGYG4k4P1RGKHxG
         A+wjLIofyxTDGY+tMnbKpVRmSdHi+vCr33C4xmxNzepW7sDFACInzKg+o/V6rc7m54NB
         8OGw==
X-Forwarded-Encrypted: i=2; AJvYcCVnTl+qQkNwEGpIDYVmNctNiagsSCKj1/1zp7Tw9PdiG2+gcuTdSqUV60w2iZJEeoXLAseHIHN8uVTsyPsia97O0Cyw11xdyubz
X-Gm-Message-State: AOJu0YzvJYKbd2TYBD55ii1UHzcY4z/EHWHgR224LR9XXwYnxvLG9Yvp
	7cf4OR+Tq5nBT3Is73und/K8giOWy/vf5304iIRI9GbVRMyOt+j8+ptuqGMDnZg=
X-Google-Smtp-Source: AGHT+IF2t3u8nr5iXSzdLU8hvy3pZ+5f63nbVOD9wIfzSCMOHbzZNA8m48eMYHg6hQc9PlDpjqDbVg==
X-Received: by 2002:ac8:7fc1:0:b0:43a:3502:8446 with SMTP id d75a77b69052e-451d5a99d88mr121938801cf.28.1723248530533;
        Fri, 09 Aug 2024 17:08:50 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1481:b0:444:f3d0:bcbf with SMTP id
 d75a77b69052e-451d10ead63ls42724441cf.0.-pod-prod-00-us; Fri, 09 Aug 2024
 17:08:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVfE3bb3PrQDGeGPKBVhpgxJ83331bdJKCR3dof7SImnC0xeg2T05n59l7nsJB38c6CGGffXDBEy2vG6wjB5nD8aFtoAEHpx05GVLut
X-Received: by 2002:a05:620a:198d:b0:7a3:56dc:d419 with SMTP id af79cd13be357-7a4c216cc60mr586175385a.6.1723248529705;
        Fri, 09 Aug 2024 17:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723248529; cv=none;
        d=google.com; s=arc-20160816;
        b=n6k6k4O0DaTo+0FmhF5cX0S+E9X0h4rm/2vyf+RNxTtq4kaNr+4C3eNUY8p94ARRcG
         uxTqJxli6Bf2dBZbfnTzHDTtwJXhBNqGyRffLh/JOHuF1nrh7LFVx/PdM87KcS5o3QjM
         nU1cSn/xw4KxyeOAjmsA6GVvRojfv0NRo0S8TQCNhqlUttY6fU903aY2ygENpMEjAqhZ
         GCHZmJUF81Adc62oRAw4f6vbzuhKPOtzwVIu1B8I+fRCBmJQsWsatJOsFQjbuuBNCEz+
         lWy1PLryI4Rd/VvUjcRKcvBfAB0J9PfSb+XcTu4/YtLkwJYq4JkKcV9Njo+kMsYNyjTQ
         LHTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=+wWdCPpzfwGPRynAdzFF6Be5wGZ/iDLfRtL9ZQAHosE=;
        fh=ib8P8Qb5xBHahqKnjYJ9L6tWxLwD8UVPqX3WKlHDIac=;
        b=FFbCzFZeRblGryjHeDWaTxurczv8ziSE33Sm4Cjj76809gNFChOX2jb98UvWTB4ddL
         RbdQ6yQZ8CRvBMBu0IZv5XXkkmb3ilGhT7RhluectKEDJdF45eP6qwZBr+ItTg/37i/I
         ZixRL6rYqNEZN0XzAJ24Be+L/KGXTX8whMiD1u42Lsy++52nCO3i2GKEBfLu0ZPr+FtN
         CFbIW3NDRy2gJYWofId6ixwsmruLXB2VsCcw5dlTTkSEjuZGA4wqFQRLpxB2W551y9qa
         Vu+Lh35U+GK5qG5p5GZRrWnKLN13KPKB8AwLBCKJMGv4koPiUGY0F0s/z4wzpfO1KYjb
         Sn4A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4c7dfacbfsi78701385a.273.2024.08.09.17.08.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 17:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-74-1PaRAQboM-2vGvOruRpDJQ-1; Fri,
 09 Aug 2024 20:08:47 -0400
X-MC-Unique: 1PaRAQboM-2vGvOruRpDJQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C01421954225
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 00:08:46 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B834819560AE; Sat, 10 Aug 2024 00:08:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B54E019560A7
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 00:08:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 509D81944B2C
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 00:08:46 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-671-rdv0wCOhMxq2tKIoi64iDg-1; Fri,
 09 Aug 2024 20:08:44 -0400
X-MC-Unique: rdv0wCOhMxq2tKIoi64iDg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 7FE3540508;
	Fri,  9 Aug 2024 20:08:43 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4637E1000A7; Fri,  9 Aug 2024 20:08:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 44EBC10008A;
	Fri,  9 Aug 2024 20:08:43 -0400 (EDT)
Date: Fri, 9 Aug 2024 20:08:43 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Paul Merrell <marbux@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?
In-Reply-To: <CAJ1g4g9XWT9LpS_69mqzxHKQKOYkmyWbSE_kiwbG3d_=2snvLA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2408092006300.4155520@users.shellworld.net>
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
 <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
 <CAJ1g4g9XWT9LpS_69mqzxHKQKOYkmyWbSE_kiwbG3d_=2snvLA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-388184623-1723248523=:4155520"
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
--1949452079-388184623-1723248523=:4155520
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I appreciate that wisdom.  However, I would deeply prefer the browser=20
specific solutions if at all possible.
I am using a Linux shell, which may impact how this door works.  further=20
the  extra links  compile on my desktop is for DOS not Linux.
With appreciation,



On Fri, 9 Aug 2024, Paul Merrell wrote:

> On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen <klewellen@shellwor=
ld.net>
> wrote:
>
>>   well..how would that save a file in a way to share it with others?
>> print screen creates in theory a printed copy.
>>
>
> On my system, it brings up a screengrab program.
>
> --=20
> [Notice not included in the above original message:  The U.S. National
> Security Agency neither confirms nor denies that it intercepted this
> message.]
>                                                =C2=AF\_(=E3=83=84)_/=C2=
=AF
>
--1949452079-388184623-1723248523=:4155520--

