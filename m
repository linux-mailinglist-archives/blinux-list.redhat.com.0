Return-Path: <blinux-list+bncBCVPTHE7K4IMZKGAVUDBUBGIZ7ZHW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 9143383998C
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 20:32:29 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-42a1b8a2624sf57918801cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 11:32:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706038348; x=1706643148;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IKTtJm9+GCM5IMQomloYWWW5EC6XjmWs4SyCXJek+zk=;
        b=p1iR5713QblBLGG4iIxqrcPempb3laDL629/ItQxu7BfFo+AeNTusiXZByEkoya+TG
         tHWtwC5xyDNjmnnBS+/j75n/37+WfXmFr471klek5RHqaR6P93tV5+v7N6nRNsC07rZj
         DFzv+oQTmfIkH9AgyZytdH5rJ96IwbxTkdYIm86I0s31RUYskq4xzrTWUj2QnOmPF7T5
         MUSBrN4b2ElrM9Z3/56r2Iy76Nr/4lCzzV53giCGmW7Gp+oXM+oeq4OmRZun/GNsjTkQ
         IBly0fhokclzk4fK5RD0fis6k6ICD5TFQcUcSzeEoO5eRUaRpXsG9u+GMqfvx0L8bmsP
         C2og==
X-Gm-Message-State: AOJu0YxLXtU2IStdzMIjjdn4j0/HJet79rYrjymgJIWabSoI/YyUQdRx
	v3PvKU89aScDp87NqP2T2j4eajd0EN4LuK8TRvIK78T10cjxHGKB4pGN0sYmYVA=
X-Google-Smtp-Source: AGHT+IEht68RglO7rXUXIzbyoZrkWfWT8fLgHImtk0isY8EWDF6ZKxwlY4wQv/0ydFDQXJctqU4Afg==
X-Received: by 2002:a05:622a:28a:b0:42a:441b:ca93 with SMTP id z10-20020a05622a028a00b0042a441bca93mr1379197qtw.36.1706038348398;
        Tue, 23 Jan 2024 11:32:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5405:0:b0:42a:30ba:32bc with SMTP id b5-20020ac85405000000b0042a30ba32bcls4310557qtq.1.-pod-prod-03-us;
 Tue, 23 Jan 2024 11:32:27 -0800 (PST)
X-Received: by 2002:a05:620a:55b7:b0:783:6332:dfad with SMTP id vr23-20020a05620a55b700b007836332dfadmr6875191qkn.134.1706038347427;
        Tue, 23 Jan 2024 11:32:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706038347; cv=none;
        d=google.com; s=arc-20160816;
        b=ztgd9NWYTMsvBe4UHewv+Whc3PMJDi/MGS+Tx6IHxrMlEulnoWvjThXJMgzjacyWfD
         HrXVmZPWgZz2glCfkF+n2/KAnl8D81/aYDllO+vgrJCLa9adGESSDm0KwXjMklDXmahE
         nL1KgyStD/icDIi+oM9U1Yy0Kob2+Q9aoBQAxPgbvQlWw9ywlg0Zv7XHikC6IUhFp4u1
         Y5ogBnKQCWKpmpSxzMZr3aGXJcwdksu3Wyu1VlxID1hhxTtmy61ygV8gWjGc4NxlLEU+
         OsesTVguB0Nj6dIHH6vH3ABlr57S2HYf5HXoun9UwsPjwD5QNnOqcWE4mV2+GqenO4KK
         gHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=IKTtJm9+GCM5IMQomloYWWW5EC6XjmWs4SyCXJek+zk=;
        fh=Z7cEUkx4kEbc8XULiG2w4dphWKeARu/AOPBpFDEz6/s=;
        b=NukM/vR7A6CDZumajkLDrQJesr5ZIbknMDDwRjhyHvfOndsIcGrfqEuAtCZhictVOH
         gN8vvvmbC76j5xQJbUIJypW7GBxxIMzmL7sKrs4CFwg2aGR0Z1uVqVu5GaxcXPwEjr5P
         KMfc24M4qJV8N3rBcXelNmY3J8Zjyu5gBWuvNNR90gXAtJbbN76J5O81Xf4jKbow5180
         /y8NrMjWKwTTPfxQnVQqFAV1Eb9q9zNU1xI8aGdOaA3jX1p3xEHlaa2c/pZUUwQ//5cs
         1Hwh67ByA0fvZY/Xs4TU8J4FsvvS+zQDWTuO55EYFkI/6LHa4x6hSZrY7nu/udwlyplQ
         oCTA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id m20-20020a05620a291400b0078386bb4b8fsi9309068qkp.689.2024.01.23.11.32.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 11:32:27 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-277-T8Msub22Np6LVL_-OOu_Iw-1; Tue, 23 Jan 2024 14:32:24 -0500
X-MC-Unique: T8Msub22Np6LVL_-OOu_Iw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 950DE185A780
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 19:32:23 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 91D1D5012; Tue, 23 Jan 2024 19:32:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B59151D5
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 19:32:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 639112820B73
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 19:32:23 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-442-CI6tOrIPMJaAc-lbXiSKOg-1; Tue,
 23 Jan 2024 14:32:21 -0500
X-MC-Unique: CI6tOrIPMJaAc-lbXiSKOg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 83D1340508;
	Tue, 23 Jan 2024 14:32:20 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 3FDB21001DC; Tue, 23 Jan 2024 14:32:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 3F54C10008A;
	Tue, 23 Jan 2024 14:32:20 -0500 (EST)
Date: Tue, 23 Jan 2024 14:32:20 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Nimer Jaber <nimerjaber1@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1012303559-1706038340=:336098"
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
--1949452079-1012303559-1706038340=:336098
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

While that seems to be far more than I need, I am confused by something?
It references a braille keyboard, but I am in the majority of the sight=20
loss population, I do not use braille for input.
Does this device have an actual  button based input method?
Karen



On Mon, 22 Jan 2024, Nimer Jaber wrote:

> Hello,
>
> Yes, check out the BT Speak. https://www.blazietech.com/products
>
> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <klewellen@shellwo=
rld.net>
> wrote:
>
>> Hi all,
>> Let me spell out what I mean.
>> a portable Linux based in terms of being  open source device that can
>> manage at the very least text files.  Something easy to load files into,
>> as well as if possible add an open source edition of speech synthesis?
>> Some work  being done  on dectalk if that resonates.
>> Does such a device exist?
>> Karen
>>
>>
>>
>
> --=20
> Best,
>
> Nimer Jaber
>
> Check out and subscribe to BlindTechAdventures
> <https://www.youtube.com/blindtechadventures> in podcast audio form on
> YouTube for the latest happenings in tech.
>
> You can follow @nimerjaber on Twitter <https://www.twitter.com/nimerjaber=
>
> for the latest technology news.
>
> Thank you, and have a great day!
>
--1949452079-1012303559-1706038340=:336098--

