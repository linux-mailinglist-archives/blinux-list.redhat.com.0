Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9ACF3228B86
	for <lists+blinux-list@lfdr.de>; Tue, 21 Jul 2020 23:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595367699;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4Z8888YHz99spH2emVZ3v/T+gnNLk0iWd9DtDSMAT2A=;
	b=MviEA8hdZAhPYsJxI7ZlIjc6JJi2Mix6wwuNaagBXLXXOwINE1Y1xePnw4F7MUV3z7HH5R
	g11Mukt+M/BvC1a50tU/hKWylRFdSaV1Szw/WjlfXyZom2bZIZEEEFGcG1oNrrsX3tY8bx
	hC6uN4RZhoo2/Pm1BzBuIReg023hcKQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-sa2PSTD8MgOhxNloDgdjhA-1; Tue, 21 Jul 2020 17:41:37 -0400
X-MC-Unique: sa2PSTD8MgOhxNloDgdjhA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51FDB10059A7;
	Tue, 21 Jul 2020 21:41:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A0AF60E1C;
	Tue, 21 Jul 2020 21:41:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3BF291809557;
	Tue, 21 Jul 2020 21:41:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LLewvd011883 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 17:40:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 68D2B2166BA2; Tue, 21 Jul 2020 21:40:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 643802166B28
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 21:40:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57ED18007C9
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 21:40:56 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-273--Fq0CGaBNVK3p_wpwf1J_w-1; Tue, 21 Jul 2020 17:40:53 -0400
X-MC-Unique: -Fq0CGaBNVK3p_wpwf1J_w-1
Received: by mail-oi1-f177.google.com with SMTP id l63so18517637oih.13
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 14:40:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=H2oxpF7wJ2IHRXgQ3FT7NBNWHkj9yjO6e9MhTbxb9uk=;
	b=kiLVAgspdD2E4FWYkp8ASv19cW1GEcin9AW/+Z4d7n96a7euRFFBnE7w8CiNe6TPFa
	nhSY2bF2cCerZfDd8S+OXGQW5BLvkZwZ41y8BgSzJZMpRrdG7vaom2npnbfZH4j+a+1V
	SOlegu1GxE7VKnr1EPSOnK15kdsYfFqGWwx82wDruRFcQvtrFPCS405pHLH6f0Wg8cLL
	Joqdtoxe2bKIrsp939kUBrTenKvMkCCoxCIVR8s9KTH8A7zc+WkdOyUPdCTr6prC0G9Z
	hGCsjflgzt89xafbdz5wv0fB0PsLqs4Hj5Sok2G7nOdjjyernjFSVSWvPol/8qW5OVNH
	nHyg==
X-Gm-Message-State: AOAM532DdFVSxZjMgzt2gXstF4tT6Ca8c/1iWLSg4R/2fRKBupCrO0n0
	Zoa/97FDic8OrcH/mhc3FELrMbp0KXY=
X-Google-Smtp-Source: ABdhPJxlruquGYcje9XxpfKXGFs62nxNTZm8FUA4KhP+npxCIP/SykCHtEEq+hpaMBG2pxzuCXlIdg==
X-Received: by 2002:aca:5347:: with SMTP id h68mr4847338oib.168.1595367652085; 
	Tue, 21 Jul 2020 14:40:52 -0700 (PDT)
Received: from DESKTOPIOCCUEU (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id t25sm918964ots.64.2020.07.21.14.40.51
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Jul 2020 14:40:51 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <747E6C6B-83F6-498A-904F-BD93B9E8FB94@gmail.com>
In-Reply-To: <747E6C6B-83F6-498A-904F-BD93B9E8FB94@gmail.com>
Subject: RE: Problems wealth the 2020 Version I of Ubuntu linux download.
Date: Tue, 21 Jul 2020 16:40:48 -0500
Message-ID: <010c01d65fa7$99953d00$ccbfb700$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQL+bxMHMHjF2Jk2/p7h+6LQGLi0/qbCcFrA
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It will be compatible with Intel architecture. AMD64 just means it's a
64-bit distribution. The industry settled on AMD's 64-bit architecture, so
this includes Intel as well.

--
Christopher (AKA CJ)
Chaltain at Gmail

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Tuesday, July 21, 2020 3:28 PM
> To: blinux-list@redhat.com
> Subject: Problems wealth the 2020 Version I of Ubuntu linux download.
> 
> Good afternoon I am I have a very interesting Ubuntu  installation
problem.
> Unfortunately this Iso Image is not downloading correctly. Just so that
everyone
> is aware I'm trying to install this distribution into a virtual Machine on
my  Mac
> by using I am using Vmware.
> 
> I can think of to possible issues that might be causing this problem. One
I'm
> downloading this Image from the main website, so network traffic might be
too
> high to get correct Image file. The other possibility is that this Version
of Ubuntu
> is not compatible with Intel architecture. Because the file name States it
is four
> AMD processors.
> 
> Does anyone no i'll be reliable alterNet download site four this Image?
The other
> question if people on the list Think that the version of Ubuntu is
incorrect, what
> version of this distribution wood be more appropriate four a virtual
Machine
> installation on  a 2020 MacBook Pro running at 2 GHz, this processor has
turbo
> boost up to 3.8 GHz. And has a 16 gig i'll be fast ram. Any suggestions,
or advice
> on how to solve my problem.
> 
> Sincerely Maurice Mines.
> PS this is the 2020 Desktop Long support Version oh Ubuntu.
> 
> Please note the above text may have errors because I'm using apples
built-in
> dictation software. If there something written above that you did not
> understand, please ask me what my original intent Wise? I will do my very
best
> to attempt to clear up any misunderstandings that may arise from the
contents
> i'll be above email. Thank you very much four Reading this.
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

