Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 398682E28C1
	for <lists+blinux-list@lfdr.de>; Thu, 24 Dec 2020 20:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608839543;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k1eoYnUVfuu6Hnu5lnXyzMYS1kHvyQzfrYze7+hgOg4=;
	b=VYCYhJEMrbSzSVWp7RnI1LQgY0Npk7RZZGppq/aeUQOBO+LPU4XrRKOrb7Etf0mYIaVHFC
	0vZ8rXkWcGA66eWzbOkgqpAMpBHJbqwO/pw4c9ETrg3fzA9u36YVAMxMuG6uKUpNHEwpDF
	MQqvu9HmwSpc8nlfdwTUEQk7a88bCtI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-583-TSoyx8NtOROXWTUQJGsJMQ-1; Thu, 24 Dec 2020 14:52:21 -0500
X-MC-Unique: TSoyx8NtOROXWTUQJGsJMQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B1F21800D42;
	Thu, 24 Dec 2020 19:52:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C95715D768;
	Thu, 24 Dec 2020 19:52:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7873D180954D;
	Thu, 24 Dec 2020 19:52:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BOJqDjI004680 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Dec 2020 14:52:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5BE2E10FD2AC; Thu, 24 Dec 2020 19:52:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 579F610FD2AB
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 19:52:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 37509101A560
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 19:52:11 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-494-IAjKH0fbNzKBc5tCAySkAw-1; Thu, 24 Dec 2020 14:52:08 -0500
X-MC-Unique: IAjKH0fbNzKBc5tCAySkAw-1
Received: by mail-oi1-f169.google.com with SMTP id x13so3239009oic.5
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 11:52:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=nWFbHICjRBRr+bd/emUAXoOmRlypNBikSHSW0L1IMSM=;
	b=JEMoNE5wZAeQiiK6E+hrNiZHHf/hgxfCVktELcusPbaeeWz4j39T+4fvCwdOtLCyVw
	6BUA4DszciV2G/TsAkUufXq0ehtMW2zAw+y5wdr0zPV3jsZ/ogyxoZWLlF6PbmDXfbY+
	w8j+Xo34klPy1r7MfHlXg3D+LU9ePfS4fyIkYPMglUpE8Ud9GnAnKcyOpa2qZA0lXsXT
	1iZ2M1Jk2B5/hLjla1858Qq30qoz9eKRnRz5LBt7Y5eMytbz/Gy5AvxSWOgI4R5XQztV
	2oRWvU4hJ8Gk8383B8ru8cqW2jzEk245bBnGSVVKoTs8xUWv1EiY82UcfnMzAX2P3qXH
	9ZMQ==
X-Gm-Message-State: AOAM5312e+7CwzemGJvgysUi0e1TBOgTPfpBFiQ161Vj9HbZ0VRFtX7W
	dm67EgAIBL9o97l8fqQqvJAHlsId9u8=
X-Google-Smtp-Source: ABdhPJxweRrvW+oB8wwBFrmqRmcNMcUappw3nWGMgWoF/TXLywIbzlR2ma3RQrAf17tbs77lx4KIVQ==
X-Received: by 2002:aca:ed51:: with SMTP id l78mr3689885oih.144.1608839527615; 
	Thu, 24 Dec 2020 11:52:07 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:39d7:2347:7aba:5b71?
	([2601:3c2:8200:9360:39d7:2347:7aba:5b71])
	by smtp.gmail.com with ESMTPSA id
	q18sm7074284ood.35.2020.12.24.11.52.06 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 24 Dec 2020 11:52:06 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
Subject: Re: Getting Reacquainted with Linux
Date: Thu, 24 Dec 2020 13:52:05 -0600
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
	<alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
Message-Id: <DBE701B8-9CF8-4D40-9F09-2DF9850568FA@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0BOJqDjI004680
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A few times I have had the dvd or stick work with my usb soundcard.
But when rebooting, I had to plug speakers in to the computer.

> On Dec 24, 2020, at 1:49 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Maybe from console try running startx after a reboot so your system is in a known state.
> 
> 
> On Thu, 24 Dec 2020, Linux for blind general discussion wrote:
> 
>> Hi,
>> 
>> 
>> 
>> It has been a while since I have created a Linux environment but I got a
>> Debian install loaded by booting from a CD and using the talking installer
>> that was one of the options.
>> 
>> 
>> 
>> All that is great but now the install has finished and I'm trying to get
>> Orca going.
>> 
>> 
>> 
>> I've brought up the command entry with alt+f2 and entered orca.  If the
>> screen reader is starting I'm not getting any speech output.  I've tried
>> orca -s and can get the Orca preferences and speech and braille are both on.
>> 
>> 
>> 
>> Does anyone have thoughts on what I might try here?
>> 
>> 
>> 
>> Kelly
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

