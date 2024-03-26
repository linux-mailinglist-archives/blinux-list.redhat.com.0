Return-Path: <blinux-list+bncBCVPTHE7K4IMLFENWADBUBFAPCPGG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C5B88D0AA
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:20:55 +0100 (CET)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3c3d3de209esf1588701b6e.2
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:20:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711491655; cv=pass;
        d=google.com; s=arc-20160816;
        b=ruduwn6iwm1U2ycbdemXLRBK0Pmji8lrrdfmzZRcQwKGs3zu+ePXLOb05iAEsS26YI
         aMXIACZNS0DxOMvT9qiwVcGz8GLTNBZ+p995MyFQ0j4keQjEIJhOiKdZPVLi7pjN2lN/
         pkHoz/P2SySu7WaNaHtZyiGrEaCedsrQevmkLtFM9V4spO/UsotZqv8wf2b4BBiTOrZ+
         h1eK4yWKWogw0fcp3rd3911U1jWtkMpccMBSpyFAJCnrU2xrbolDQNTxOTcwO4702ar7
         E8MdySPayFj0VVfjrnnqwBYpHz7W5cg5X4ZiwWJwXvH57JrBcDMe29YS8vIZYqKHiF9w
         5Msw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=TY3R6vqYpyOMib1n24uU+AEU0KstxPX4I2AP7L4amRw=;
        fh=OI29XhNK8oCyba9QOol+QBawIYE+a9evZEWN9BtjcXQ=;
        b=jRLQs+46FsJKTB+YQADMcifBe361FXYuEliCPePX98wVkTBHdGpv1NcIkHALaPJWR3
         N5TqMYsOZWzoQaAMx3IDZ9JLqUe0s85LelACqR0OPPQ5zQIiBOkA6mNXOkDJ5BAj5KTn
         VuTmVKGrUXtHKAlPSTRZvRbA+OFDsVG1VrE8eH+2sYJIQl+wSLseGOVKLRnH9Od0GTdG
         GphFlG4zlaUsW6t6NK4HkxPajEnClcfAWHeL+aVIkb2RupuuHGTwSp7pifiOjrLC3gmj
         qJN2ioxhWgz1AYv+zkIh72Osx+ES6X+z0Tb2/A8Tb1tmJFeav26IS9E6WruRKeCgQ8l5
         AOvQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711491655; x=1712096455;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TY3R6vqYpyOMib1n24uU+AEU0KstxPX4I2AP7L4amRw=;
        b=mG0vYDFf9X3Whbi3ZAbevzCwnjmiMD9lhh325U9iRYJUBFRecWz6ldm+T6gIQR8lUF
         DFgpGlxCVp34E++yqYKRd4i7KK72f3AAtm91f0GX2nBFWQucqoxEBhwTyV9ap7H36eo8
         GHMRoa6ZkamgZcTSgQK6/+Hp54PBPuZvDuWUb2U17c55x6uSyzZeztKRQaFJWBnYfJfx
         AFBC4Gk1G/a/IDyf/YS2g27vP0iwKMMBbvhxWzc89gZ2L08LjW0aaAC5dOFHAqftfpTf
         bFIolv8bubNv5y3aWUFHhDqEsEFmSFzR+WxlpRV3JpNDKYv+zC99McejcXhevH7cpAsg
         epsQ==
X-Forwarded-Encrypted: i=2; AJvYcCUGFKGfjRfmuJXv+QpCPFYPp1uVX72oNq8MkMMGmeGVIKxf+PQc+qwPpUXWzWlUKa1WxLdyC5wF97XTBDiWr5fRO0tH3X3/tXLD
X-Gm-Message-State: AOJu0YwsdtuEjehcHCwDdlEH5RarN9V6JKTgbcEN2yPf2RZd6PKsJx4+
	y0/AHC/MV519eu6DuQJIWZwsKxIud8Zpqw4fPM3cXu2QEJvZ+hcOce9XG9AHfY8=
X-Google-Smtp-Source: AGHT+IHdqjic46Gmktrz/Skh94o50Z7/JFjk7JjeTrbFbelVjvhZpfOxacHCEQxzntoaCWmpNLmvcA==
X-Received: by 2002:a05:6808:1985:b0:3c3:ce62:2ac5 with SMTP id bj5-20020a056808198500b003c3ce622ac5mr8350837oib.45.1711491654568;
        Tue, 26 Mar 2024 15:20:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7c4:0:b0:431:3419:79ef with SMTP id m4-20020ac807c4000000b00431341979efls5275064qth.0.-pod-prod-07-us;
 Tue, 26 Mar 2024 15:20:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVY6dgQt+ohyIpQRfKTgOCfihUFlhtvIcrpG0PT3/LmopYCspp3HFsGIHIfTq9h/xPEkgAH809Zd20AUVjJpKIvCpTyt4ZRhs8NaiOw
X-Received: by 2002:ac8:5a10:0:b0:431:3f48:7330 with SMTP id n16-20020ac85a10000000b004313f487330mr11790062qta.60.1711491652540;
        Tue, 26 Mar 2024 15:20:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711491652; cv=none;
        d=google.com; s=arc-20160816;
        b=IsS6w1biTUoech1I6Zt5hJivCr5qr7z+RNHCUu9X8rEimKv+FidiXoQvvXNWnZXbVc
         hixNJ/a6ekJ7allQpf2vDzfB+LYPWZtkqDUyi3u7t/KaeIxN7jnII2MtCcC7wcZz/Wbt
         R58ffPJLvHAQVxAAiUEUTg8sXRsEVFY/HQnRaHWelAebLjROKIgkYS4vmwww1P2Mz4je
         UsnWrTgqUkXhCU4/QQKu/hhmUckABg1L1Zs66P09NBfDRcFXZzRaMhh0nPRwWPb2Q9xn
         qkZp5krN2yNnjhvekIa8Yhrg7MZ+d7AQAvWo2UzCrllzFfGjGFpyH9oQZBjEQM4phJrp
         gJMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=TY3R6vqYpyOMib1n24uU+AEU0KstxPX4I2AP7L4amRw=;
        fh=ISBACCKYaUFcvdwzcLu0GMVPpgNsMnO2qtxZe5WiN68=;
        b=h/hi8GEHhpO9gKnia2zEOcUJCUvv0OogE0V8Eep1LrDBgSJHbTuJoMXerYRxviAXBn
         Oxmf2a0HTW0Rvr4p5e+WYN7PBvbeqhTvs5pHUehu0OTiS83tOx69BxODomGZVzwRq9+o
         B3Eqc3q68cgGCwke4GXreeMtt6JcYd6KSxgkIac1eos4pKukyYrZNsJ6tM4y8AugCiXF
         G8uELgEhF6dioJ7Au+RTXsCQ2OO8J8CcrBHY+TMZtm5FYzjV+1do6tsr4XV5pcSAV81v
         4Fa5vS0RtUWQ6jorr0zaRaptS51dcaiDxr6MDiR2XIwtv3SFKPcH305yAM79InfTQMa6
         xpvg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id fy17-20020a05622a5a1100b004313ff9cf1esi8190920qtb.330.2024.03.26.15.20.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:20:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-462-LgHPsrauNbSjLm3HWDSyDQ-1; Tue, 26 Mar 2024 18:20:48 -0400
X-MC-Unique: LgHPsrauNbSjLm3HWDSyDQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF34F84B168
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:20:48 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AC1B6C04121; Tue, 26 Mar 2024 22:20:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7445DC04122
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:20:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 876CB3C0245D
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:20:47 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-571-AhFx7SloMTie2pAZBwEOHw-1; Tue,
 26 Mar 2024 18:20:45 -0400
X-MC-Unique: AhFx7SloMTie2pAZBwEOHw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 21C7540508;
	Tue, 26 Mar 2024 18:20:45 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D08931001AD; Tue, 26 Mar 2024 18:20:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id CF59110007F;
	Tue, 26 Mar 2024 18:20:44 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:20:44 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jace Kattalakkis <khalfang1366@gmail.com>
cc: blinux-list@redhat.com
Subject: Tedit no longer updated, was  is there a command line Reddit tool?
In-Reply-To: <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
Message-ID: <Pine.LNX.4.64.2403261818180.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
 <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-274381752-1711491644=:1398748"
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
--1949452079-274381752-1711491644=:1398748
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi,
When I followed the link to the tedit site I came across a message stating=
=20
that, due to Reddit's ApI policy, the project  is no longer being=20
maintained.
May explain your 403 and 429 errors?



On Tue, 26 Mar 2024, Jace Kattalakkis wrote:

> Every time I try using Teddit I get a 403 or 429 though, is there any eas=
y=20
> way around this, or?
>
>
>
> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>  Hello,
>>  for reading, I'm personally using the Teddit frontend, which should wor=
k
>>  well in LYNX as well:
>>  https://codeberg.org/teddit/teddit
>>
>>  My favourite instance is thisone (since it's usually free):
>>  https://i.opnxng.com
>>
>>  Best regards
>>
>>  Rastislav
>>
>>  D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>> >  Hi All,
>> >  previously, reddit worked well,  at least for reading posts, in both=
=20
>> >  lynx
>> >  the cat and links the chain.
>> >  Now, even elinks produces a blocked error message, my guess is that t=
he
>> >  reddit community is not aware of Linux and these tools for=20
>> >  access.Wondered
>> >  though if another tool already exists that might be a part of a shell
>> >  infrastructure?
>> >  With appreciation,
>> >  Karen
>> >=20
>> >=20
>
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-274381752-1711491644=:1398748--

