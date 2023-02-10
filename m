Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7161C691A61
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 09:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676019163;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kqV255XevuFYomLRVFVYEnQRDeAdSmc7dwrHa3Bm2g4=;
	b=BkbDeyKb2vOpMopuStBzwp894eoUoRtux/TFX63Do2lTu9CZvRNbnalwGIw65B/nZfyxVX
	fRj0P0nuk9csaHhhCvzFPq/dBlkjTLhhQruCRYzks1mVNO56jkLhqZ/kijPzvC5sy1FM1n
	HJMxms79T4TJr3wtD4ynPhWWGcEC4Oc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-kt3Q3O7dPv-V0d1rQYqPgw-1; Fri, 10 Feb 2023 03:52:40 -0500
X-MC-Unique: kt3Q3O7dPv-V0d1rQYqPgw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A80AE857A87;
	Fri, 10 Feb 2023 08:52:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9CB8B2166B29;
	Fri, 10 Feb 2023 08:52:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 28A7619465A2;
	Fri, 10 Feb 2023 08:52:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 03:52:33 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: carbonyl: Chromium based browser built to run in a terminal
In-Reply-To: <mailman.5695.1676017179.8169.blinux-list@redhat.com>
References: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
 <mailman.5695.1676017179.8169.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5759.1676019156.8175.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Oh no, another browssh imitator!



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 10 Feb 2023, Linux for blind general discussion wrote:

> Am 09.02.23 um 23:16 schrieb Linux for blind general discussion:
> >
> > has anyone tried carbonyl already with brltty or espeak?
> >
> > https://github.com/fathyb/carbonyl
>
> OK, tried it myself now. Does not work unfortunately :-(. It can be started in
> pure textbased terminal, but the interface is still graphical and not like in
> w3m or lynx :-(.
>
> Ciao,
>
>   Schoepp
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

