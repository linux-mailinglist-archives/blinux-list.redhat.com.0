Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 951E448483F
	for <lists+blinux-list@lfdr.de>; Tue,  4 Jan 2022 20:07:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641323249;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PcxnCRTMjok6HcrthbKAI1AzRdlL02w4MqnyvWrKXOY=;
	b=c3GvvpOdHurUpfpoqGkzqdgJ/JEoGf2FcMVTcOIsOEcbx+dJ5Cx/PUnUFjZ4XV1awm2hH+
	AMDUA+WXcF/9RtTlOWTzl1/QDK2kF4vsejpj2V0iDVOGJiMd3h2VUJg/SmlmKa6nxaxpeM
	UoTA9rhxrd4mG3bSTyipn3vVJd3/oYs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-643-YkGw7FDlOrK7YGsEv3YAYg-1; Tue, 04 Jan 2022 14:07:26 -0500
X-MC-Unique: YkGw7FDlOrK7YGsEv3YAYg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFFDA8015CD;
	Tue,  4 Jan 2022 19:07:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48F375D9D5;
	Tue,  4 Jan 2022 19:07:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C29B31809CB8;
	Tue,  4 Jan 2022 19:07:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 204J7DeA014573 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Jan 2022 14:07:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 09A4940149AA; Tue,  4 Jan 2022 19:07:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05823400E135
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 19:07:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0E40811E7A
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 19:07:12 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-455-Drfq5deVMgCYANJopnIDpQ-1; Tue, 04 Jan 2022 14:07:11 -0500
X-MC-Unique: Drfq5deVMgCYANJopnIDpQ-1
Received: from email.seznam.cz
	by email-smtpc18a.ko.seznam.cz (email-smtpc18a.ko.seznam.cz
	[10.53.18.20]) id 05721ba710ea48fd0498eabb;
	Tue, 04 Jan 2022 20:07:10 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay23.ko.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Tue, 04 Jan 2022 20:07:06 +0100 (CET)
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
	<4bc845a3-1923-4d72-6017-ddc37263cbd1@seznam.cz>
	<20220101132930.080d8609@bigbox.attlocal.net>
	<a033feca-6a59-76bd-10de-4bdcc745bce1@seznam.cz>
	<20220104123510.7304fc58@bigbox.attlocal.net>
Message-ID: <1dda7e14-1f06-1c36-95cb-d8d121e95f06@seznam.cz>
Date: Tue, 4 Jan 2022 20:07:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220104123510.7304fc58@bigbox.attlocal.net>
X-szn-frgn: <3e6ffa13-5114-4ee9-9fc5-02d4b2c0b7f2>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

I've gave it up. For my happynes, my sister recorded fireworks too, so 
that's solved.

Thanks for all your help and links. Happy new year to you all and take care.

Best regards

Vojta.

Dne 04. 01. 22 v 19:35 Linux for blind general discussion napsal(a):
> Tim here.  I'm unfamiliar with how the dictaphone connects or what
> file-system it exposes (most likely a FAT filesystem rather than an
> EXT filesystem).  If it is a FAT drive, you might have "testdisk" in
> your repo that should allow you to undelete files from a FAT drive.
> There's a pretty good write-up of steps here
> 
> https://linuxconfig.org/data-recovery-of-deleted-files-from-the-fat-filesystem
> 
> that might help you out in that case.
> 
> The last time I had to recover deleted files on a FAT drive, I
> believe part of the deletion process obliterated the first letter of
> the filename, so you had to provide that when restoring (so a file
> named "vojita.txt" would show up in old directory listings as
> "?ojita.txt" and you'd have to provide the "v" at the beginning).
> 
> Hope this helps,
> 
> -tim
> 
> On January  1, 2022, Linux for blind general discussion wrote:
>> Hello,
>>
>> and what to recovery data from my dictaphone? I have Olympus LSP4
>> and I taked files from it by CTRL X. Some people told me about
>> Recuva for Windows to recovery it.
>>
>> But now, I am on my Raspberry, emailing to you. May I turn off my
>> raspberry and write from another computer?
>>
>> Thanks, Vojta.
>>
>> Dne 01. 01. 22 v 20:29 Linux for blind general discussion napsal(a):
>>> Tim here again. Yes, if your filesystem is ext4, extundelete is
>>> the tool you want.  For best results, reboot into a live ISO/CD
>>> image and install it there, leaving your RPi drive untouched.
>>> This will minimize the chance that installing extundelete
>>> overwrites the data you want to preserve.
>>>
>>> -tim
>>>
>>> On January  1, 2022, Linux for blind general discussion wrote:
>>>> Hello, I have ext4, yes.
>>>>
>>>> Vojta.
>>>>
>>>> Dne 01. 01. 22 v 20:18 Linux for blind general discussion
>>>> napsal(a):
>>>>> I'm guessing/hoping the partition that has your deleted file has
>>>>> an ext4 filesystem. You should be able to recover the lost file
>>>>> using extundelete, although if you write anything at all to the
>>>>> SD, it will become less likely that your file will be
>>>>> recoverable. It seems that other filesystems make it more
>>>>> difficult, if not impossible to recover deleted files.
>>>>>
>>>>> ~Kyle
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>       
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>   
>>>
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

