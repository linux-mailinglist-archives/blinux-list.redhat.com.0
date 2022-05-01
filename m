Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 634695167DE
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 22:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651438067;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V+6fRb3z5sAxDUN7by8Xqs5EXInaPWgWuwh59xgtoGQ=;
	b=ZtMoXF/KgNTAO7UmFs+77Noa6iWAX9qHL8b+pDd4uPqtOS3CTjmwwzIGJUMpkoMb7Ccon9
	DQwKaXlg1zDRt3pIXjRAYtQaLa7wXSi7DEm83j6C90JqFKA3b0psYNuSDtFTOlBjWje3JF
	rm4Bk5zpLYDa5MuddvKWWrWNofV75as=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-548-dKLav2qRNGGpSxsDWFyMaA-1; Sun, 01 May 2022 16:47:44 -0400
X-MC-Unique: dKLav2qRNGGpSxsDWFyMaA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADF3185A5A8;
	Sun,  1 May 2022 20:47:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 252DA40C1244;
	Sun,  1 May 2022 20:47:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 790631947063;
	Sun,  1 May 2022 20:47:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 1 May 2022 15:26:28 -0500
To: blinux-list@redhat.com
Subject: Re: Does anyone know of any accessible SQL programs for Slint?
In-Reply-To: <mailman.12284.1651434266.111201.blinux-list@redhat.com>
References: <DF6D9E19-7E4B-4B5F-ABE2-B691251F97D7.ref@yahoo.com>
 <mailman.12167.1651432285.111205.blinux-list@redhat.com>
 <mailman.12284.1651434266.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.12405.1651438054.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I know that at least sqlite's CLI interface lets you use

  .mode line

which turns data into a linear format that's much more understandable
when read aloud, data like

  sqlite> .mode line
  sqlite> select id, name from users;

  Id = 1
  Name = Tim

  Id = 2
  Name = Rich

  Id = 3
  Name = Ellen

PostgreSQL has a similar "expanded" format.

I find it particularly useful when there are lots of columns and
things start wrapping weirdly, making it hard to trace which column
is which.

If you really *do* want HTML output, the sqlite ".mode" command does
also offer HTML output as an option:

  sqlite> .mode html

which you can then pipe to your favorite HTML viewer.  Similarly,
PostgreSQL's "psql" client has an HTML output mode which you can
invoke either as a CLI option

  $ psql --html

or by enabling the option interactively

  (psql) \pset format html

Hopefully this gives you some options for getting more useful output
from sqlite or postgresql.  I don't use mysql/mariadb much, so I can't
speak as to whether it offers similar features.

-Tim


> One thought I have had, from time to time, is that it would be nice
> to have tooling that transforms various tabular output formats into
> HTML tables.  This could let the user employ screen reader
> navigation to crawl around the table.  However, I have no idea if
> anything of this sort exists.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

