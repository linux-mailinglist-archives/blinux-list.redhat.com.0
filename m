Return-Path: <blinux-list+bncBCVPTHE7K4INDFP7WUDBUBE35UWHW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id E457E9552C0
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 23:55:31 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5d60007bd17sf1837402eaf.3
        for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 14:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723845330; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAiCuTbTyN/yfHaBHt4V75V+KgabtUWHyICLk2L/Uy9I+JAtg6OLw1IBZ5upOE1Epi
         0/jxp8+CEyxApeKu/grn3hDYbHxvqCeOFGW2I52/xjEqgnBKni07uf76cvi8qjCivCCu
         XMxq6rb9IoRf1o4ZOXRallAcerUdsg8ADP5XKiYb518k4tjptgHGur1llox92zkMqq/Y
         X9J55TIeA12qfumsLK7kcIZLIfmvnPQk3MVgTeHima8DRCddlhiwnirHjY1rQHOsdDNA
         vlG9LClJqloWz9IzbF/k8SiKmGPS+8LG4iBQ+hlSkZbmth+qf+pnPramyPM7ndT3LK9f
         4mEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=QuTHBblY8i9YjpeZR7N2x/s2+GetntYZVJUudFklhSw=;
        fh=1LehHfKyROiOxYd9O7Ncprf9QgLO2nq70vLoZ4vxXqc=;
        b=RFLj6ypl8PNLe9wX6q8BwUdG2mrLM1b0x3aMFQDuQRZdp1GTBJP6PDPFkcf2JmqZ/F
         1w7QxN8KnYExLSyvCKe1FvnHSquwVcLVcTFmTDs//NlWyC8VT0c7KnGHx3z+92cBiakK
         mT5qvdafcG9+RxpCgLjVnf6L0TE7MisElwVG3O210akQFqy2WFgHWpzuyhBFMfAz7uCq
         J0Eor/q+0D/H4301Bwav3hwVKie4/s/pW4WIy971dMhhPFyFr+Ti4QqPLZGfOzC4G/i0
         DfyFnbNdoSPdronltFedIpxLeIbasqbXYROfrCIRQxcr8lq89JzahNx1Z3JskNL5BIn6
         lLPQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723845330; x=1724450130;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QuTHBblY8i9YjpeZR7N2x/s2+GetntYZVJUudFklhSw=;
        b=OuYasdy0KAn4XmQ0l0t6cvB7sAdyWz8S4ji6kuPUbLoEhTeyNPKQx8E0jHjsxN5MRa
         I/Ulo8boNgPynwjl+npJOLCOsM/ChJ3sOuCUbntxQHSqnVSQue8y37Xd8Cw/EpD+GBG4
         HanwvK41jG6QbdDYmdxbEI2mxQBk8RMY49fJXmGGU3RKB187qmV+Uw6Ye0HPRTTzUt21
         mCncXXZI5i8vJqSuiFcLZ6l2xTM53WanmZL0UPinjvAgaus+C/83DNpz6q1BtJUjL0xc
         6FAxB7e6JeE8wL/wBsfCFo8AflNPSf9iKEv5kkVX3ft5pf8vhYmJUaausXE1yMmdZd04
         tbig==
X-Forwarded-Encrypted: i=2; AJvYcCUNB+wb6PrFbuddKjb6M76fl1jGjNRIdOEAQNfGirx7rj72NXTWKgKoZ4UkZKjcwR34UNQjj9jooR/gKUZDf2LMBLy/AlXaEUlw
X-Gm-Message-State: AOJu0YwcpjcUK093vJwzIgm+Ouj74BcNTxeLy4l7tjxlimnqXaC+zT0E
	UUr1sfHm40vHaC024PDcXAaQUJXTPW9P0oZZnd44t3AQGyax39mNnNo/0f6PXiw=
X-Google-Smtp-Source: AGHT+IGk3WozA0QKFAOjb6ZhqEBhblPc0x8BWykWa661ukpw3cZJrqf1nQ6bPOR5dWmH4e5DyUZFKQ==
X-Received: by 2002:a4a:8803:0:b0:5da:99f5:8fd6 with SMTP id 006d021491bc7-5da99f59487mr3367980eaf.0.1723845329984;
        Fri, 16 Aug 2024 14:55:29 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:dbc3:0:b0:5d5:d941:e3f8 with SMTP id 006d021491bc7-5da8881dc8dls2238917eaf.0.-pod-prod-06-us;
 Fri, 16 Aug 2024 14:55:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX6yncqc3ms5Ng+gnXUXpxX4FUok0bWQN/oIdBaycEM/9EVWgMVQWeDL4VoFIbapWiZeGe8Z5ovWk1sfzR1Zrkyompj66UsmcG/nqhz
X-Received: by 2002:a05:6358:618d:b0:1aa:d6fe:f422 with SMTP id e5c5f4694b2df-1b3931b8371mr547010955d.18.1723845329184;
        Fri, 16 Aug 2024 14:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723845329; cv=none;
        d=google.com; s=arc-20160816;
        b=lqXfaij/kAlmBPktLIRP2JvOHGec7UQDLxJOSvfg0+fuSPQ7md/x+MQz2c9/k3OLv0
         9gRh9Jz49ORBXWuBziYoxoWBnZY7ndFK4QFjMAkcGcQBVLt5Kt1qFCktNLekE9ca9kK+
         bp3sHGFhiTT1WZ+JLc83WrhG1CMQIWnBs8TqZuGmxJAlSkLWn9aHmfQZOIM2UkEA7tdo
         TDBsW82xK5MCgbM1a9S5EnWBf745Qt4wnVpvGXHxcz77MJH0F9+8F4497WN0UR75lyjF
         402W81mHEMiRrjcO+vVWyw0eudF+dccww3vY+RwssPObO7eCORm8gxdW3DCs/6gQVA1I
         VebA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=QuTHBblY8i9YjpeZR7N2x/s2+GetntYZVJUudFklhSw=;
        fh=a/ESFSq2u0cF4x6pPO13g5BX50Sy6I7y8LZ4Hq+LoZo=;
        b=U6zHiAkO2wbNLrfJmcp0rnhtuQWvsH+gZxsX+kOANaKEuRT7L+TbLjKHQZxz0JOQiv
         c8uMjGMz32YVWww82+ihjpOCDQzv8+2FPFD1Ge98A2eB3x3xHJLz4AiAAwv6sRilsSfj
         +bSBOpQRUWboo37TyQc74Dfn3S3y8U36YSeDse3O9+NTG+zr1aI8vsk28MM++BnM0ABu
         B8cfFajQt5E7R9BG6/dWRazGzm4Um4BFFTonvfvsw6PFWOpqobrfpbDzHVC4wB8wVXdy
         eUCjZQ6nxSyuzc8Q8cgQBcHq9yadYq+d/a7Z6DVQvKu+w3SUcFoqQBp6j1qM4w2NK+9o
         eQYw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a4ff0b7fafsi561554685a.287.2024.08.16.14.55.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 14:55:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-439-cDa__ZnIOci8V9pAGeIrpw-1; Fri,
 16 Aug 2024 17:55:27 -0400
X-MC-Unique: cDa__ZnIOci8V9pAGeIrpw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5F991955F43
	for <blinux-list@gapps.redhat.com>; Fri, 16 Aug 2024 21:55:26 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B00B31954B1A; Fri, 16 Aug 2024 21:55:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ADBA31954B1B
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 21:55:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2D55B1955BF6
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 21:55:26 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-38-y-FRKTVUMZGOgBcIZlQTgw-1; Fri,
 16 Aug 2024 17:55:23 -0400
X-MC-Unique: y-FRKTVUMZGOgBcIZlQTgw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id EC69E4050A;
	Fri, 16 Aug 2024 17:55:22 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id BC641100B9F; Fri, 16 Aug 2024 17:55:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id BBE511001B8;
	Fri, 16 Aug 2024 17:55:22 -0400 (EDT)
Date: Fri, 16 Aug 2024 17:55:22 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: blinux-list@redhat.com
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
In-Reply-To: <201b83f7-db4f-40b5-8d39-47446231d9d8@jasonjgw.net>
Message-ID: <Pine.LNX.4.64.2408161749520.111382@users.shellworld.net>
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
 <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
 <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
 <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net>
 <be01736a-fac7-4689-9054-c4bc6d314014@jasonjgw.net>
 <Pine.LNX.4.64.2408152108400.85960@users.shellworld.net>
 <201b83f7-db4f-40b5-8d39-47446231d9d8@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-610679718-1723845322=:111382"
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
--1949452079-610679718-1723845322=:111382
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Jason,
This is an absolutely brilliant post.
In fact it hints at something I wish a knowledgeable soul would write.
An article, or even a book providing the kinds of questions one should=20
consider  when  choosing a Linux distribution.
One thing I have personally noticed is that some companies providing shared=
=20
hosting  services tend to choose not only the most stable, but stable an=20
edition or so back.
Linux seems to be shifting almost daily, it seems a basic guide on what=20
one might want to weigh would help frankly many folks.
Cheers,
Karen



On Fri, 16 Aug 2024, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 15/8/24 21:20, Karen Lewellen wrote:
>>  More than a few sources suggest there are hundreds of millions of peopl=
e
>>  on the planet experiencing blindness.
>>  For you to state that if a few are managing a task then a person must b=
e
>>  doing=C2=A0 it wrong does not reflect how much like clay Linux can be, =
how
>>  often a slight change even an upgrade can negatively impact results.
>
> Anyone who runs Debian Sid (also known as "Unstable") is more likely than=
=20
> most to encounter exactly those issues, which is why it's primarily=20
> recommended for Debian developers rather than users. I've run it=20
> successfully, but I built effective Linux system administration skills fi=
rst,=20
> and I was prepared to spend time and research effort recovering from the=
=20
> problems that occasionally arose.
>
> If the purpose is primarily to engage in development efforts or to=20
> experiment, then Debian Sid is fine, but for every-day use, there are bet=
ter=20
> alternatives, unless you're comfortable with dealing with the problems th=
at=20
> running an unstable operating system can bring, and contributing to the=
=20
> Debian bug reporting process.
>
> Debian Stable, Fedora, Ubuntu and other options are more likely to be=20
> reliable when upgraded. If you want a very up to date distribution, then =
Arch=20
> Linux would provide recent packages, but it also assumes knowledge of the=
=20
> command line interface and system administration.
>
> The essence of what I'm saying is: there are tradeoffs involved in decidi=
ng=20
> what distribution to run, and it depends on one's level of technical=20
> competence and comfort, among other factors.
>
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
>
--1949452079-610679718-1723845322=:111382--

