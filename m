Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C749F08D
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 02:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643333601;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1dlkiaU2uFOl7DbTjwYVPf2NPWe/TQ8RE04lPirWo5E=;
	b=f4t/oI+riE7VZxaWKitoiZQgu6K3BRw1ItztGgMe1GCUH4U4noAG2y5YGo+LLUo52V9Iya
	4yqAv8kN8i2dC3U33dueIICgDI8DhABK3YpsCZFeOr/dkeSkFDvBx2cEvmNh3JQpBXv1Uz
	MagCu6bSAGb7Rip05cQyqi+WlvtY/XM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-hDOgCYPROUyiDdMD1qG2xQ-1; Thu, 27 Jan 2022 20:33:17 -0500
X-MC-Unique: hDOgCYPROUyiDdMD1qG2xQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF17B1083F61;
	Fri, 28 Jan 2022 01:33:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AC2019724;
	Fri, 28 Jan 2022 01:33:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 168664BB7C;
	Fri, 28 Jan 2022 01:33:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S1X4SM031140 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 20:33:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CCA0F1120AC8; Fri, 28 Jan 2022 01:33:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7F551120AC5
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:33:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5552F2A2AD64
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:33:01 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-570-RJu-FDv2PjyZ9bYcbh_0Kw-1; Thu, 27 Jan 2022 20:32:59 -0500
X-MC-Unique: RJu-FDv2PjyZ9bYcbh_0Kw-1
Received: by mail-oi1-f178.google.com with SMTP id x193so9621863oix.0
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 17:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=XoGzb/Ql/4JowtSH4iUI/vcir7QPUlKmVNQmDBQIGEQ=;
	b=lAf3VCfO2xY2pwnG3A0bG+7RsPgyxMq07e4ZvDYsZ/PWHD9w76veDi/kIh5ukxq5HC
	U4Yz5HpY+1dcgFmlKb+RIundpyCEMfziwWzsRkT+hhbzX7w9Rpe2jQiY3YlaVLQ1kRjA
	JgDKvgvuGODzeY9p/Aq+D5Hu9aYimkSOkP/eJsSmeCDnL43It75tesssdjmqEwTPrC9O
	NOEtVIx+V0nezeMfplDLg+eZH9b6KwIf3bQQ5IOcnqzhPjAHNchLqu12wHZP0ZHwzd+Y
	/us5fNXxwDSyJJ/qzdf/tSrz1Wgs633OGnzjlklDkMm/rfT+uYOn/BxdzP/OxIqlioIV
	liDA==
X-Gm-Message-State: AOAM533Q4Q7VKvcmsxao0p6+Vh8TQOmIDVAsRAtBkPai9duyF3N1Gmgy
	G3bjWlQ4H+OLqBHEaWF1L6hTXZ/AUfE=
X-Google-Smtp-Source: ABdhPJwDb0KvO8fYgdF7akfiT7aGIHUC4Fy77L9a70yR4z8InFsC8t0ALqSTzvPq2kSUNbOT9SK5NA==
X-Received: by 2002:aca:30ce:: with SMTP id w197mr3900446oiw.146.1643333578767;
	Thu, 27 Jan 2022 17:32:58 -0800 (PST)
Received: from smtpclient.apple (075-113-161-023.res.spectrum.com.
	[75.113.161.23]) by smtp.gmail.com with ESMTPSA id
	c22sm9700953oot.38.2022.01.27.17.32.58 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jan 2022 17:32:58 -0800 (PST)
X-Google-Original-From: Maurice Mines <Maurice.Mines@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Date: Thu, 27 Jan 2022 17:32:55 -0800
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<f37c70b7-56fb-5104-f60a-636740db29cf@slint.fr>
	<2B6D227E-CAFB-42F3-926D-2728E4D7139D@icloud.com>
	<9ae0dbd8-ea3c-1ca9-e64b-6bfe5ef59a96@panix.com>
To: blinux-list@redhat.com
In-Reply-To: <9ae0dbd8-ea3c-1ca9-e64b-6bfe5ef59a96@panix.com>
Message-Id: <3A470EA4-EAEF-4BD9-AAD1-D1682D47E3B3@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20S1X4SM031140
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi can you get  speach after the install? I I  am  understanding  you  can  have speech while installing? This  if this  is  true  I  will  need  to download  this iso file.

> On Jan 27, 2022, at 5:12 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> When installing slint, speech starts up automatically when slint works
> correctly.  You have to turn speech off once the installation starts if
> you don't want speech.
> 
> 
> On Thu, 27 Jan 2022, Linux for blind general discussion wrote:
> 
>> Hi Didier,
>> I read the instructions but I was still confused.
>> If I run Slint live ISO  in a VM, how do I get speech?
>> Thanks,
>> Rob
>> 
>> 
>>> On Jan 27, 2022, at 6:44 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> Hi Rob,
>>> 
>>> did you try Slint?
>>> https://slint.fr/doc/HandBook.html
>>> 
>>> Cheers,
>>> Didier
>>> 
>>> Le 28/01/2022 ? 00:22, Linux for blind general discussion a ?crit :
>>>> Dear List,
>>>> This is my third attempt at Fedora.
>>>> I setup a VM on my Mac to try
>>>> Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso.
>>>> I pressed alt+F2, typed orca and enter.
>>>> I get no speech.
>>>> What can be wrong?
>>>> The same thing happened with Fedora Workstation 35.
>>>> I?m about to give up and stick with Accessible Coconut and Linux Mint 20.03.
>>>> They both work out of the box with no problems.
>>>> Thanks,
>>>> Rob
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

