Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 5B8F9210390
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 08:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593583379;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6qk7nSEjX3Jgrljgs/N/uvQQOzX3SRQXGsl+UqCZ2ys=;
	b=ZNf5kOI0VFo9zXs5a+4hmNssSq2I8J3+FaiXggI0pfRLtUdG6+Vr2nTUb5vX28a4s5gb2b
	SZr3XLsVIpmM6eAEcZPW/sYCsmJpR6/dSp+k+22KS8fuiRm4RvyzsisjLmQrN13u3Ob1gh
	v7l1CDFFroiiiKX14fT4XcpjqSQruhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-275-z9DnTK66NYC5q8kIQDPdGA-1; Wed, 01 Jul 2020 02:02:57 -0400
X-MC-Unique: z9DnTK66NYC5q8kIQDPdGA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7DDD10059A5;
	Wed,  1 Jul 2020 06:02:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 750FD101E666;
	Wed,  1 Jul 2020 06:02:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 195A41809547;
	Wed,  1 Jul 2020 06:02:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06162gis015671 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 02:02:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27D12105CDAD; Wed,  1 Jul 2020 06:02:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02028105CDAC
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 06:02:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DF51318A6660
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 06:02:39 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-189-nwTE6TDbNlaoaR1tp6fqOQ-1; Wed, 01 Jul 2020 02:02:37 -0400
X-MC-Unique: nwTE6TDbNlaoaR1tp6fqOQ-1
Received: by mail-io1-f54.google.com with SMTP id i4so23690894iov.11
	for <blinux-list@redhat.com>; Tue, 30 Jun 2020 23:02:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=/EfayNtkVXnvAVU5i4C4EmgA6fSQlC/2Ji7Bx7tHB40=;
	b=HLPWKhr7j61I1Plfyzi2y37GfrbE/iWM1EpLELrYeMaExZEFVZSloKzYm2JZwTj2yP
	Exx5ebCvJLBc4haZt+1ySlYX+1g3bqOxnGjHBPeRwAF93AVFJdYs0o47vTkFbVWnHBF6
	fJhMOhTUrv19oUiJxqiRpDkXbJcDzBv42dtfPNsWo8Id1CPPe+7RI/WU/H9KA06dWWl4
	kZxtFeoZaDm8/ReYSW39scYGUJ57bo6sA0ut09XPl4hKWV/6pF1Tp72ufXrp5vfYPaUo
	o/jJ1IC1Vzqj2xTEnMyo4memL7Sg2nha38zXVoZxtQGXbQMM73bB+XN+WcuzVuo/7pJb
	Q7rQ==
X-Gm-Message-State: AOAM5302sQZyNKYzBKPJG5CfvGWTFRULb8zZJctgHENA/t5Gjw7+IVmW
	RjFCI38Zc8fCOUmpKUeob7ofkrMUMDdhJThg+6jSanyj
X-Google-Smtp-Source: ABdhPJxgLqtlcwGBUBDErKUAAx5cNbcVhhxg5HGcJicxFqjev//25s/uVHTqStrEihVFsaq5GhLs0KF/FrNKav5hLdQ=
X-Received: by 2002:a02:6009:: with SMTP id i9mr25970362jac.78.1593583356434; 
	Tue, 30 Jun 2020 23:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
In-Reply-To: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
Date: Wed, 1 Jul 2020 08:02:26 +0200
Message-ID: <CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
Subject: Re: using orca wile using jack
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

One option is to use pulseaudio and have pulse output to jack. This only
works with jack2 with dbus support, and you will need the pulseaudio jack
plugins (in arch this is in a separate package for instance).
You then start jack with "jack_control start", after which you should make
sure jack is selected as output sink for pulse.

Regards,

Rynhardt

On Tue, 30 Jun 2020, 19:24 Linux for blind general discussion, <
blinux-list@redhat.com> wrote:

> is it possible to use jack wile using orca? How should I configure it?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

