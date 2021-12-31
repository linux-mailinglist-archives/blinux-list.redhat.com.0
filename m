Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF8F4823A1
	for <lists+blinux-list@lfdr.de>; Fri, 31 Dec 2021 12:28:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640950104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jQCldZiSaSNCE+xGS9Iy4RB4SFYqj4jJBQKxgLDpogs=;
	b=Ps0TMiKu5ZQ5lGYVe+nVbGN//Rmk4Jsbq6XFiT81NL6xzeq65G5HHbDKysr9Rpo7PvgesZ
	gcv9qYLfvraJrpaK6Fi9IGnjDGT/We29foAJIxSGiSyl+L5FdWvcG9lJGfSlQhUsvA6YfU
	oggHEzNm+zY240Q7UEWYoCOhefbshu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-622-G94yy_jKPrKooTJhAEwG0Q-1; Fri, 31 Dec 2021 06:28:20 -0500
X-MC-Unique: G94yy_jKPrKooTJhAEwG0Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F181F102CB73;
	Fri, 31 Dec 2021 11:28:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09C0872416;
	Fri, 31 Dec 2021 11:28:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A55D21809CB8;
	Fri, 31 Dec 2021 11:28:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BVBRshf030108 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 31 Dec 2021 06:27:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6FE8D51599B; Fri, 31 Dec 2021 11:27:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C0F951599C
	for <blinux-list@redhat.com>; Fri, 31 Dec 2021 11:27:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 526F780B710
	for <blinux-list@redhat.com>; Fri, 31 Dec 2021 11:27:54 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-201-XjRf84E8OeSwdDVZwkEJNQ-1; Fri, 31 Dec 2021 06:27:52 -0500
X-MC-Unique: XjRf84E8OeSwdDVZwkEJNQ-1
Received: from email.seznam.cz
	by email-smtpc21a.ko.seznam.cz (email-smtpc21a.ko.seznam.cz
	[10.53.18.26]) id 2b1983863e81d0dc2af3729a;
	Fri, 31 Dec 2021 12:27:51 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay30.ko.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Fri, 31 Dec 2021 12:27:47 +0100 (CET)
Subject: Re: Some Espeak variants crash
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <dab728ae-51e1-47e8-0225-8ca7466fc493@seznam.cz>
	<af55efe5-891f-ca5d-d49f-196c22af25b4@slint.fr>
Message-ID: <f1230eec-419c-074f-f6c8-a3c1c1cdd407@seznam.cz>
Date: Fri, 31 Dec 2021 12:27:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <af55efe5-891f-ca5d-d49f-196c22af25b4@slint.fr>
X-szn-frgn: <true>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

In where linux system did you tried it? I have Raspberry Pi 4B 4 GB with 
Ubuntu Mate 20.04.

Vojta.

Dne 30. 12. 21 v 22:38 Linux for blind general discussion napsal(a):
> Hi Vojta,
> 
> I selected in the Orca preferences GUI to select in the voices tab espeak-ng, cs
> and Czech+female2, with no issue.
> 
> This is with orca 41.1, speech-dispatcher 0.11.0 and the current state of
> espeak-ng in the git repository (commit 29e621c2 applied).
> 
> Cheers,
> Didier
> --
> Didier Spaier
> 
> On 30/12/2021 20:09, Linux for blind general discussion wrote:
>> Good Evening,
>>
>> some Espeak variants crash with Orca. Is some way to repair it? I would like to
>> use Espeak CS+F2, variant Female 2, but it crashes with Orca and I have to
>> repair it with braille display. Please, is some way to repair it? Yes, I know,
>> there's a way to install Voxin and if Espeak crashes, Voxin will speak, OK, but
>> I would like to use that espeak variant, because I am comfortable with that in
>> my phone.
>>
>> Thanks a lot.
>>
>> Best regards
>>
>> Vojta.
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

