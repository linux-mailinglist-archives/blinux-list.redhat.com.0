Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FA34A2F5A
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 13:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643459081;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oDvFRZfzoUtg5sIn5ijBYJ40oKWIrvemdrVZTBysJgA=;
	b=HW612Uf1sgmVWcPY0SY9aKVi76kywadBORNJGj/LgY/wE3/uS2eAv9QAusSTp5CBZRicyv
	S2sjBNJmCKBkofgqWh9UEpt40fM0uIkXZ22AaFK/Gn8YrCt79qio3Fk6KWTMy5dJuzYcyD
	3C7iVqrxQtTRQ3QyS9uocMBGQ6T5D8Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-471-zv-kybcRMp6mzpy1jrQL3Q-1; Sat, 29 Jan 2022 07:24:38 -0500
X-MC-Unique: zv-kybcRMp6mzpy1jrQL3Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2259A1083F60;
	Sat, 29 Jan 2022 12:24:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8FC773150;
	Sat, 29 Jan 2022 12:24:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EFE21809CB8;
	Sat, 29 Jan 2022 12:24:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TCOGkF010269 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 07:24:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8090B2166B44; Sat, 29 Jan 2022 12:24:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C17F2166B2F
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 12:24:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B6AB811E76
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 12:24:13 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-381-ZZjbj7cAMhG1wUA5FciUbA-1; Sat, 29 Jan 2022 07:24:11 -0500
X-MC-Unique: ZZjbj7cAMhG1wUA5FciUbA-1
Received: from email.seznam.cz
	by email-smtpc24b.ng.seznam.cz (email-smtpc24b.ng.seznam.cz
	[10.23.18.33]) id 661e717f7386222567f48063;
	Sat, 29 Jan 2022 13:24:10 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay25.ng.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Sat, 29 Jan 2022 13:24:07 +0100 (CET)
Message-ID: <6c9e57a3-4ad4-b296-58b7-4053bd528eed@seznam.cz>
Date: Sat, 29 Jan 2022 13:24:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
	<20220128.190302.486.6@[192.168.1.100]>
	<1c8b1a72-b4c1-f8bb-714d-68d0c7bbfe79@googlemail.com>
In-Reply-To: <1c8b1a72-b4c1-f8bb-714d-68d0c7bbfe79@googlemail.com>
X-szn-frgn: <3e305c2c-47f2-4d58-8686-56db18689b31>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

the command with lame works, but the mp3 file hasn't good quality and 
espeak is faster than 50 in Orca. But it works.

Thanks a lot.

Best regards

Vojta.

Dne 29. 01. 22 v 12:20 Linux for blind general discussion napsal(a):
> OK, thanks.
> Greetings,
> Wolfram
> 
> Am 28.01.22 um 20:03 schrieb Linux for blind general discussion:
>> the say command in the voxin package has a wave option.
>>
>> ----- Original Message -----
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Date: Fri, 28 Jan 2022 19:39:09 +0100
>> Subject: Re: Converting text to mp3
>>
>>> Hello,
>>> is there a way to use Voxin for that, too?
>>> Greetings,
>>> Wolfram
>>>
>>> Am 26.01.22 um 18:21 schrieb Linux for blind general discussion:
>>>> # convert text file to wave
>>>> espeak -f file.txt -w file.wav
>>>> #then convert wave file to mp3
>>>> lame -m s file.wav -o file.mp3
>>>>
>>>> On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general 
>>>> discussion wrote:
>>>>> Hello,
>>>>>
>>>>> is some way to convert text file to mp3 files and option length of 
>>>>> them? In
>>>>> Vinux I had Audiobook-converter. But it's not in repositories of 
>>>>> Ubuntu.
>>>>>
>>>>> Thanks a lot and take care.
>>>>>
>>>>> Best regards
>>>>>
>>>>> Vojta.
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

