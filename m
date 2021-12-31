Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BF04823FC
	for <lists+blinux-list@lfdr.de>; Fri, 31 Dec 2021 13:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640953609;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q6Hyn60giuv0rfUtjsoYRQtGmz3asQF5vZocIb0EEGc=;
	b=Uaj8ZOlocgx2BVMq7MI63yuZcpiII/GbO4wk0Pj9mCaK4VqQPueYNR1jvvTmMt/rXeSCKk
	o0cyVahqBFvALty48lA8ZX5odnts8MrJfUU1UCRaUcWtaVS11XR+SBWX+hxWdL78pnoUWa
	Cggmiw6PY6NxCKrw3VF8keGSkAHG1Gs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-153-k5xc0GfIPM6rQxbMEexBjw-1; Fri, 31 Dec 2021 07:26:45 -0500
X-MC-Unique: k5xc0GfIPM6rQxbMEexBjw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54EFA345AE;
	Fri, 31 Dec 2021 12:26:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C31922DEC;
	Fri, 31 Dec 2021 12:26:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D9B11809CB8;
	Fri, 31 Dec 2021 12:26:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BVCQW3S000633 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 31 Dec 2021 07:26:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 534C44047280; Fri, 31 Dec 2021 12:26:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F344404727B
	for <blinux-list@redhat.com>; Fri, 31 Dec 2021 12:26:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D1891C0514E
	for <blinux-list@redhat.com>; Fri, 31 Dec 2021 12:26:32 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-417-VkjLhYVvOWe1V7uXZag9CA-1;
	Fri, 31 Dec 2021 07:26:30 -0500
X-MC-Unique: VkjLhYVvOWe1V7uXZag9CA-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D98ADA394E
	for <blinux-list@redhat.com>; Fri, 31 Dec 2021 12:26:19 +0100 (CET)
Subject: Re: Some Espeak variants crash
To: blinux-list@redhat.com
References: <dab728ae-51e1-47e8-0225-8ca7466fc493@seznam.cz>
	<af55efe5-891f-ca5d-d49f-196c22af25b4@slint.fr>
	<f1230eec-419c-074f-f6c8-a3c1c1cdd407@seznam.cz>
Message-ID: <f2082160-2a37-3474-781a-530407519652@slint.fr>
Date: Fri, 31 Dec 2021 14:26:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f1230eec-419c-074f-f6c8-a3c1c1cdd407@seznam.cz>
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

Slint64-14.2.1 up to date.

Cheers,
Didier

On 31/12/2021 12:27, Linux for blind general discussion wrote:
> Hello,
> 
> In where linux system did you tried it? I have Raspberry Pi 4B 4 GB with Ubuntu
> Mate 20.04.
> 
> Vojta.
> 
> Dne 30. 12. 21 v 22:38 Linux for blind general discussion napsal(a):
>> Hi Vojta,
>>
>> I selected in the Orca preferences GUI to select in the voices tab espeak-ng, cs
>> and Czech+female2, with no issue.
>>
>> This is with orca 41.1, speech-dispatcher 0.11.0 and the current state of
>> espeak-ng in the git repository (commit 29e621c2 applied).
>>
>> Cheers,
>> Didier
>> -- 
>> Didier Spaier
>>
>> On 30/12/2021 20:09, Linux for blind general discussion wrote:
>>> Good Evening,
>>>
>>> some Espeak variants crash with Orca. Is some way to repair it? I would like to
>>> use Espeak CS+F2, variant Female 2, but it crashes with Orca and I have to
>>> repair it with braille display. Please, is some way to repair it? Yes, I know,
>>> there's a way to install Voxin and if Espeak crashes, Voxin will speak, OK, but
>>> I would like to use that espeak variant, because I am comfortable with that in
>>> my phone.
>>>
>>> Thanks a lot.
>>>
>>> Best regards
>>>
>>> Vojta.
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
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

