Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA439456770
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 02:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637285275;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7G91CJv1TMu+SVX493mzwDJwqMDyjvu2bMTUuTQRh9g=;
	b=MjrvSrFyZhsb3w0GDlFzivso5azE9XrvcNQdqssChFCJW6Agq1H6c3ZUekBYZ1ZfI95dy8
	QExTyGZoFUfdf/+ENau3w+6sjucAsF1rDb8PWAL6PCBICFTd9iP+vYP7ZXTJvY5NXuNT7Y
	DT16VQPxEyM2mxayf6tFt8R7UNSoUB4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-270-QgA4HW_0Pia_eVrIG_ft_w-1; Thu, 18 Nov 2021 20:27:52 -0500
X-MC-Unique: QgA4HW_0Pia_eVrIG_ft_w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6F0C80A5C3;
	Fri, 19 Nov 2021 01:27:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFC8610190A7;
	Fri, 19 Nov 2021 01:27:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08CD24A702;
	Fri, 19 Nov 2021 01:27:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ1RiBl016278 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 20:27:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BF54E404727A; Fri, 19 Nov 2021 01:27:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8BAC4047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 01:27:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DE1F803DDA
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 01:27:44 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-417-ciIJZ6XMO4OwQvsniqFx6A-1; Thu, 18 Nov 2021 20:27:43 -0500
X-MC-Unique: ciIJZ6XMO4OwQvsniqFx6A-1
Received: by mail-qt1-f182.google.com with SMTP id t34so8075113qtc.7
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 17:27:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=mmXulWLxloT2R44MEv+y44YuXEc6bdv+QMiWu5NkxOA=;
	b=F1+SRG62qlLkbAxlen5JslWHZV/2YMSx54poTxJXV7zkUQaATdJAbQIU1ZXx6OCS+j
	Y6H7AVw5XpFJ3oiHu+2JdUmLFZFmJFa9ffHwMwXY3DMNz7YQc8lQSrH35tt2lwlDlr7C
	IM7J7Y+6imlemGqjhHEYcR8yj2ZeOUaNjF4acO2u7Vs0Kv2Cp+XDeyehMp7RTCrVs5ZH
	Vl+ocWFTkyng/gPDO8W929OGoaCNK+FHj4csxNKsuAghUwU1v48WSx7uqVTQ8GWFUy9m
	3LxolLylFG8OK/M2K3b6+L3gA0ICy2lMy7K2dafjtHhG7jIPJwnzbWHsp3JxL//vYzMO
	8UzA==
X-Gm-Message-State: AOAM5312gFZLP28alNpS5JOjyCgS6Zj4M8RdRjorzc3WgoxOSX8qntDo
	vXmnFupLKGIp7aPMlwC/+nTr/vMqtvQ=
X-Google-Smtp-Source: ABdhPJxv4alKtcpaDMhaSSDw2JTum9wuQ7QQuoMKJG11kWhrewoiS9j6AS/qB0tMW1zBWwn5OKu+6g==
X-Received: by 2002:ac8:674a:: with SMTP id n10mr2102058qtp.145.1637285262492; 
	Thu, 18 Nov 2021 17:27:42 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	v17sm847493qkl.123.2021.11.18.17.27.42 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 17:27:42 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
	<ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
Message-ID: <5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
Date: Thu, 18 Nov 2021 20:27:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hold down alt and control and press tab until you hear "top panel. Shift tab 
past the toggle button, you should hear nothing, as unfortunately the 
NetworkManager applet doesn't announce itself. But if you press the enter key, 
the menu of available wifi networks will pop up, and it's smooth sailing from 
there. This appears to be a problem with the NetworkManager applet, not distro 
specific.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

