Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8D9BC1C953B
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 17:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588865919;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vQfWL4ArVpPrBBlPA9NmqPgcnGsqa1S5YHMSXt8q33g=;
	b=IgeNT3ljeWPDQfuU2CaAL3IANm1fnuvsOReHXhD0X6HMV9c1V/xYqdiHxk0ACQIH5C0G4b
	kdx3E5yKMAa+y9tPT7izwrb6PZqQyMGAyGO/WDLXvUyGTb6UHeWokpsgJTssx7ka3RA/GZ
	/tEzFfW5s4cXBSfcxpsno46nxdg1W34=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-337-mEGvqzfiP3yUBHJZyB4kQg-1; Thu, 07 May 2020 11:38:12 -0400
X-MC-Unique: mEGvqzfiP3yUBHJZyB4kQg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41BC1464;
	Thu,  7 May 2020 15:38:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D46DC5D9C5;
	Thu,  7 May 2020 15:38:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 644564CAA0;
	Thu,  7 May 2020 15:38:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047FbuWN001776 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 11:37:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F3309112334; Thu,  7 May 2020 15:37:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC2A113F7A
	for <blinux-list@redhat.com>; Thu,  7 May 2020 15:37:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC46C800A13
	for <blinux-list@redhat.com>; Thu,  7 May 2020 15:37:52 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-187-0uciTZ1nPn21IM4K_mnoJQ-1; Thu, 07 May 2020 11:37:50 -0400
X-MC-Unique: 0uciTZ1nPn21IM4K_mnoJQ-1
Received: by mail-ot1-f54.google.com with SMTP id m13so4816930otf.6
	for <blinux-list@redhat.com>; Thu, 07 May 2020 08:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=2Cd48INIBmhUFzdCRMD7+qEQ4d41yQ5/0EPpejCzPeM=;
	b=k5faxkRWooy5Gm+CwVu08dEsWGTK0SexMgMU8sI8yqIUXYbarHeLIjLtZDjNl0KLTv
	M0oiOPkuj2OQmVnPT7/3u4qiF7H0cqircq72hZT2soPKosRLEkd9UnE7LyODcB+Z36xJ
	KWGGi9p5RwKzO2PY+SOgkZfpXKEOKsCgAR9zIthusGQqFNtbDjv6u1V/aLJkBFGJOeZ6
	WG5nD3bJzWoQXqhBTPc84bX/xW6cj6ehFhg5wdMDLL4cj7XUDn15FDpl9Adu8RZwnrNw
	dlVuO1VoLYycdCOWx/6m6dM0jDW6iq9DiptmtVcU3gq+MRZxNWoQXNfFHMPKNuQ+uWIk
	DiWQ==
X-Gm-Message-State: AGi0PuaDeuCdmSYxkOOQ03L8MDlEVLejSXSI28dxtz5bXYPfG+5dHfYc
	A71H/BsvgmIjp8RyQnuBN96IaF1K
X-Google-Smtp-Source: APiQypLtF1udJdBZTlvAk2Iv0hQ5xoxipqwWt9kA5JRPjkuIxIxCDJRmlJu03LRrTMOb9H5I7ARSPQ==
X-Received: by 2002:a05:6830:1241:: with SMTP id
	s1mr11190288otp.119.1588865869000; 
	Thu, 07 May 2020 08:37:49 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:1d23:5c2b:508b:85ac?
	([2601:3c2:8200:9360:1d23:5c2b:508b:85ac])
	by smtp.gmail.com with ESMTPSA id
	m16sm1391655oop.40.2020.05.07.08.37.47 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 May 2020 08:37:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Anything besides vanilla Arch?
Date: Thu, 7 May 2020 10:37:47 -0500
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
Message-Id: <C7AD6A0B-2C1B-4468-A337-812062331F24@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047FbuWN001776
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Is Jenux with a talking installer?
I had not heard of Jenux.

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

