Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0DEA5363194
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 19:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618680911;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OC1q6XQ6r5Dxu2+lXQtdw78lgkYUfBUqK+9ltBvQnHY=;
	b=RcMg0HwV+YRj+5gHEObftjEdtuv4IdqpCj7o/U3o6LPt+zR2oF+68cZmi6Ue46L5wLImOA
	z+VWg0qyQYsz9pIkTejU+Bpb6Cod9nEOnVY8k/TVgLyJO0+zYlFBRb7xMMJ7aAGOKQOlrs
	2pK3E7gbv6Xv4hnyJ7hRNu3pt2BTTJ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-RESXg1R2NkO5X9-Ezh4S7g-1; Sat, 17 Apr 2021 13:35:09 -0400
X-MC-Unique: RESXg1R2NkO5X9-Ezh4S7g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B61008030A1;
	Sat, 17 Apr 2021 17:35:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 630AC60C13;
	Sat, 17 Apr 2021 17:35:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B3F1D1806D15;
	Sat, 17 Apr 2021 17:35:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HHYxhm006197 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 13:35:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D262F1111421; Sat, 17 Apr 2021 17:34:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE2451111420
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:34:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E79A805F07
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:34:56 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-393-HRazZya1Mw6TVmHv_-bKYg-1; Sat, 17 Apr 2021 13:34:54 -0400
X-MC-Unique: HRazZya1Mw6TVmHv_-bKYg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id C5D79621C2C; Sat, 17 Apr 2021 17:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id C0C1E62022F
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 13:34:52 -0400 (EDT)
Date: Sat, 17 Apr 2021 13:34:52 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Would you be interested in having natural sounding TTS voices
	by Readspeaker on Linux? demo link included
In-Reply-To: <tsly2dhupc9.fsf@industrial-algebra.suchdamage.org>
Message-ID: <Pine.LNX.4.64.2104171326370.2504722@server2.shellworld.net>
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<a292b20a-bcd7-0b81-b44b-2721e1453e6d@debian.org>
	<Pine.LNX.4.64.2104161344520.2344535@server2.shellworld.net>
	<PH0PR14MB4296C45B393DC59DA08B8B64C84C9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<Pine.LNX.4.64.2104161454040.2346012@server2.shellworld.net>
	<tsly2dhupc9.fsf@industrial-algebra.suchdamage.org>
MIME-Version: 1.0
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

...actually no.
That is because trying to set those variations is exactly part of the 
danger.
I still remember making an appointment at an apple store to test their ios 
voices at the time, and passing out when we tried.
and of course, before the parameters  could even be tested,  one must 
install Linux using the default, and dangerous voices.
It is unfortunate that the dectalk32 which gw micro provided for window 
eyes was not kept for  expansive digital use.
Or that  greater attention has not been paid to keeping Linux working with 
a greater variety of hardware synthesizers in graphics was not done.
There is not even a console driver for my synthesizer in Linux.
still, going to hospital while I try and set parameters is not a risk I 
wish to  make.



On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

>
>
>> I experience an auditory processing disorder caused by a
>> vascular accident occurring during an eye surgery where I was
>> given too much anesthetic impacting a part of my brain that
>> manages verbal communication.  as a result, speech in certain
>> frequency ranges can stimulate my brain's dizzy centres,
>> impact how I speak, and if prolonged, can have other
>> consequences.  Happens with more than just speech, some
>> headphones, even cordless phones and cell models cause the
>> same issue when used even if synthesized speech is not
>> involved.
>
> Espeak does have parameters to adjust the frequency of the voices.
> I'm not saying you should use espeak, or like it, but It's probably easy
> to make it less dangerous, and possibly even to make it safe for you.
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

