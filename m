Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F69E482854
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641065594;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7BaZtj6cND6cw9cfGcUZZSFH5JvQGGqiCqb83kZv5DU=;
	b=JpTrhE+JO2F6HHCd0hjoTl2KKxtQZMdCoExF2ynxc++4h0rjqnRFpOQJIHxYeIdSSDMxi3
	7OG6lJCepDAcJYmDylES/BdBvxH1bWDzyFFDvbQ5uw4cbIBtb5bIhLI9FtVzhc+Qa4PhN4
	tWcf3Xt52SiNLgBQmnR17eB5vxn9+9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-l0v-t9DLOGycmk4GUFV5Tg-1; Sat, 01 Jan 2022 14:33:11 -0500
X-MC-Unique: l0v-t9DLOGycmk4GUFV5Tg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4990801B2A;
	Sat,  1 Jan 2022 19:33:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB0E0196F1;
	Sat,  1 Jan 2022 19:33:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 95A3E4BB7C;
	Sat,  1 Jan 2022 19:33:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JX5PX015639 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:33:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EEC9CC08097; Sat,  1 Jan 2022 19:33:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E99A3C08096
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:33:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B67BE2B76020
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:33:04 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-194-snReE2KQM7yinxZegOaY_g-1; Sat, 01 Jan 2022 14:33:01 -0500
X-MC-Unique: snReE2KQM7yinxZegOaY_g-1
Received: from email.seznam.cz
	by email-smtpc3b.ng.seznam.cz (email-smtpc3b.ng.seznam.cz
	[10.23.13.75]) id 1e98deb50b008def1f722fa9;
	Sat, 01 Jan 2022 20:32:59 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay11.ng.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Sat, 01 Jan 2022 20:32:55 +0100 (CET)
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
	<4bc845a3-1923-4d72-6017-ddc37263cbd1@seznam.cz>
	<20220101132930.080d8609@bigbox.attlocal.net>
Message-ID: <a033feca-6a59-76bd-10de-4bdcc745bce1@seznam.cz>
Date: Sat, 1 Jan 2022 20:32:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220101132930.080d8609@bigbox.attlocal.net>
X-szn-frgn: <true>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

and what to recovery data from my dictaphone? I have Olympus LSP4 and I 
taked files from it by CTRL X. Some people told me about Recuva for 
Windows to recovery it.

But now, I am on my Raspberry, emailing to you. May I turn off my 
raspberry and write from another computer?

Thanks, Vojta.

Dne 01. 01. 22 v 20:29 Linux for blind general discussion napsal(a):
> Tim here again. Yes, if your filesystem is ext4, extundelete is the
> tool you want.  For best results, reboot into a live ISO/CD image and
> install it there, leaving your RPi drive untouched.  This will
> minimize the chance that installing extundelete overwrites the data
> you want to preserve.
> 
> -tim
> 
> On January  1, 2022, Linux for blind general discussion wrote:
>> Hello, I have ext4, yes.
>>
>> Vojta.
>>
>> Dne 01. 01. 22 v 20:18 Linux for blind general discussion napsal(a):
>>> I'm guessing/hoping the partition that has your deleted file has
>>> an ext4 filesystem. You should be able to recover the lost file
>>> using extundelete, although if you write anything at all to the
>>> SD, it will become less likely that your file will be
>>> recoverable. It seems that other filesystems make it more
>>> difficult, if not impossible to recover deleted files.
>>>
>>> ~Kyle
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>    
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> 
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

