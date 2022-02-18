Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 749AD4BC2DA
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 00:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645226667;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9f9CXmbRKSVfb2fWhOE2R0EPk9+oAR0ePgaDEzHmc2M=;
	b=EF7fEtUqihF1YD+mcI6e1JdP7X6nWFd4lX9QEt2qdMvMEzR8n9C7bNpns+7bT/5RwlLIdq
	BEjyQal9KvNlcNC9Y7sj5r5tFCBYCNonZhfdsnZOexqEZ/mhL7d9dbfplWm2Hj4TpavIpg
	96PrJ0JdM0j/SXrODKD9CKqWyPsn5MQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-504-McPXPJfbOhii4FLsb2X-yQ-1; Fri, 18 Feb 2022 18:24:23 -0500
X-MC-Unique: McPXPJfbOhii4FLsb2X-yQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A0A1801AA6;
	Fri, 18 Feb 2022 23:24:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D12BA519B0;
	Fri, 18 Feb 2022 23:24:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2D28C1809CAB;
	Fri, 18 Feb 2022 23:24:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21INNvoE016511 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 18:23:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 24881407DECE; Fri, 18 Feb 2022 23:23:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 207B7407DEC3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:23:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07C4F8032EB
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:23:57 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-636-FWQtK92IOWGajw5ZkX_hKA-1; Fri, 18 Feb 2022 18:23:54 -0500
X-MC-Unique: FWQtK92IOWGajw5ZkX_hKA-1
Received: by mail-pl1-f179.google.com with SMTP id w20so8286734plq.12
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:23:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ie7lFOkHPZymiuekPzVfegXc/vQRWZvx19xEz1SBQuw=;
	b=FW7kScaPrU5u0Ep5bzQGHc7FAjz7QIB1N6mMrE5om8S/xkGqVdGwZywFOmuJ0NrdXs
	XBqoIgbDeZCaZaspul7mqMQ3Z4+HCW8weXR44r0JMFQExv1NETH8uEEke5jXAYAsRfug
	1MTVZcSUUcl0z3dWbO1+WCg5BKSVmf8FmRSCoPYW41GMs95I4SQPZ3p2D7ZDUX/2/f/A
	2RNiB5/DRnFZGJhQ6pSU58lxNSnYSVtt85fYsJrPyWRFZ574V/B92i0A0IGSwks0nGyY
	b1sLZvxua18d7PGRUtP42oTkYdn+225HvqrgdAj/nIYQ0bgy796eO7c1tVRhe8/3QhBZ
	IUYw==
X-Gm-Message-State: AOAM532qnKOBJo4VuXFvdShsZqa6QvAYkUuTjSlqeZDNvsg/rEBDXkrh
	ataah/mnNxW7xnqGFOiYmXzNlyGt3fOW9yAnokT7J1rH
X-Google-Smtp-Source: ABdhPJzDVlMteuJRnmZaYWUgRzMJR0/Ill1tD+rA3csuXyM1kUTAsgoYo3DLbdAGTNbBzS4ktXuHLkU8nehD3GFmVxY=
X-Received: by 2002:a17:902:edd5:b0:14f:9044:19f2 with SMTP id
	q21-20020a170902edd500b0014f904419f2mr314746plk.74.1645226633369;
	Fri, 18 Feb 2022 15:23:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:de18:0:0:0:0 with HTTP; Fri, 18 Feb 2022 15:23:52
	-0800 (PST)
In-Reply-To: <CAGJxbF43Nd1NA70dWmt7=2qBQL3EE+Hwz4SwqHehodx1+54sMg@mail.gmail.com>
References: <CABKqQvG=xfVhpLGgJeR1-+HbtNUrzc=U2UbPDqjfLbuWYYax0w@mail.gmail.com>
	<CAGJxbF43Nd1NA70dWmt7=2qBQL3EE+Hwz4SwqHehodx1+54sMg@mail.gmail.com>
Date: Fri, 18 Feb 2022 17:23:52 -0600
Message-ID: <CABKqQvHw7SB44FhQTMEvns7ME+dTfaNjxvTPoZF-fq3HGB3cVw@mail.gmail.com>
Subject: Re: Simple code editor that is better than Jedit?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What about like stepping through code and observing values, without
relying on print statements?

On 2/18/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> VS Code can do much of that, except code folding. Only Emacs with Emacspeak
> can do that accessibly.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Fri, Feb 18, 2022 at 2:42 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Emacs made a mess of things last time I tried installing emacs and
>> emacspeak.
>>
>> Anyway, I just need a few things, like the ability to jump to function
>> or class definitions, or pull them up as a list and move around my
>> program like that.
>>
>> Are there any simple, accessible code editors?
>>
>>
>> Amanda[0]
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

