Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1BB446FED
	for <lists+blinux-list@lfdr.de>; Sat,  6 Nov 2021 19:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636224693;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j++BIKrySRjd9oFSsRxzdGaNXrZRHIJG9znmKk1M7xc=;
	b=E3XI9mxWzQs2067LfUDOs/yDOl7Nbf8Nc1vf2prnLDlPIQsfkTvSSIzTYovVK0ppQ8AHPO
	N+1Tc/nYU0L8em6+7V3ymh+OyfrcYz8AsPUSEyKQqGpCSKJ47njZh5rBchXvBKZgtsMl6f
	OmShrFC5FhK9BU7Y2UMDenKdkCz1uyc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-uZShGY1wOfqJWhhbbrX9zQ-1; Sat, 06 Nov 2021 14:51:29 -0400
X-MC-Unique: uZShGY1wOfqJWhhbbrX9zQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EBC0102CC41;
	Sat,  6 Nov 2021 18:51:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE67B108A2;
	Sat,  6 Nov 2021 18:51:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 161054EA2F;
	Sat,  6 Nov 2021 18:51:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A6IpB2a019661 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Nov 2021 14:51:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EB8684047272; Sat,  6 Nov 2021 18:51:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1F6A404727D
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 18:51:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C55D2858EFF
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 18:51:10 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-143-n2IopoRjN6m0qKRTJwOprQ-1; Fri, 05 Nov 2021 20:45:10 -0400
X-MC-Unique: n2IopoRjN6m0qKRTJwOprQ-1
Received: by mail-pg1-f176.google.com with SMTP id n23so9631158pgh.8
	for <blinux-list@redhat.com>; Fri, 05 Nov 2021 17:45:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=qMrUjCE0PxXsGl0UptY9DSzgU9Ds9+xO9Hx4XF4P+C4=;
	b=p1i7CixkNkuEAhR/IIY2vHudTbZow9JDrFAMzitW0we0qIt2gG6mHhk/USTw1RRZjm
	4wrUniHb7WeiXBexIrB3FfZ1ICQ0/mSMPnvIoJ3yXwHQ6k54Jn8/23/SirqGIAJuWTwh
	Tz2ng+uTVmfIB+scA9D5SmjI9aYDw1Jq93E0DEwbQvu0RUrIKKdzTz1VfYuytRxpcY7l
	pVj0KI87tDKGC9VGqLd8k1Dfovj0UGMSoWvtomtSUsWpX5ZMQLtQI7J8dudceNy/EmAM
	62qfL0RfvgKpI+2pb+m+2xR3MsyhSo8q+S08ech8DTQXtf/eA4OpFqqNmBBaJJRNC0uX
	kx+w==
X-Gm-Message-State: AOAM533UDbm7WlxPlfP9rQOkMSVEiu5kz7vGUmirUIXmfcQJml99fK8d
	1TFf2cGbcCL3Kn/tqlbivA8yvnr/vqcEgSr7BaKTxUXEwHA=
X-Google-Smtp-Source: ABdhPJxaZrsZYPd5Cl53XDMShH87vC4KhgCVd5VE59y0PCvqIsiqgdn0lgJxpgTGj+SYAIUEb1THTAKUQcreG2l7vBQ=
X-Received: by 2002:a63:6ac8:: with SMTP id
	f191mr46915611pgc.386.1636159506535; 
	Fri, 05 Nov 2021 17:45:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:7244:b0:41:f915:42f2 with HTTP; Fri, 5 Nov 2021
	17:45:06 -0700 (PDT)
In-Reply-To: <66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
Date: Fri, 5 Nov 2021 19:45:06 -0500
Message-ID: <CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
Subject: Re: How to get speech in a console session?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did use speech in the installer, and Orca came up right away, but
speakup didn't work when I sswitched to a console session.
I read that wiki page, edited my /etc/modules file, and speakup still
wouldn't work.

On 11/5/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi,
>
> Debian has a detacated accessibility page.  The wiki page is
> wiki.debian.org/accessibility <http://wiki.debian.org/accessibility>.  This
> has info on how to get speech both in a text interface and a GUI.  As a side
> note, if you use speech with the installer, everything will be enabled In
> the installed system.
>
> Matthew
>
>
>
>> On Nov 5, 2021, at 4:28 PM, Linux for blind general discussion
>> <blinux-list@redhat.com> wrote:
>>
>> I already have espeak and espeakup installed. I tried running fenrir,
>> but I got the following error:
>> play WARN alsa: can't encode 0-bit Unknown or not applicable
>>
>> On 11/5/21, Linux for blind general discussion <blinux-list@redhat.com>
>> wrote:
>>> If you start the install media and press s then enter, you'll have
>>> speech
>>> during and after install.
>>> Devin Prater
>>> r.d.t.prater@gmail.com
>>>
>>>
>>>
>>>
>>> On Fri, Nov 5, 2021 at 12:37 PM Linux for blind general discussion <
>>> blinux-list@redhat.com> wrote:
>>>
>>>> So I'm new to Linux, and I'm going to be trying it out for a period of
>>>> about a week or two, to see if I could use it as a daily driver.
>>>> One thing I'm not sure about is how to get Speakup (with either
>>>> Espeakup or Speechd-Up) working.
>>>> My distribution of choice is Debian 11, by the way.
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
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

