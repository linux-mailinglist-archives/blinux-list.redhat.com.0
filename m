Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B770C46300A
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 10:48:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638265714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QASZZpPEjbB47f1pKhAlgGBz6V2D+9v8T9/3GtNWQWA=;
	b=hTz4k17+vnCZxMIA23bGxdc7fGoIF1RRJw6JDsC8MMTS3DN8qmakV+Y8Xr9IMl7MguUFpp
	p/rw7++LHfoqVCisQkuo9oE1i9uLwXCOw/sizbCEjPrJIH0qpr6ioBJvN11CJDGg7Jybwm
	yaefdlmRgiKpa6sLbnjK7pf7eO4CHos=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-336-yhTAYe3oOw-q0e-lSCNxEA-1; Tue, 30 Nov 2021 04:48:31 -0500
X-MC-Unique: yhTAYe3oOw-q0e-lSCNxEA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5CBD100CCC1;
	Tue, 30 Nov 2021 09:48:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 431514EDC1;
	Tue, 30 Nov 2021 09:48:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9EFA71809C89;
	Tue, 30 Nov 2021 09:48:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU9mIx4031551 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 04:48:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DF50C08093; Tue, 30 Nov 2021 09:48:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 49991C08091
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:48:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BAAE811E80
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:48:18 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-574-nbbR1a9RPCmSrBsif-tGgQ-1; Tue, 30 Nov 2021 04:48:16 -0500
X-MC-Unique: nbbR1a9RPCmSrBsif-tGgQ-1
Received: from email.seznam.cz
	by email-smtpc21b.ng.seznam.cz (email-smtpc21b.ng.seznam.cz
	[10.23.18.27]) id 649a86eb7102d5b1657077f7;
	Tue, 30 Nov 2021 10:48:14 +0100 (CET)
Received: from [192.168.1.171] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay11.ng.seznam.cz (Seznam SMTPD 1.3.130) with ESMTP;
	Tue, 30 Nov 2021 10:48:10 +0100 (CET)
Subject: Re: How to copy output from a terminal?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
	<alpine.NEB.2.23.451.2111300440330.5394@panix1.panix.com>
Message-ID: <745bf6e8-8267-1064-ecbf-fa53a36f2019@seznam.cz>
Date: Tue, 30 Nov 2021 10:48:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111300440330.5394@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

and what about copying errors? I can't boot to Stormux in Mate desktop 
and I have long bug. How can I save it, when I am in console? is some 
way to share it with Storm and others? If I write them I have some bug, 
they cannot help me, because some bug is really large termine.

Thanks.

Best regards

Vojta.

Dne 30. 11. 21 v 10:42 Linux for blind general discussion napsal(a):
> $ ./startwin.sh|tee startwin.log does it destructively.
> $ ./startwin.sh | tee -a startwin.log does it non-destructively and
> appends onto an existing file with the same name.
> 
> 
> On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
> 
>> Hi all,
>>
>>
>> I still have a few things I need to fix, but as the subject states, I don't
>> know how to copy the output from a terminal so I can ask for help from the
>> relevant mailing lists/forums.
>>
>>
>> I am using Mate-Terminal with Orca in Fedora Mate Compiz 35. I know you can
>> copy text off a console using speakup, but I am not in a console, now am I?
>>
>>
>> If anyone has any advice, I'd be appreciative. If there is a way, for example
>> to pype the output from a command to a text file, for example if I type
>>
>>
>> $ ./startwin.sh
>>
>> Which is how I would start my qemu Windows VM, can I pype the output to a text
>> file in '~/'?
>>
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

