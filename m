Return-Path: <blinux-list+bncBCVPTHE7K4IKTSWBVUDBUBATAO5NM@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 77259839E1B
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 02:17:31 +0100 (CET)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-598c21f698fsf6238689eaf.2
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 17:17:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706059050; x=1706663850;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eYbxA5VtH7f3qkFF7GeYrqbTv9JCawrUYQPvff2Xsd8=;
        b=Q7a3OGPbTft0f8Gvr3cFtTjyg5U9M+8wL2rwXUFIKm32TDod+7V2Lsb0uXvwhZo1i+
         jKsr5g7TsimA+H7gsQ4u8CgA0vcrPeQF3cJaDkM5uugc7jOe/1hYv0pvzxBRVsz8EUEJ
         t2iG9Pl1LSPDl/4xRM0Cv1EcozaJC+TZQ9fbWRQLsL6NbaUl56MTXPGIhJ84Vh+EkdP5
         GeT+E5rwUh+6kYLC6txoY7901toX2cXkmgcZ155pqSqdJtT8G8ZYoTU2ao/oZcqgRDTV
         cYFxO39N/dbKIDJFV9ptnqSiA5CltphKwTklNtixGnXRpaLFYNzVaBvgw46j18Ku1L5G
         25OQ==
X-Gm-Message-State: AOJu0Yynr5mBxuVf9nPfD8GCbdq3p6ykRvesHnuji9OHC9fZXFFbcuv+
	Y4CNa+70GDhbJX8JJ01ZJj2/nr9AoXN3t4YzZcWCC6wiJBU9rkiNhSQ0FMsd3s4=
X-Google-Smtp-Source: AGHT+IHFGdWp+DyrsyKeNtHgOcpn8UMK+bbSNyIvDTH54cIy0G5wKZ087bM+npGHFxvFPLX2vYzNlg==
X-Received: by 2002:a4a:c884:0:b0:598:7aec:4753 with SMTP id t4-20020a4ac884000000b005987aec4753mr793141ooq.10.1706059050283;
        Tue, 23 Jan 2024 17:17:30 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5548:0:b0:598:cad2:823e with SMTP id e69-20020a4a5548000000b00598cad2823els3697480oob.0.-pod-prod-09-us;
 Tue, 23 Jan 2024 17:17:29 -0800 (PST)
X-Received: by 2002:a05:6830:110e:b0:6e0:ba7c:420e with SMTP id w14-20020a056830110e00b006e0ba7c420emr994939otq.5.1706059049421;
        Tue, 23 Jan 2024 17:17:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706059049; cv=none;
        d=google.com; s=arc-20160816;
        b=yTj11yCep1htalv3MZxyX+UjVx+LcmCLjoGc475ejNp0oCka6GnCgZ8PZz3a2EdNbs
         WuEfw1cRoxnlNklipRV0WOeiXacWr4B6GtlIdzGjNMbuYJEiodA7LGrb7dJcukzQHhe4
         olg682J+AEe5X/R13EH22rlcvfv/hgjwziFVR/EkrMwJWn6vbtdvYuEj4vq468BX7ETC
         g7XJEAbb+KeoaeywWZVLy57DZ39in0/WvOnSDeODzBjV9m0wJPQFAu3RTF5lq4EqqLxp
         t3W6NrPFQhZwEqclciG8sskSzq84rkbX60naFhldkv6LCwyx79ho0v/2UQwDcUoLEqMj
         GnfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=eYbxA5VtH7f3qkFF7GeYrqbTv9JCawrUYQPvff2Xsd8=;
        fh=Lx4MOYO4mpDyt4+6TeTm6l1x7cdDi7Qd5qJ4hzqQLGY=;
        b=bf0s9+Z6N0rjfQCPk9oR/Ac/3VOFeVv5Xc1rA/GdmjnEo3PJ2dChEKvOWc2hei6a7q
         GJhhHtXVrok8Q0Iij6GDNTro31GzZDYuLZNMng7E6Y9cqYSW9irbly97IsU7oUUMwX3w
         HQGtM7iDMWaSUIKQEeMVqJYMedoiLcenQXfv+LxOf2Ww+KGLZf+yDUILhL8GU+wLCWzQ
         M6COFglNhV37334e5pQ0206/oZhlxZ/CBCfH+kwx/ufwouMd4//0aVvdH8Lai5qHeT9v
         k+G0/VnkzkusMo0BcMT8J4V2gtujniO3YVjjFskPkIeuHFRSBeZQYylhjc88za1qxxyk
         tf9A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c15-20020a05622a024f00b0042a0b35c01esi9067644qtx.231.2024.01.23.17.17.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 17:17:29 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-398-Euk7q95HOt2v65J4pzGSKg-1; Tue,
 23 Jan 2024 20:17:28 -0500
X-MC-Unique: Euk7q95HOt2v65J4pzGSKg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D96D13C14946
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 01:17:27 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D63502026F95; Wed, 24 Jan 2024 01:17:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE7F02026D66
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:17:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF82984A292
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:17:27 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-520-y13x7iyIOgOf95JSzf-Ctw-1; Tue,
 23 Jan 2024 20:17:25 -0500
X-MC-Unique: y13x7iyIOgOf95JSzf-Ctw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4264F40508;
	Tue, 23 Jan 2024 20:17:25 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id F23BB1001DC; Tue, 23 Jan 2024 20:17:24 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id F1EF910008A;
	Tue, 23 Jan 2024 20:17:24 -0500 (EST)
Date: Tue, 23 Jan 2024 20:17:24 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Kyle <kyle@gmx.it>
cc: Nimer Jaber <nimerjaber1@gmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <db5491a9-20ad-424b-8faa-7b5e69ca1a28@gmx.it>
Message-ID: <Pine.LNX.4.64.2401232011010.339927@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
 <db5491a9-20ad-424b-8faa-7b5e69ca1a28@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
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

I cannot use Linux, no driver exists for my synthesis.
Further, I asked specifically for Linux based e-readers that can 
incorporate dectalk speech, because I already know other synthesis that I 
have  tried can cause the physical harm.
The idea of claiming  that a device works  for the blind as a whole, but 
providing  only one means of input that 90% of the blind do not use,  is 
frankly stunning.
I am being specific about my needs to avoid exchanges like this where 
someone shares that since something works for them, it will work for me, 
when in fact it might likely put me in Hospital.
Kare




On Tue, 23 Jan 2024, 'Kyle' via blinux-list@redhat.com wrote:

> The Raspberry Pi 400 I mention doesn't need to be hacked into anything.
> The board is inside of a regular keyboard. It's not the full 101-key
> keyboard like I use on most machines, but it has 78 keys and has an fn
> key that when held down turns the right side of the keyboard into a
> number pad. Yes, I do use an external battery pack that connects to the
> power, but I carry the whole thing in a very small case that has a
> pocket on the outside for the battery, the very small USB sound device
> and a pair of small speakers or headphones. It is far less cumbersome to
> carry around than a laptop, and is even smaller than a tablet. And just
> to be clear, this is no "note taker" or e-reader, it is rather a fully
> functional computer with a standard input interface that is easy for
> anyone to use.
>
>
> Stormux isn't a hack either. I use the MATE desktop on it, but you can
> also use GNOME, a window manager like I3 or a regular shell if you like.
> It's completely up to you, and the interface that makes all this work is
> menu driven using arrow keys and the like. Yes, it does come up talking
> so that anyone can use it without seeing it, and that makes it highly
> configurable with little stress. It also took little time or effort to
> get DECTalk speaking on this machine, though I believe it comes with
> RHVoice out of the box, which some people feel sounds a little better,
> especially at high speeds. I personally have come to love DECTalk over
> the years though, and find that its rather newly available source code
> and lack of licence file serial number stuff is a great thing whose time
> should have come long ago, so I took the time to get it working, which
> is actually a fairly simple and fast build process.
>
>
> I hesitate slightly to say too much about this in public forums, but I
> think charging a ridiculous price like $800 or more for something based
> on a $75 Raspberry Pi that has a braille keyboard with only 7 keys on it
> because it says "blind" on it is criminally insane, and I personally
> won't even give such a device a second look. I nearly died of sticker
> shock when I saw that price, especially since I made a Raspberry Pi 400
> that is built into its own keyboard do more stuff than the base version
> of that thing can do for less than a tenth of the price of the pro
> version. I'm sure someone will pay that much for something like that,
> but it most certainly would never be me, and I do know how to read and
> write braille.
>
> ~ Kyle
>
> -- 
> You received this message because you are subscribed to the Google Groups 
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>

