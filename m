Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8724F2834FF
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 13:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601897473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0iQSJqWdEmglpRdC52oUqtYy8SjIcosVyXDhithvMek=;
	b=OmP0jZnbiQ5qSR/H5qhcAsk/5SQuZvlZVWE5nO1V7BMy1AxkpNyzIv/kamOoT+tnu6Axnv
	AI1b6RUheuDc+QMhXrgrpc2iOw+8BeL2Vrm7eCUZdKpnMSXAQzlTJ1+JnGAUoChbmVzZE1
	PfBfj2MPPnvkge0481fOD8MUgWn3ecU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-tG8RgELjNROb1CX0jzgm2w-1; Mon, 05 Oct 2020 07:31:11 -0400
X-MC-Unique: tG8RgELjNROb1CX0jzgm2w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53CAA801ADF;
	Mon,  5 Oct 2020 11:31:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5959A78818;
	Mon,  5 Oct 2020 11:31:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 496A444A4A;
	Mon,  5 Oct 2020 11:31:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095BUpnq026549 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 07:30:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2D18C111145A; Mon,  5 Oct 2020 11:30:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28D8A100335C
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 11:30:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FCFB8582A7
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 11:30:49 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-186-Ju3mZ6YsP2CRMq5q774FsQ-1; Mon, 05 Oct 2020 07:30:46 -0400
X-MC-Unique: Ju3mZ6YsP2CRMq5q774FsQ-1
Received: by mail-oi1-f173.google.com with SMTP id u17so2184894oie.3
	for <blinux-list@redhat.com>; Mon, 05 Oct 2020 04:30:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=ge6323PYj6HumySkaQ2+v8Uo/5MQK/8Vpe3jTbPjIYQ=;
	b=NMesBd/6TkCa0jz4A+/vRFfdEEnVr5WB1ZMGNZ08U/3pfEudKAcB4i1XAlxraOxJJS
	oJ3hCIFni+2tIMI2oCEvHItPhO7v6bB/ECH0eXAbhgq0Qzyv0NIdqw0OEOzOlrNPVQT/
	K8pObEvU578m3yHbMSD7SM3KpXJWBCA4DfHOZoUo1jlmy1bbsq5CQngPQWKk5G/fnw5V
	R++bJ/SVkJ44f/5eBXVmz8IbYYc5i8Afpx6oLhpAgiHttK24wHie2sCnM0aPqawPKEW3
	kbSUc8RBmtR7wIeNjCrwcX5j4okKNbNw+9QN/Mthw3men+lEar20ShCgCWPdWxm9UqWA
	19kw==
X-Gm-Message-State: AOAM5326WoC4bIUnZyNuXQ22knzwBqRlXTytc96MrO58qUmbelJwCDtE
	/t2Mocxo23LSCl8I5mo//dxaed4Kn3RTxQ==
X-Google-Smtp-Source: ABdhPJyG62solbHfGf1ZrMvX8DyRbDJv+vPYSuqAZREl74G5E9v4dAn3BrX2SqdrGQ6P58QCxg8Zsw==
X-Received: by 2002:aca:aa8d:: with SMTP id t135mr5631342oie.76.1601897445441; 
	Mon, 05 Oct 2020 04:30:45 -0700 (PDT)
Received: from DESKTOPIOCCUEU (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	p20sm2800690oth.48.2020.10.05.04.30.44 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Oct 2020 04:30:44 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B.ref@yahoo.com>
	<A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B@yahoo.com>
In-Reply-To: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B@yahoo.com>
Subject: RE: Does anyone have a guide to the E speak screen reader?
Date: Mon, 5 Oct 2020 06:30:40 -0500
Message-ID: <001801d69b0a$f4c7ee90$de57cbb0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQFdo7fQmihV15abBugW3WGkSO4wGAGzVAG5qm0zhIA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

There is a TTS called eSpeak but there isn't a screen reader called eSpeak.
Are you asking for information on the TTS called eSpeak or are you looking
for information on a screen reader, like Speackup?

--
Christopher (AKA CJ)
Chaltain at Gmail

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Sunday, October 4, 2020 12:27 PM
> To: Linux <blinux-list@redhat.com>
> Subject: Does anyone have a guide to the E speak screen reader?
> 
> Hi guys,
> I was wondering if anyone had a user guide for this screen reader? I am
new to
> Linux and I just started taking a college course for it and still
exploring possible
> options to navigate.
> Any help would be greatly appreciated. Thanks,
> 
> 
> Ashley Breger
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

