Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F07500671
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 08:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649919279;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y37sGFXRQhpDzdEnRzgZqUL7jkHdVCfaYLx4e/rUKvM=;
	b=Wxu/hJDF8lMCMzbQzfAE5DtA4eeh2yUyqeVWz37iRxIky4bSrtHA6G76MHgyo1SLegQ7rG
	sgk2qipqAn7ziFRzCCkzjFOJvN5DuI9Q92wm0TOJh8HCbFGbyICbFQ6vIzWTFSTrtl/yC4
	hGxsbSLzUAias1YKHRJGek9KkHPeuR4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-360-eVm-BUthPnOnZe_liWif-w-1; Thu, 14 Apr 2022 02:54:36 -0400
X-MC-Unique: eVm-BUthPnOnZe_liWif-w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8069101AA42;
	Thu, 14 Apr 2022 06:54:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D4E80C2812C;
	Thu, 14 Apr 2022 06:54:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6C4881940352;
	Thu, 14 Apr 2022 06:54:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <mailman.8497.1649898215.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8497.1649898215.111206.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 01:54:18 -0500
Subject: Re: FYI - Command Line Programs for the Blind
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8266.1649919273.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thankfully, the place I work at teaches NVDA unless JAWS is absolutely
needed. We don't want our students going home and not even being able to
afford JAWS if they're not going into college or something.
Devin Prater
r.d.t.prater@gmail.com




On Wed, Apr 13, 2022 at 8:03 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I don't know, I could imagine the government telling Freedom
> Scientific(or any other anti-consumer software company), "You can
> treat the civvies like criminals all you want, but you have to give us
> copies without the bs."... or such companies offering a clean version
> of their products for governement use to turn a blind eye to their
> anti-consumer behavior... or just to ensure most highschool graduates
> are taught on their software and will be unwilling to consider their
> more affordable competitors.
>
> And yeah, I'd like to at least upgrade the system drive in this old
> workhorse to solid state or just buy a whole new system, but my budget
> doesn't have much room for purchasing hardware I don't have an
> immediate need for... and I don't know the first thing about swapping
> out ram... still, I like that Linuxactually gives one options when it
> comes to older hardware beyond "run old version of Windows and hope
> Microsoft doesn't force an upgrade that effectively bricks your
> machine due to low specs" or "buy a new machine everytime there's a
> new Windows version, even when the old one still works fine".
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

