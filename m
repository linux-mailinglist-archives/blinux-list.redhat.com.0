Return-Path: <blinux-list+bncBDYPVTOXSQEBBPH5R6YAMGQEPDXHX2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E53D88DC1F
	for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 12:10:54 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-229ede09748sf5306314fac.1
        for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 04:10:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711537853; cv=pass;
        d=google.com; s=arc-20160816;
        b=HzHVfUVMzM5zQaDKCC6q5GyUnlIhvNOs6Aur3tA1oneGoRk5dKbfGvQjAz/MmrKxvg
         +ZR8+D+M9tuy01tLUtGRFZrDoPFYtGjfRiuxYEl05lHVudjBZyT/AdqX1zBhZGGrzpYa
         EVjo3+MHi1YtxAA5ml6undn8ZBiOkaLnAdwukhsK4Tx6YfIqb/QtqGezWOQbSe9Wcbao
         RKbsTCG3RwqwXl4cr6AXe5FU/RfZmkJ2FUJSzYfJUm0Bnw1Kdh1GWiXybSwDPHNJnBIb
         KUWgayDDS1e177F1C/x09il1QbDWwo7Ctn1kDHEO5xjq683pEHVKUrFNk8kZWDqQp0pc
         FO/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=5K89NJX6rik152D1xDRb+mmbuOS4sT4s3TQINvZ5LlU=;
        fh=vAMH3EnkYJ072Cfm6koVMgRHVa2TXu+zozn7zElXrQw=;
        b=wA9YWZlFh1p6F9AJJKX+RM+PPSzfCWRmvhQX5mGMScL3CuKAVa0Pg6KaK/Rv3zHJCR
         AKC5OZZYODt7zO9A9UMDy9o6ShHY4XTNL3sB5bkTKH/UIhXM0TJQPYaaeDGK4dMD6XxU
         di64ryyoFQ9IHjZoyXU9yg5PN0Huzg1fLFsZjk1iHkVXi4kd+V+GX0HtOzF6Px+ddFso
         npiJTWLhsa73qHtYsp5AXk5pSlce56Hotdi3o6/5+7YiJc0r1r9KHVC63ABNtzm+2IYu
         9HZl5U3RThX8Vqw6Trg7j+wLrYw+Z+6F5g0/Lqgy3EjyhXbgAKftxwbsh6JsUkn8Ij5w
         gquQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711537853; x=1712142653;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5K89NJX6rik152D1xDRb+mmbuOS4sT4s3TQINvZ5LlU=;
        b=spq1jdg08beNjZCTFBHvLywlNYlw9aM7aCeGa2D9g3vBs59JFFkW8rpjFWARsV2yGh
         SN+N3vjDLYyuuEbCsrWzyC68HTfPXGXzcvrGQuzUvW8oBYA178kTu1VT98Yu6oJZpCmu
         HupOfsKXueVc5NjdigHyIG2Bk+CVCfGPVCRzhRzwaeP6OBkexsyn1U1y8QWrXWvTCsWc
         nJW4oLRoY1wzjTycIbECNt53gEV/hPqI29C/z9rPGNiXrOTmdIzP8l4AGo//K6UyEWsr
         B6Yz/wJdNeGzXZUgwc+sFjvg2lftaXtXoUPjEhx2+m5cDLa1nmhJmUUG9zVXHHv5UO6c
         ytwg==
X-Forwarded-Encrypted: i=2; AJvYcCXxYtqJQq4EQwi1ZhdRlAMRSjd/I3sZ8AOfsk9zJhRZS5meRALMiO5jGYGwf/LQuGLSpQZgX+oWLscYK3KBSD7O+d4KTpladn7/
X-Gm-Message-State: AOJu0YyzCztkGUZObehNIpaPqzdy3dlAcLtmOnQ/LvWvVrkZXFRXDdrs
	zNrMS3I0bIPS61gefCGAwb1QM4QyqwV1IMQysh/ZaAHaCYhcM1JX114rw7jIqKY=
X-Google-Smtp-Source: AGHT+IGmCenuqe2NIzCfkuZJqAvaMqE6jrMZRpp689dgCF/3tQUGd/AkZHuIYrpzz1RepZB629h0iQ==
X-Received: by 2002:a05:6870:1653:b0:229:e574:9c82 with SMTP id c19-20020a056870165300b00229e5749c82mr4123391oae.3.1711537852848;
        Wed, 27 Mar 2024 04:10:52 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6871:60e:b0:22a:69f9:37ef with SMTP id
 w14-20020a056871060e00b0022a69f937efls1965625oan.0.-pod-prod-03-us; Wed, 27
 Mar 2024 04:10:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWPnGQunGOVaq+cvY2r2xVCdhlyJNjuJzdWYkr4Eap5kXE5z2tiJGPmNZReDN5jaNFKNMtuLheBSpdRMOtgbPsAYTVcqwna4MkpGzgw
X-Received: by 2002:a05:6808:3007:b0:3c2:3612:e173 with SMTP id ay7-20020a056808300700b003c23612e173mr3854252oib.47.1711537851853;
        Wed, 27 Mar 2024 04:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711537851; cv=none;
        d=google.com; s=arc-20160816;
        b=jUIm8cZXGM41sN1TGqQqnJvO7IsmVSFcESLm37Muszd2IQOFs+h9Xb7SKyi+Lh53Dh
         2BnWlIFIwj6zWualKh09K01Y8fsn9IE99t7LMUUQxLo62kvq/63S/dDefWm/73BveThp
         faWXTtihp+99j0WGYUJbvNdPoS2MPZZIwGQwfj3p6OkjkJ8IW/LMYZ7hNvV65UKx8Wax
         FllCjAWMjmCrmUBTg+vwJ/fA3rxlCx8ohvD3NpjrKA6HlxD9Kvkg+uQAWQU8vfUp1ENq
         gMieCVMI52fs2Wg0Ctcd40r9XXn0ls6DLHMKXu//wp+07OnfS4U53nCD53i0FLJuClB1
         fiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=pghz0FHD+UDOzsQYRI144BbVv+85bQC6i4apP/9P6Hc=;
        fh=9z6violr4Smu4CVRvmHV63eU0fGu2RjOIcepDnPzhZM=;
        b=bdbi/ZHlvDtB8VL2znO56+uJmrsJw1XeGzPMTCzF82iePtmWOabKKML5LMkqtzROjv
         xZJe3OTEsGJnE5zp877jylcF4+l6chC71cZ5MG4f6b06EpvtVQNtnXfnZzdW/OU80dOT
         pxN0CPHYi7HzGERLk3R5RNQOksbtOXckqqwiMsFhcEgvrcGSPJmdB51LoVwZfhVZaAwX
         QQ8XtIE0zD7N1QNCMhCxjYbnNemLakoPwQpPZMkPgXZVKGnDzmL/EbJaIHErLYOSE1rI
         30wcZ+tqy0ksN8m2o91HPG1aEjPQvRC95MXunL2PXNkHblmodqZy6uhp9LtboMEmcmbm
         zisw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id hg10-20020a05622a610a00b0043120539247si8848293qtb.679.2024.03.27.04.10.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 04:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-503-hNpuqcW9Mpe8pKaDYZP6mA-1; Wed,
 27 Mar 2024 07:10:50 -0400
X-MC-Unique: hNpuqcW9Mpe8pKaDYZP6mA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42133383CCE4
	for <blinux-list@gapps.redhat.com>; Wed, 27 Mar 2024 11:10:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3EE8640C6CB3; Wed, 27 Mar 2024 11:10:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DB7B40C6CB1
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 11:10:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8332D85A58B
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 11:10:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-345-s5lHRUzUN4uplrTl5zWvtA-1; Wed,
 27 Mar 2024 07:10:46 -0400
X-MC-Unique: s5lHRUzUN4uplrTl5zWvtA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V4P9L2bKJzqZ3;
	Wed, 27 Mar 2024 07:10:46 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V4P9L2PF2zcbc; Wed, 27 Mar 2024 07:10:46 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V4P9L2LkDzcbC;
	Wed, 27 Mar 2024 07:10:46 -0400 (EDT)
Date: Wed, 27 Mar 2024 07:10:46 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Rastislav Kish <rastislav.kish@protonmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <41f9c7c8-a2c1-4d44-821e-1f85e5a67e47@protonmail.com>
Message-ID: <e1b8de54-3465-7bf9-ca78-d9774e3e8d61@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com> <f573056e-b1e3-4a46-b206-ab7210a46a93@protonmail.com>
 <Pine.LNX.4.64.2403261904270.1398748@users.shellworld.net> <41f9c7c8-a2c1-4d44-821e-1f85e5a67e47@protonmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

It's jaws accessible and no more which means it is not any browser
accessible.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 27 Mar 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:

> Actually, Reddit has done some quite impressive work on making their
> website accessible. It used to be almost unusable, now the experience is
> quite pleasant, even headings on posts worked for me once, but they no
> longer do, I'm not sure why. But JS is a requirement.
>
> Best regards
>
> Rastislav
>
> D=C5=88a 27. 3. 2024 o 0:05 Karen Lewellen nap=C3=ADsal(a):
> > Has any effort been made to educate the reddit team about this tool?
> >
> >
> >
> > On Tue, 26 Mar 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:
> >
> >> Hello,
> >> so, the situation is like this. After Reddit API changes, now, the API
> >> still exists, but is throttled, I believe 10 requests per minute witho=
ut
> >> API key and 100 with API key, or somewhere around those numbers, see t=
he
> >> Reddit API sites for exact numbers.
> >> This is why mainstream Teddit instances that did not use an API key we=
re
> >> throwing 429 quite often. Not always, but often.
> >> And that's also the reason I like i.opnxng.com, it's an inconspicuous
> >> domain that almost nobody has been using, so getting 429 there has
> >> always been pretty rare.
> >> However, it's not the only problem. Reddit also from time to time
> >> decides to arbitrarily block a Teddit instance after it had been used
> >> for a while, that's when you get the 403 errors. But this is actually =
a
> >> temporary thing that's IP dependent, so if you change either the
> >> address/instance or just wait few days, it will start working again.
> >> If you setup your own localhost instance, which is super-easy to do if
> >> you have docker, then you can just use some kind of proxy or whatever
> >> and it's rather easy to workaround.
> >> Eventually, Teddit also has an active Reddit API key. When it's used,
> >> the instance won't get blocked. Originally, this key had been used by
> >> the main teddit.net website, and was discouraged from being used for
> >> production purposes by other people, who were supposed to generate the=
ir
> >> own keys instead.
> >> However, I'm not quite sure if this is still possible to do, it used t=
o
> >> be a mostly automated process, now you need to apply for an API key an=
d
> >> get approved for it like an app developer according to the docs, what
> >> doesn't really make sense as fighting third-party apps was the reason =
of
> >> halting the API in the first place.
> >> I make use of the API key occassionally, when opnxng gets blocked and
> >> I'm lazy to setup a proxy. The main Teddit website is down for quite a
> >> some time by now, so it's unlikely that anyone uses it anyway.
> >> However, I always get back to opnxng as soon as it's available again i=
n
> >> order to avoid overusing the key and getting it cancelled, that would =
be
> >> a pity.
> >>
> >> So, yes, the situation with teddit, libreddit (l.opnxng.com btw) and
> >> other Reddit frontends is a bit complicated, but they still work, so I=
'm
> >> not complaining. :)
> >>
> >> Best regards
> >>
> >> Rastislav
> >>
> >> D=C5=88a 26. 3. 2024 o 8:43 Jace Kattalakkis nap=C3=ADsal(a):
> >>> Every time I try using Teddit I get a 403 or 429 though, is there any
> >>> easy way around this, or?
> >>>
> >>>
> >>>
> >>> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrot=
e:
> >>>> Hello,
> >>>> for reading, I'm personally using the Teddit frontend, which should =
work
> >>>> well in LYNX as well:
> >>>> https://codeberg.org/teddit/teddit
> >>>>
> >>>> My favourite instance is thisone (since it's usually free):
> >>>> https://i.opnxng.com
> >>>>
> >>>> Best regards
> >>>>
> >>>> Rastislav
> >>>>
> >>>> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
> >>>>> Hi All,
> >>>>> previously, reddit worked well,  at least for reading posts, in bot=
h lynx
> >>>>> the cat and links the chain.
> >>>>> Now, even elinks produces a blocked error message, my guess is that=
 the
> >>>>> reddit community is not aware of Linux and these tools for access.W=
ondered
> >>>>> though if another tool already exists that might be a part of a she=
ll
> >>>>> infrastructure?
> >>>>> With appreciation,
> >>>>> Karen
> >>>>>
> >>>>>
> >>> --
> >>> You received this message because you are subscribed to the Google Gr=
oups "blinux-list@redhat.com" group.
> >>> To unsubscribe from this group and stop receiving emails from it, sen=
d an email to blinux-list+unsubscribe@redhat.com.
> >>>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups "blinux-list@redhat.com" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an email to blinux-list+unsubscribe@redhat.com.
> >>
> >>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

