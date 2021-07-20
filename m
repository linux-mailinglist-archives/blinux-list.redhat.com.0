Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A9E0E3D0226
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 21:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626809114;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=P551m8qkobLy+n3LLq8mPwUX6GmiLF9fAVulkvvVcWQ=;
	b=WmLdoy6sSJNnKTKRa3WmNzy0a2eWLyZkzVjDL953fJgJ6tnld0flbr77RtELr4chnxJXg2
	zDQ73x4SLPsjmYe5e2BHq2Qhks1VLSQb83ey49YWkpVxLm+IwBFR88ZtkU07qaI37sS0rb
	6zoF/sjz0OH2ovGQfEKjmKfwayWttvM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-xvuq8JHaPXiDP-1JYEnYFw-1; Tue, 20 Jul 2021 15:25:12 -0400
X-MC-Unique: xvuq8JHaPXiDP-1JYEnYFw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CB87362FB;
	Tue, 20 Jul 2021 19:25:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3902A5D6A1;
	Tue, 20 Jul 2021 19:25:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28C344EA29;
	Tue, 20 Jul 2021 19:25:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KJOesa031456 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 15:24:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 75AAA203CE5B; Tue, 20 Jul 2021 19:24:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E5652049CDC
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 19:24:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF29A185A79C
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 19:24:36 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-78-PD9TZ4aDPfSZXOwfV6CEiA-1; Tue, 20 Jul 2021 15:24:34 -0400
X-MC-Unique: PD9TZ4aDPfSZXOwfV6CEiA-1
Received: by mail-ed1-f49.google.com with SMTP id ee25so29797377edb.5
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 12:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=qO7WsdSmwJpr6S9pewwFoWVNGn8YRv81rW9FIhkbPEw=;
	b=pwJoIdvlEIzgmPOYCak6LbvVZivgKHMOKocT7pKhMoxTroP8pmoANDQrCWWWrZLfFA
	+9aSotdXMOHfhdJsmeRsJqVc18eloV1Aiuz1kscNXKfPJRkxdP55yyYhwedH1Mlda/Nn
	v8fKkn/fJhwpWbx7ulBsFLWh5T8OXqqXs2+x4mqY1NQ+kSIlQEnHexMlNfiRSFTOYLE3
	kOVweHt7h87Pakx7LOAd7QG0b1o4tVUBBEkQtCfmIff17THwCWUpdQ4r+/2HbLkLWck3
	VLf9eDcIHrgBqNJyucrCP/YMhnAAwQ6lvGnZPtPRaTiOtMtEHAdrnhUQz6iHYdzy7Oid
	1rNA==
X-Gm-Message-State: AOAM5305hY2dAKTkxZendbdoYEnQcK946ArCcBtRlN1n31WtwmFq0eYW
	tR2SV/9FWkhRfMiJOSyjxKjK5XFh4nETTw==
X-Google-Smtp-Source: ABdhPJyVHdNgqIBv3t8/MewMiwWi8sI6jr77xCArMsh2MBELsRNJicoiI8zTpoV8qwGqQXA97oJPXg==
X-Received: by 2002:aa7:d4c2:: with SMTP id t2mr33991909edr.241.1626809072675; 
	Tue, 20 Jul 2021 12:24:32 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id
	jw8sm7411062ejc.60.2021.07.20.12.24.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 20 Jul 2021 12:24:31 -0700 (PDT)
Subject: Re: changing the keymap in fluxbox on Slint
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
	<2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
	<018401d77d86$43c1c120$cb454360$@gmail.com>
	<9cce1164-c4ad-140a-091d-d28d5459f45d@slint.fr>
Message-ID: <29f4cf34-e24c-b336-1bca-f6fb5cab6eb1@gmail.com>
Date: Tue, 20 Jul 2021 21:24:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9cce1164-c4ad-140a-091d-d28d5459f45d@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Type: multipart/mixed; boundary="------------614C0A3B2C4386ED09CD4BE9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------614C0A3B2C4386ED09CD4BE9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Didier,


See the attached file.


Warm regards,


Brandt Steenkamp


Sent using Thunderbird from Slint

On 7/20/21 6:47 PM, Linux for blind general discussion wrote:
> Hi Brandt,
>
> please attach the file /etc/X11/xorg.conf.d/10-keymap.conf to your 
> next post.
>
> Cheers,
> Didier
>
> Le 20/07/2021 à 18:42, Linux for blind general discussion a écrit :
>> Hi Didier,
>>
>> Sorry, no luck on fixing the keyboard layout. I tried everything I 
>> could think of to do, but no luck.
>>
>> -----Original Message-----
>> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> 
>> On Behalf Of Linux for blind general discussion
>> Sent: Tuesday, 20 July 2021 18:15
>> To: blinux-list@redhat.com
>> Subject: Re: changing the keymap in fluxbox on Slint
>>
>> Hi Brandt,
>>
>> It could be an issue with the file /usr/share/salixtools/keymaps 
>> leading to write in /etc/X11/xorg.conf.d/10-keymap.conf
>>
>> Option                          "XkbLayout" "dvorak"
>> instead of:
>> Option                          "XkbLayout" "dvorak-l"
>>
>> when running keyboardsetup or gtkkeyboardsetup.
>>
>> Please edit this 10-keymap.conf as root, replacing dvorak by 
>> dvorak-l, restart a window manager. Does it now work?
>>
>> Best regards,
>> Didier
>> -- 
>> Didier Spaier
>> Slint maintainer
>> didieratslintdotfr
>>
>> Le 20/07/2021 à 17:26, Linux for blind general discussion a écrit :
>>> Hi all,
>>>
>>>
>>> I installed Slint in a VM, by default running the Mate desktop, which
>>> I could easily fix, but when I start FluxBox, not so much.
>>>
>>>
>>> The issue is as follows: In the Slint install I chose Dvorak -L
>>> (Left-Handed Dvorak) as my keyboard. However, when I ran "startx" to
>>> get in to my desktop, I was presented with the Dvorak keyboard layout,
>>> which, as a one-handed lefty, I obviously do not know.
>>>
>>>
>>> I fixed this very easily in the Mate desktop, but have no idea how to
>>> do so in the Window Managers, FluxBox, BlackBox, etc.
>>>
>>>
>>> If anyone can, please help me with this issue? I would really
>>> appreciate it.
>>>
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

--------------614C0A3B2C4386ED09CD4BE9
Content-Type: text/plain; charset=UTF-8;
 name="10-keymap.conf"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="10-keymap.conf"

U2VjdGlvbiAiSW5wdXRDbGFzcyIKCUlkZW50aWZpZXIJCQkiS2V5Ym9hcmQtYWxsIgoJTWF0Y2hJ
c0tleWJvYXJkCQkieWVzIgoJTWF0Y2hEZXZpY2VQYXRoIAkiL2Rldi9pbnB1dC9ldmVudCoiCglE
cml2ZXIJCQkJImV2ZGV2IgpPcHRpb24gICAgICAgICAgICAgICAgICAgICAgICAgICJYa2JMYXlv
dXQiICJkdm9yYWstbCIgCglPcHRpb24JCQkJIlhrYlZhcmlhbnQiICIiCglPcHRpb24JCQkJIlhr
Yk9wdGlvbnMiICIiCkVuZFNlY3Rpb24KCg==
--------------614C0A3B2C4386ED09CD4BE9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--------------614C0A3B2C4386ED09CD4BE9--

