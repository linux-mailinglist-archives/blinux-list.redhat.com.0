Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id C40D3164551
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 14:25:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582118735;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P6t3tfhrlWrltygpfpRZtf77VumBU/DLIminleVXwg8=;
	b=hWRhN/UyAmeEfPCfFcK5X8t7ieU18I2tMYHvN3nVPyjJ9wyarpmMNkqFt75t5QFD6WoMIe
	PTRApjfmWiPV6q/TyHKym8nxhKo37KZqN/+XNMqWei0O21IftEhQgIm6i312R9N0fVRRvh
	MBUt/EHprDh09SdCfS+imkRpPRzgD0c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-n4aS0FAEO5iVVqf_jEjnPg-1; Wed, 19 Feb 2020 08:25:33 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D20A81403;
	Wed, 19 Feb 2020 13:25:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 529745D9E2;
	Wed, 19 Feb 2020 13:25:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D468A35B13;
	Wed, 19 Feb 2020 13:25:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JDPF6I006563 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 08:25:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 865941004C6C; Wed, 19 Feb 2020 13:25:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 800841000D98
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:25:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55178180190C
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:25:13 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-314-nOzPtV2APkuzcrKusomEbA-1; Wed, 19 Feb 2020 08:25:11 -0500
Received: by mail-wr1-f48.google.com with SMTP id e8so528980wrm.5
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 05:25:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=V0ydqUes/VHzWH5skb6y7C+pNjNIEPE1Dn0odFIB47g=;
	b=RMkJ9XV64FXYcOGF7V05PEp3iuo7BogJ6bjrz1nMeenJylI4UO+5wXdpxLX4hWaidl
	77mve0vPHnDCPW9lJTvD9T4gWCN8xkojqq++zTjol4heK7pdKza6O5p1tJGlfDvp/YR5
	eZZaaj3NlhNeswdwFv6AmW1UPZh63woXOf1kzP0N/pLJJkY9KoSmh46G3IjaF/111Xgn
	svXFY1OlPnKZn6NHHtLf9GekyyTHcnVwR7LiOzgwGF7tO/OjQakk4K2ivaEC83NFdNxo
	jDc6+8wpkXbO6PDH2e6Lg00E0Bz0FUeT8cz7Yp7gzMfkjpCqhmIeuj8TJiEStLm6cax0
	CBuw==
X-Gm-Message-State: APjAAAUBLiy72Y9ghUC4eZHBU7oM0bgSc7X12xLCfRhPA588lVJJ0Sga
	u6S5J+R1dCobSP/IDC53DHr4PI+q
X-Google-Smtp-Source: APXvYqz026/YJNQqArlZ9ZkL6ntM80iPziOPlQfq5/xDI8a0HshlbacjDpFoqBml2dA/bLdF8nUYmw==
X-Received: by 2002:a05:6000:1251:: with SMTP id
	j17mr37943673wrx.210.1582118709306; 
	Wed, 19 Feb 2020 05:25:09 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:1810:500:5986:8698:7100:1224?
	([2a04:b2c2:1810:500:5986:8698:7100:1224])
	by smtp.gmail.com with ESMTPSA id
	y17sm2695408wrs.82.2020.02.19.05.25.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Feb 2020 05:25:08 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Getting started with Debian
To: blinux-list@redhat.com
References: <28075e6a-979d-c1b5-cc1f-7ead9c893dac@GMAIL.COM>
	<alpine.NEB.2.21.2002190617580.12705@panix1.panix.com>
Message-ID: <6d42bdc1-f6c8-1e64-64e8-702f030cc84d@GMAIL.COM>
Date: Wed, 19 Feb 2020 13:25:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2002190617580.12705@panix1.panix.com>
Content-Language: en-US
X-MC-Unique: nOzPtV2APkuzcrKusomEbA-1
X-MC-Unique: n4aS0FAEO5iVVqf_jEjnPg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I'm more referring to going from a totally fresh VM and doing it that 
way. \But, your instructions should work, correct?

On 19/02/2020 11:26, Linux for blind general discussion wrote:
> If you already have linux and wget on a system,
> wget -bc
> https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/10.3.0+nonfree/amd64/iso-dvd/firmware-10.3.0-amd64-DVD-1.iso
> probably will help.
> It starts up silent so hit the s key then hit enter to get a screen
> reader going.
> I'm recommending this since you can stack the deck in terms of most
> awkward software and get a system installed.
> Get into the main menu by hitting < repeatedly until the main numbered
> menu comes up and choose the selection to check disk integrity first.
> If that passes, you may want to consider setting notification priority
> to low and saving installation logs to a mounted file system and then
> continue the installation
> A long long time ago, the main menu program on acbradio used to have
> programs demonstrating linux installations one of which was a debian
> installation from a now obsolete version of debian.  You control your
> flavor of distribution by editing /etc/apt/sources.list.  And for now,
> what you call testing is better known as bullseye.
> I hope this helps.
> On Wed, 19 Feb 2020,
> Linux for blind general discussion wrote:
>
>> Date: Wed, 19 Feb 2020 05:23:40
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Getting started with Debian
>>
>> So, since Debian got brought up on the list...
>>
>> What all do I need to get started with it, exactly? I'd like to get a system
>> up and going on debian-testing, and set it up how I want
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

