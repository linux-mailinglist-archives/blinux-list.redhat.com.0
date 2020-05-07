Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7604E1C9588
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 17:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588866865;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5jPjzrpZQfUqwtFxqkM4cezVEAWcW6MB90Co17FcR1o=;
	b=eCG18k42WpPYlLEXWogtEnaJrsjChO4sWrkcVcAj4bvDK2cLciR0WxcFFI8g1Ec7Y3+Jc/
	gj6rgoyTa39rwJor0eyodFV/3rQtx9ud/kkYcWDQfYkTFGm1IIconwEptp3LmGXXRjZ6VC
	aVOQsMwOQIQwdBvcq+asI2kewjhQ2Jo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-Sho3ib4aP-Sq4_GyRcfYsw-1; Thu, 07 May 2020 11:54:23 -0400
X-MC-Unique: Sho3ib4aP-Sq4_GyRcfYsw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CCDE100A626;
	Thu,  7 May 2020 15:54:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60E9D6ACE7;
	Thu,  7 May 2020 15:54:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE3B94CAA0;
	Thu,  7 May 2020 15:54:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047FsB9p003506 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 11:54:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 436AB113F84; Thu,  7 May 2020 15:54:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FC12113F98
	for <blinux-list@redhat.com>; Thu,  7 May 2020 15:54:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50040888552
	for <blinux-list@redhat.com>; Thu,  7 May 2020 15:54:09 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-315-AJ1XtDXXMRGbjvaLx-ICrQ-1; Thu, 07 May 2020 11:54:06 -0400
X-MC-Unique: AJ1XtDXXMRGbjvaLx-ICrQ-1
Received: by mail-oi1-f172.google.com with SMTP id t199so5595233oif.7
	for <blinux-list@redhat.com>; Thu, 07 May 2020 08:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=kgtemo31VHgisGP9caAehlz4ZSAX61vZni25wyvtjXc=;
	b=ThyrxvwluMQP7LKbt5TzBqqyWgdToIrCTeeNnNUJuPCr9EEu5hVd3CmIXpYZQU9Vy7
	bC9VnX/IDsWFtX8O+BBfmdKSHF4xpBzKVBzhWB2DLhCQD1PanVWF4iRuTSKE+fRAsRXI
	nSxuMAhK/XCQO7JP1tEyhqqKIK0bOrap9HvfXjJJGQs7PGXTwRQvPHsxMwHdpHo+/crj
	YKyi6uAn3/lPp/cHK3Pp3zWdDq6IaXU3Ocx6ZN6SvfZK5fxBA/6zQzl+GGdF13cdM3y/
	7Ot0uqhQ1qC+hmIF80clGy1UxFrHVuWxVm9DOTuJgwozp+bcEklg63IZlb8sZ1/56azT
	wW2Q==
X-Gm-Message-State: AGi0PubeEK/uzGZbRpdgmJm/ELOgPJ5WXCj6u8b4w6fOrUOz65LhOg/u
	JlogWRYO/QoUvu4awoLAGIymsiTn
X-Google-Smtp-Source: APiQypL6Iq5PJnNeElyohFiGdBOQ/MM9ELhLTiabo+PmHf2JNZb24hrLkOkmKQzljuH4NUs5ng0EAQ==
X-Received: by 2002:aca:4ad6:: with SMTP id x205mr7059831oia.138.1588866844772;
	Thu, 07 May 2020 08:54:04 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:1d23:5c2b:508b:85ac?
	([2601:3c2:8200:9360:1d23:5c2b:508b:85ac])
	by smtp.gmail.com with ESMTPSA id
	i10sm1553380oos.28.2020.05.07.08.54.03 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 May 2020 08:54:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Anything besides vanilla Arch?
Date: Thu, 7 May 2020 10:54:02 -0500
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
Message-Id: <513190A4-A93E-44D6-B032-9F0484D0988C@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047FsB9p003506
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What is the android distribution that works on a computer?

> On May 7, 2020, at 9:42 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I have Jenux installed and you get a choice of gnome mate kde or base
> type installs with that distribution.  Oh, I forgot there's also a
> couple android distributions it will do for you too if desired.  The
> android installs have talkback for a screen reader.
> 
> wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
> wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
> sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
> On Thu, 7 May 2020,
> Linux for blind general discussion wrote:
> 
>> Date: Thu, 7 May 2020 06:22:56
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Blinux-list@redhat.com
>> Subject: Anything besides vanilla Arch?
>> 
>> Hi there,
>> 
>> 
>> 
>> I have been running Ubuntu and Ubuntu spins for a while now and am looking
>> for something else for a change. I have installed vanilla Arch before, but
>> that was when my system was only running Linux. Due to the work I do, NVDA
>> certified expert, Training and tech support, et al, I have to have a Windows
>> instance to boot in to. I am not comfortable installing vanilla Arch on here
>> at this time.
>> 
>> 
>> 
>> Are there any Arch based distros we can actually install without sited help?
>> 
>> 
>> 
>> Warm regards/Groetnis/herzliche Gr??e,
>> 
>> 
>> 
>> Brandt Steenkamp
>> 
>> 
>> 
>> Contact/Kontak/Kontakt
>> 
>> 
>> 
>> Twitter: www.twitter.com/brandtsteenkamp
>> <http://www.twitter.com/brandtsteenkamp>
>> 
>> 
>> 
>> Skype: brandt.steenkamp007
>> 
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> -- 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

