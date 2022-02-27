Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 984A04C5AFD
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 13:10:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645963808;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xF5yoOT2woCP4EITFFKkXj9Ocjlx9wd4nZDAmlHpcdg=;
	b=E2d4hE8Pktc1L2P9/2vAc1wNOU2Oawyi37hPnsG5dV7okj2q1OHv1ri8xX3+gJwXaZU4YM
	XGp94Y42EsIPG80roFcxnriLu8IzQEF4Jzs685R4G3LbRs1RepmxLGYscgzMAv3RpbgP2R
	Q7c/RRVSeYCu8g7u4o2roCPBxji5Aj4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-183-uL-w8YoaM_elQBMgWnWZ9w-1; Sun, 27 Feb 2022 07:10:04 -0500
X-MC-Unique: uL-w8YoaM_elQBMgWnWZ9w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8992B8066F4;
	Sun, 27 Feb 2022 12:10:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 567CE7A522;
	Sun, 27 Feb 2022 12:10:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 683441809C83;
	Sun, 27 Feb 2022 12:09:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RC8QBH008854 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 07:08:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D39CB2026D11; Sun, 27 Feb 2022 12:08:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF50F2026D65
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 12:08:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 864D63806721
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 12:08:20 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-615-lILVjViPPwa2izN7OPjuZw-1; Sun, 27 Feb 2022 07:08:18 -0500
X-MC-Unique: lILVjViPPwa2izN7OPjuZw-1
Received: by mail-wm1-f46.google.com with SMTP id
	6-20020a05600c024600b0038125fa8e43so2322098wmj.0
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 04:08:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=uDTRgRCe/OLtLPY74VG9ec2idgMGPchUA6Xl10Pm8Rk=;
	b=ouEYWI22hewN5/tXFzL53Tj4U6j69QSHvsQEMX4fbVgH89+9c6qpAe49gzTDkIaFC6
	hzff1dt+ep/7cxUON+2cSt6rrIeSdwJ9YFUs6G9FuN2cO2+Isyne0s+yPq1wUbQwGMjD
	LiePlS55WuUMHzoLskh8wJW9cXIrN0u+00vP7ZsClZoA76NI+cV93/1TawnNBZTnYMQk
	0X578SVOZmMfRgD4bXuTYiXF+mQRCTA9m19TfF+oePkwvt0gp4mu6Fuli73TdtPP0ZHt
	+gCmWnlKKROxHpPacaFnrx/oec2XTol3kxafkb4yV/ki/354onjKZbg+szhXKTuM38OS
	Z2hw==
X-Gm-Message-State: AOAM532gnxuOKQ2OEoXT17ubMvqNek/j4Pn681oo/jRFA8tcOFtx7vEn
	NqdH6lFkm/TkUDZWzpH5JsVjBGTKfywWaQ==
X-Google-Smtp-Source: ABdhPJy4ZjmDTdyut3dWFGwMbmg1VQqBslJoXX7a/rVAP032qQWtwCVm80uwMg+wMUIOqA83wMd2wQ==
X-Received: by 2002:a1c:4e01:0:b0:381:54:416d with SMTP id
	g1-20020a1c4e01000000b003810054416dmr9613533wmh.104.1645963697305;
	Sun, 27 Feb 2022 04:08:17 -0800 (PST)
Received: from darkstar ([197.184.177.193]) by smtp.gmail.com with ESMTPSA id
	h18-20020a5d5052000000b001e688788cc3sm7457228wrt.88.2022.02.27.04.08.15
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 27 Feb 2022 04:08:16 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@darkstar.example.slint>
Date: Sun, 27 Feb 2022 14:08:03 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Testing Linux distros
In-Reply-To: <9688392-e67a-60bc-1c21-e9b3bdf9abb5@panix.com>
Message-ID: <318ce7ec-912b-985e-9fc2-fac2a8b399b@darkstar.example.slint>
References: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
	<9a599fc5-a62-f1ed-94d2-a475ad65bd4d@panix.com>
	<8bd3c4a1-d001-3434-ce82-04967ad63c38@gmail.com>
	<9688392-e67a-60bc-1c21-e9b3bdf9abb5@panix.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It is actually a pocket drive, in other words, it came in a case and 
doesn't require external power like many other drives do.

I have no idea who made the thing, but it works, and that's really all I 
give a crap about anyway.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Sun, 27 Feb 2022, Linux for blind general discussion wrote:

> Date: Sun, 27 Feb 2022 06:26:43 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Testing Linux distros
> 
> What you ought to do if you haven't done it already is buy an external
> drive case for that kind of drive and put the drive in that case.
> You can use the drive from inside the case connected to your computer and
> the drive will have more protection that way.
>
>
> On Sun, 27 Feb 2022, Linux for blind general discussion wrote:
>
>> I have a 1 tb external USB3 drive which I will use then. Unfortunately it's
>> not an SSD, but what can you do?
>>
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent using Thunderbird from the Slint machine
>>
>> On 2022/02/26 23:51, Linux for blind general discussion wrote:
>>> A guess, you're not using an extractable ssd on that machine.  If correct,
>>> can the machine boot off an external drive in a USB port?  If not, you're
>>> left with kemu and the like.  If yes, and you can get a external ssd drive
>>> with usb connection put the testing system on that drive and replace it
>>> there as needed.  That keeps your main drive separate and you can use that
>>> for normal work.  External drive holders for the older type of drives like
>>> ide and sasi and scsi are also on the market though you'd need to get an
>>> extra drive or two for the holder.
>>>
>>>
>>>
>>> On Sat, 26 Feb 2022, Linux for blind general discussion wrote:
>>>
>>>> Hi all,
>>>>
>>>>
>>>> I am tired of having to reinstall my distro of choice every time I get fed
>>>> up
>>>> of testing one distro or another.
>>>>
>>>>
>>>> How would you go about testing if, like me, you only have the one Linux
>>>> capable machine? Yes, I know you can technically run some distros on the M1
>>>> MacBook, but, just, no thanks.
>>>>
>>>>
>>>> I really, for one, don't like the VMware thing, and virtualbox is a pain.
>>>>
>>>>
>>>> I'm thinking qemu with virtManager, but would like some input. This is how
>>>> I
>>>> run, only when really necessary, mind you, my production Windows.
>>>> Unfortunately I need it to do my work, so cannot kill the thing.
>>>>
>>>>
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
>>
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

