Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8C7172DC9A5
	for <lists+blinux-list@lfdr.de>; Thu, 17 Dec 2020 00:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608161722;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2RzK7bnePusymqCmrc70pgFUOt7E+fuVI2jUh/1DvTE=;
	b=LGyq0z9dfpyI4YK/9+U1Vg3GCfJI1kEkgqQA31sFAYVFk5OWhs6it/yBC7WhaLCXSazT7R
	x+ykLcq6ZM1yyTs9Gh0hT3ecc8lHs/NoJXC+xvoHcR+aTj6iuJkJXwtrEQT+KAD9TwadQY
	KoAkaRZUEsHSW0QaC7rrMYf/DQ9q6l4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-KP4TZDsgMm2M51FtnZMK1Q-1; Wed, 16 Dec 2020 18:35:20 -0500
X-MC-Unique: KP4TZDsgMm2M51FtnZMK1Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D973B802B42;
	Wed, 16 Dec 2020 23:35:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 644FE10023B3;
	Wed, 16 Dec 2020 23:35:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7A9A1809C9F;
	Wed, 16 Dec 2020 23:35:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BGNZ1OZ020562 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Dec 2020 18:35:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F1DC114B31B; Wed, 16 Dec 2020 23:35:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AD3C114B31A
	for <blinux-list@redhat.com>; Wed, 16 Dec 2020 23:34:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAFDA800B3B
	for <blinux-list@redhat.com>; Wed, 16 Dec 2020 23:34:58 +0000 (UTC)
Received: from smtpfb1-g21.free.fr (smtpfb1-g21.free.fr [212.27.42.9]) by
	relay.mimecast.com with ESMTP id us-mta-7-44fYuNjgPDu0rraSETMQaQ-1;
	Wed, 16 Dec 2020 18:34:56 -0500
X-MC-Unique: 44fYuNjgPDu0rraSETMQaQ-1
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by smtpfb1-g21.free.fr (Postfix) with ESMTP id 12BDADF93AF
	for <blinux-list@redhat.com>; Thu, 17 Dec 2020 00:29:02 +0100 (CET)
Received: from darkstar.example.slint (unknown
	[IPv6:2a01:e34:ed09:d470:ad84:e490:f8f1:b361])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 2E9A3200371
	for <blinux-list@redhat.com>; Thu, 17 Dec 2020 00:29:00 +0100 (CET)
Subject: Re: Introduction
To: blinux-list@redhat.com
References: <79C20A2A-0AAD-484C-95D4-29D4503833F8@gmail.com>
	<20201216131304.GC5313@rednote.net>
Message-ID: <d1285690-24bd-05e9-01c6-17b0aaffa4ed@slint.fr>
Date: Thu, 17 Dec 2020 00:28:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201216131304.GC5313@rednote.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

the new Slint installer, fully accessible with braille and speech
as usual but in addition more beginner friendly will hopefully
be available Friday.

Cheers, Didier

On 16/12/2020 14:13, Linux for blind general discussion wrote:
> All flavors of Linux provide the same Orca, the same TTS, and the same
> graphical environments by and large.
> 
> If you're asking which is easiest to install without sighted assistance,
> I'd wager most of us would answer one of Arch, Debian, or Ubuntu. In
> addition, there's Slint maintained by one of the members of this list.
> 
> My advice is to check the installation instructions for each of these
> and decide which makes most sense to you.
> 
> Note also that there are bootable images of Linux that you can burn to a
> CD or a usb flash device. You can get a sense of the environment from
> booting one of those. You can also install from one of those.
> 
> Good luck.
> 
> Janina
> 
> Linux for blind general discussion writes:
>> Hello everyone
>>
>> I am a new member here. Used windows then switched to Mac, now back with windows again. Recently though, I have heard about linux and am interested to know which flavor, as there are many is the most accessible with the orca screen reader. As I am completely blind. I am completely dependent on speech.
>>
>> I look forward to learning more from everyone in this community. Plus gaining further knowledge with linux with the more experience here on this list.
>>
>> With kind regards
>>
>> Daniel
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

