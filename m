Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F774BC4D2
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 03:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645237595;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2SBnlVaVJp76kpqp7jsCXdlBYJgeZPYbARHEJprdz8A=;
	b=bEmzf1XG2a4j/XC6ku0iYkJ6Ifr8HWvOww+pTAKlbD5PW9CIYwlJ0Y5mRoF7CZlK9mvE8U
	V7MX536tW+8j4kdrPnERsfd16te5DWP7+qNcrGoxsA2B4v8SAk6aRpSEg32gLPIt/YByrY
	4YUscEjoctqGAiQY9kEW6tv3sqsZtmE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-512-qrPuMC1LOmmYECSnf55Sfw-1; Fri, 18 Feb 2022 21:26:31 -0500
X-MC-Unique: qrPuMC1LOmmYECSnf55Sfw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F38471006AA3;
	Sat, 19 Feb 2022 02:26:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A971245CBE;
	Sat, 19 Feb 2022 02:26:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EEA864BB7C;
	Sat, 19 Feb 2022 02:26:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21J2J43G027540 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 21:19:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 16B522024CD6; Sat, 19 Feb 2022 02:19:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11B9A2024CD2
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 02:19:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C990C811E78
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 02:19:00 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com
	[209.85.128.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-376-TI6PlyzbMZyB9onLow2BaA-1; Fri, 18 Feb 2022 21:18:58 -0500
X-MC-Unique: TI6PlyzbMZyB9onLow2BaA-1
Received: by mail-yw1-f176.google.com with SMTP id
	00721157ae682-2d07ae0b1c0so84590097b3.2
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 18:18:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=OpdkIbgHSBjejGpTnaaIrfZ2IKWpK8tqKxwlhqPdqH8=;
	b=Y7cx4XxhgZta1OHH3Ppx3Rx2NbAnCFgIJMHdkcytHQS7ZAhEPe45T8blpT+lAftJoS
	ysYWDp/yBYzzSGhpo9+C1upRlBoRCILhu5kzEWz33gsEYhMdvbJ1j/DeYce79hETNKwJ
	XGrAiZuAWS0efJxc/XBp2T1UMHpWjeWaxlT1mBUOKkxijugokOlGqULUkLQK5R++UShB
	Dn2DQxP9XNDzTJA4iM04NHVtWAeNmniKdolVk7DQUYPMjPR86M3Qqtvyd0qNmbsHswMV
	kkTcnEnjs2EWHf46rvVt+NNS3/c/k3LGfg2l/bBv1MmnPrvGt8Wsq5LBOAuYeQzjVVEe
	4TnQ==
X-Gm-Message-State: AOAM533XEXNtDxwBWhnZcevtH5tQzur9fijfJd2ihJ1ABagr1NOwIZ1v
	hYWLS9py/A7fhjbAfidzMyZ8LLrYwRg3phUCds/Xzhg3m+U=
X-Google-Smtp-Source: ABdhPJwJEuHsBt99tZUUi+UaOnxLHZ57dIjkr6iYt7TsGCXH693SwrTOCcViTfvQAbugPW27LKsT3j3lu0g7joq0avo=
X-Received: by 2002:a0d:e254:0:b0:2d6:b453:3188 with SMTP id
	l81-20020a0de254000000b002d6b4533188mr8760071ywe.116.1645237138044;
	Fri, 18 Feb 2022 18:18:58 -0800 (PST)
MIME-Version: 1.0
References: <CABKqQvH20Loc2_se1mdNFU88jKc6Qfz1QDqnf=iKRoRDLoP_eQ@mail.gmail.com>
In-Reply-To: <CABKqQvH20Loc2_se1mdNFU88jKc6Qfz1QDqnf=iKRoRDLoP_eQ@mail.gmail.com>
Date: Fri, 18 Feb 2022 20:18:46 -0600
Message-ID: <CAGJxbF60i1058w_AooSVG4Og7yaXfe5TcShD_iMP53r1Fq15Og@mail.gmail.com>
Subject: Re: Problem with VS Code and the Braille display
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux's braille support, especially in the GUI, is quite... untested. You
can always file an issue on VS Code's Github page.
Devin Prater
r.d.t.prater@gmail.com




On Fri, Feb 18, 2022 at 5:48 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> The first half of my display is always taken up by the name of the file!
> It should show nothing but the contents of the line in the file that I
> am editing. How do I fix it? Who would want to waste their display by
> always showing the title? I don't get it.
>
> Amanda[0]
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

