Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFF2740B71
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jun 2023 10:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687940903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IQ1BgffbkomORk4j27PoPTYRg71EDyQPniVldFs5zz8=;
	b=bT2BABLdROIdAAPFOv5aVkvU3Iw/itWu95I50FoEJCOwsfqM5GQMDvFbh11U79EM1c7QLP
	/CftPQaE1cgFvm2QZrdq/BamZJ8cVU8uvT8tShETbuTbqdXOacNKrbnXPaem/HQQlEYXap
	zVct7loJTgYPNzEPGX1p/1mlm1SrqfY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-522-CsFchG2yPEiowgchwIwlAg-1; Wed, 28 Jun 2023 04:28:18 -0400
X-MC-Unique: CsFchG2yPEiowgchwIwlAg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0C08800CB1;
	Wed, 28 Jun 2023 08:28:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BB651200C0CD;
	Wed, 28 Jun 2023 08:28:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D2159194658F;
	Wed, 28 Jun 2023 08:28:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 28 Jun 2023 10:24:08 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I run a .bat file from basica
In-Reply-To: <mailman.543.1687903612.3098365.blinux-list@redhat.com>
References: <mailman.543.1687903612.3098365.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.697.1687940891.3098369.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Martin,
As I recall, the .bas files is plain ascii, so you should not need basic 
in the loop.
Just cat the .bas file and you should see your code.
Willem


On Tue, 27 Jun 2023, Linux for blind general discussion wrote:

> I haven't gone totally crazy but I need to list some basic
> programs from the mid to late eighties and there are about 17 or
> 18 so I wrote a batch file that should load each program after
> sending new, first.  What happens with each .bas program is I
> will load it, list it with the list command directed to a file of
> the same name as the program only with a .src extention.  I then
> send another new command and do the whole routine again with all
> the remaining .bas files.
>
> 	I wrote some C code back in that time period that used to
> work but one part of it fails now and I need to look at what the
> basic programs did and make it work in C again.
>
> For this discussion list, all I need to know is can I call the
> batch file in basic and can I do the list command >somefile also
> from basic?
>
> 	You probably don't want to know the rest of the story but
> that is what I am trying to do now.
>
> Thank you
>
> Martin McCormick
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

