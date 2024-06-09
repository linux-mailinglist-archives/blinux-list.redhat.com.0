Return-Path: <blinux-list+bncBDYPVTOXSQEBB55MS2ZQMGQEXVMTFKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D61901604
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2024 13:48:10 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b063a0a4dasf24785986d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 09 Jun 2024 04:48:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717933689; cv=pass;
        d=google.com; s=arc-20160816;
        b=pxPc6cTBHVLmo23ikHf+U/qJamYCT831CrOATW6dT1drhyaJw8ETA+yaeZDO7fGWA+
         CXTsHjLx9LelJYItrmeCivyqv3UkyadrPkkhVugPqEDlvpcL9W343rvm+C4Oabr67oUR
         nW1R/H/GPcgTfhaj6Jv0myBTOvwPx0kp3dR8Z72ji6JpK3NAptMnvN3nsM37vuwow2lz
         KYUUx+Go4sBnBweU6tFKoEpKakw15oOkGF3hZEzIHLZVOjh1zJqH+YjIkcvzov2CYDkt
         qkLqm+cwC7m8QBNpI8yk1nrcYKFFugtlAh3Xw2B9R8SLcb4YXAQB/6Yk8o3JMvaMGbI9
         LObw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=lThSKP14QcM/uUxb0v1OykY0ovLV5OxKqUm8Y+vu4+E=;
        fh=7v1MrXGjh6lJJNKlpddVOK+715bPG+7OhBkHrngl8Wc=;
        b=RZtSBwcRoMFXIpxVNiRBEocSp41ANVe72Zi02tFO7I2neCm0Z54etrhfERFnnyVOKK
         jrf0ozr1ZLTSkGgDkOKs7tNYkZR1m/KA4ZjowOTJKRTSb36wbyqNUx9DwNAOzyeYPu6G
         DT1HfclYVrC8ZIVHdU93AMgZfnlwwsTp3SI/tsBTW+moMXHYeHahp8/XgkjbuqTRLEFY
         9RVJevf8ZTTdED6avo5tQk/ai0+824iMnafECG5Kwwnjvkv/3Yug+QfxBzioundc2a8/
         ZjhBj3arM1VtsKemzkfZ8KQmIF+hfBJBThY8gjkAZphJikzU1nLFamAQg/vNQOnw0N0/
         Yi8A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717933688; x=1718538488;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lThSKP14QcM/uUxb0v1OykY0ovLV5OxKqUm8Y+vu4+E=;
        b=CrHBMDC8j2DK0os7NZ7pwX89N1jkfLvKk7NHFRbwi1zmdJj4FI0CP0zXTO4p6kMS7r
         imIvHE7Jslk4xt8F5ZpFI+e+/lMoBzPEvLjIuVRyN8qukGy/5dluEgt8APW+20AtLJqA
         t1ZtAgUySCrhAIuqkTDuxfdHp4LUuZ+ccbHMHT2P4IOSqsmIFRx2u9KHic7YaVNDVVCw
         +6ngLMVN59yZGB9fpIjOa7LVgGNOfKInOYw//zUA4s2TzhokrCDym7R6JdQP+Zp10bsg
         U5wrCLgicQtE4+ht3JuXygQBBawKGgQUC+oxlNzlYN2ugvobVGsp0hvx09OMF6qK7gfs
         xeBg==
X-Forwarded-Encrypted: i=2; AJvYcCUNmYdMRQMdCgwOAnUW1CkrZtkNU2WucWmnUF1G/qDs3a3PzREj/WX6KSUkh+FnXMNVk8uKmZSO6buRx9GyYkGJP0xZAjf4g1zx
X-Gm-Message-State: AOJu0YxP3xA8e3RXTrNgPMOBS5QJnyu8IpN7FSnWx6y1G3zOJRvUhzU3
	li3iXUg5QhkS/qVxYy+37NBCPZND0mr3t+WohINkIMMv0WkrD87cmKTK65wbAls=
X-Google-Smtp-Source: AGHT+IHo+7ZLuQcN0L181T5XsWgvr2YIMUKd6eZeDQaPhLstWjIAFnZf/Wu6xjV+8gHkMSTkwquu0w==
X-Received: by 2002:a05:6214:440b:b0:6b0:6ea2:6192 with SMTP id 6a1803df08f44-6b06ea262d0mr34513446d6.28.1717933688347;
        Sun, 09 Jun 2024 04:48:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2b07:b0:6ab:7910:c571 with SMTP id
 6a1803df08f44-6b05741ae6bls42297296d6.2.-pod-prod-02-us; Sun, 09 Jun 2024
 04:48:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVCrxNl/P/3/ygPVBeD4nYKhp43r2xPx3OsAwWUQdn37toC488OvKLxK/CKY4h/dKjxRmdPC1w7CD4+fSNTMeqGvfA8lGnLLsJat7RV
X-Received: by 2002:a05:6214:3d08:b0:6b0:77d6:7856 with SMTP id 6a1803df08f44-6b077d67aa0mr13915346d6.38.1717933687322;
        Sun, 09 Jun 2024 04:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717933687; cv=none;
        d=google.com; s=arc-20160816;
        b=EUWGjOgJ0TydMzZSrU2iy92K/i30Srz91Q0h93kvH9rHHtqvlmSsgeP48hsZRsmFX5
         oFS+6fSrEWnfN5AyjEuac/pcvhm37fqa+R9tGzmzb27qXbsUbWp8zVP2Rf2yPwo+lPC6
         p0ZLP4HLLuugFNC9G2V8FC5ChjoPvmlZl9dXTj2/OGJTqmlh7oGJcO6hcfAS9CLsbZxF
         wyLy6ZiY1QAKkfAgrHk08cNj8S9Uc7dogf5dHbRp6I97HSlqLQVxiRQcSmg6rJEW5HFz
         n0PD0u6RofHGwTXoFyXc5KDDWpCKhaEsC/BwUl1ATw1gvyvh4Rya5ujpTrQE6BJu/4qw
         ze6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=fN/cuF81Lff/rfqtsJLv3sOzYqRKSsbS+9hBmPjn+XA=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=dkvVX26NbnTWOzCvon5JYHg+GPqNp8DTVX/ayJFntSo/c15Nu9qxvlgRECmpKrVwP8
         wH3LWSqOGTBZ4HjjSJauUBV3NUQAi224wV6ruIAnbxOMrLmdJNTwm40ILLYsL1XagDd/
         4dXK3YF4+hgj+jXz7miNCdJSi9mhgiz2iNm8jISE6ist9XXPy5W9KimbdscrI43Evivh
         T7YYq0v2xMNb5jPblata/4OeKKyv4bPd/4SqjieTT1QU25IJ1AbVxTgsfQdXmM7EKzhy
         Giq4a7YWRl88GjwI1INM6lYtcHjNFypzyp2BzOj2/Gf1Y0UeimcBnfxsR8K3TCNqAKmf
         UiAw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b0633917bbsi47637796d6.388.2024.06.09.04.48.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jun 2024 04:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-529-9nhEAwYYPiKIXHx1G0zdgg-1; Sun,
 09 Jun 2024 07:48:05 -0400
X-MC-Unique: 9nhEAwYYPiKIXHx1G0zdgg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0D68E195608B
	for <blinux-list@gapps.redhat.com>; Sun,  9 Jun 2024 11:48:05 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F14D130000C4; Sun,  9 Jun 2024 11:48:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EE99630000C3
	for <blinux-list@redhat.com>; Sun,  9 Jun 2024 11:48:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A8681956088
	for <blinux-list@redhat.com>; Sun,  9 Jun 2024 11:48:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-402-x9KiEkx3MhqcqGhv5cC6LQ-1; Sun,
 09 Jun 2024 07:48:02 -0400
X-MC-Unique: x9KiEkx3MhqcqGhv5cC6LQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VxtV728LQzKB8;
	Sun,  9 Jun 2024 07:47:59 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VxtV720Pnzcbc; Sun,  9 Jun 2024 07:47:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VxtV71xPhzcbV;
	Sun,  9 Jun 2024 07:47:59 -0400 (EDT)
Date: Sun, 9 Jun 2024 07:47:59 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: Trisquel
In-Reply-To: <11399c08-e4e3-4525-bfe8-c8eda82ec95f@gmail.com>
Message-ID: <91959154-3a3f-b710-ca01-9dd75f45a0d9@panix.com>
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi> <20240503123117.6vhsfjpfuhjgwxno@begin> <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi> <20240503125138.ccmtstpyuyyyyf3e@begin> <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin> <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi> <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com> <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com> <b29d005f-b199-17f6-66c2-cc7635c663ee@panix.com>
 <11399c08-e4e3-4525-bfe8-c8eda82ec95f@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Let's say the chosen drive for installation is /dev/sda.  A command like:
wipefs -af /dev/sda
should work well for this purpose.


--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 8 Jun 2024, rodney jackson wrote:

> i will give it another try, before i installed the drive into the compute=
r i
> used windows to delete all partitions.
>
> so even though i deleted the partitions it canstill see disk label?
>
> what is the best way to make sure everything is wiped clean before attemp=
ting
> another installation?
>
> I do have other computers running linux, I have fedora and linux mint.
>
> any=C2=A0 info would be appreciated.
>
> Rodney
>
>
> On 6/8/2024 17:34, Jude DaShiell wrote:
> > Beyond the partitions there's the disk label.  You might try erasing th=
e
> > disk label and try the install again.  If the installer found a disk la=
bel
> > it didn't like that could stop an grub installation.
> >
> >
> > --
> >   Jude <jdashiel at panix dot com>
> >   "There are four boxes to be used in defense of liberty:
> >   soap, ballot, jury, and ammo.
> >   Please use in that order."
> >   Ed Howdershelt 1940.
> >
> > On Sat, 8 Jun 2024, rodney jackson wrote:
> >
> >> I have just installed Trisquel 11 on a duo desktop.
> >>
> >> and the installation was going well until the end.
> >>
> >> it gave me a fatal error and it said it could not install grub boot lo=
ader.
> >>
> >> so even though it is installed it will not boot up.
> >>
> >> the partitions were deleted before i did the installation.
> >>
> >> so how can i fix this i tried this twice.
> >>
> >> any help would be appreciated.
> >>
> >> i installed Trisquel a while back on a dell laptop which is a duo proc=
essor
> >> as
> >> well and it works perfectly.
> >>
> >> so i am not sure why i am having issues on this desktop.
> >>
> >> Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

