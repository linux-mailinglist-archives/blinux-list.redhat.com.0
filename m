Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7465D4A0261
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 21:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643403432;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=otUU8RE1+oskGZaPzcKEyUXXhoLLgeu0IM0mYg+DsoM=;
	b=CTInzTSfrbJMhZEoLBuIJ++JTrsjFgDg/LtUEt9ZakjS++d3zMbfWhUlocGNY+bm9STf/x
	jbMQ/dSnzE9U+rA8tyUt2srZTxt+ejo/k9FkqdaaiuVmBZQqdUwP7X8ZSLICLy4B/7B7iJ
	cCYix6OsFPopHLBc5wh/mVUOTCAHB9Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-319-gPR70Ao4PgaNCkEbqqgh8A-1; Fri, 28 Jan 2022 15:57:09 -0500
X-MC-Unique: gPR70Ao4PgaNCkEbqqgh8A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B64C1006AAB;
	Fri, 28 Jan 2022 20:57:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 121005DB89;
	Fri, 28 Jan 2022 20:57:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE32F4A7C8;
	Fri, 28 Jan 2022 20:57:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SKv1Fx015186 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 15:57:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 05DAC76E8; Fri, 28 Jan 2022 20:57:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0115B76C8
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 20:56:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 336913C1463F
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 20:56:55 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-655-zMMaBpskPXqHhoZYrCZKXw-1; Fri, 28 Jan 2022 15:56:53 -0500
X-MC-Unique: zMMaBpskPXqHhoZYrCZKXw-1
Received: from email.seznam.cz
	by email-smtpc6a.ng.seznam.cz (email-smtpc6a.ng.seznam.cz
	[10.23.10.165]) id 148ec7a7011694fd156436bb;
	Fri, 28 Jan 2022 21:56:52 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay10.ng.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Fri, 28 Jan 2022 21:56:49 +0100 (CET)
Message-ID: <3cf3b696-9606-de03-efda-4fa9266ce53b@seznam.cz>
Date: Fri, 28 Jan 2022 21:56:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
	<20220128.190302.486.6@[192.168.1.100]>
In-Reply-To: <20220128.190302.486.6@[192.168.1.100]>
X-szn-frgn: <677894a1-ac49-441a-9245-a2520abdd422>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

the bad think is, that Audiobook-converter was only in Vinux. It could 
really much settings. It could convert book to mp3, I could option if I 
wanted, on how much files and how length I wanted, how quick can it 
speak, etc. I have this installed in my old Vinux, but I dont know, how 
can I move this old app to my Raspberry and use it there.

Do you know, why must I convert text to mp3 or waves? Because Orca has 
for someone advantage, for me disadvantage. I have scanned books, which 
are wrapped. Some words are ended by enter key, not space. But in Orca 
there's option, when enter is in the text, Orca makes space like on the 
end of the sentence. This is really annoying during reading book, when 
the book is written in this. Windows screenreaders or Mac haven't 
problems, so I can't want from library owner to edit the books due to 
Orca bugs. People likes this bug, because if they write shopping list, 
something like:

I have to buy
rolls
bread
butter
cheese
milk

they are comfortable with that, Orca with continuous reading makes 
spaces. But I don't want Orca do that, when I am reading wrapped book. 
So the only think what I can is convert text to mp3, because there 
aren't problems with reading, when text is in the sound format. Only 
disadvantage is, it can't be read by my favourite voice Max, only 
unnamed Espeak, so, never mind.

Best regards

Vojta.

Dne 28. 01. 22 v 20:03 Linux for blind general discussion napsal(a):
> the say command in the voxin package has a wave option.
> 
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Fri, 28 Jan 2022 19:39:09 +0100
> Subject: Re: Converting text to mp3
> 
>> Hello,
>> is there a way to use Voxin for that, too?
>> Greetings,
>> Wolfram
>>
>> Am 26.01.22 um 18:21 schrieb Linux for blind general discussion:
>>> # convert text file to wave
>>> espeak -f file.txt -w file.wav
>>> #then convert wave file to mp3
>>> lame -m s file.wav -o file.mp3
>>>
>>> On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general discussion wrote:
>>>> Hello,
>>>>
>>>> is some way to convert text file to mp3 files and option length of them? In
>>>> Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
>>>>
>>>> Thanks a lot and take care.
>>>>
>>>> Best regards
>>>>
>>>> Vojta.
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

