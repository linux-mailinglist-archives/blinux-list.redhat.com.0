Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 364DD531149
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 16:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653315595;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pk69hivo2i8nnjgVvm3ydb9pzERdMj4QuVkalVlM0dw=;
	b=Fo4RZycSLnjqgV1E8rzjlIDdqBEZIrOfSqbHKYEaqe3VOmwLY+AT09Xbekw1Y5EEEPtY78
	2CBhmWN7a8jHPiYYrW2ktzkmJWeKnBNx4xTNUIWKhmM7Xa+5WpQswxuKf0ZmtR1wk/rHWU
	J9u+8dgpNYcvMxyePYkiG/rb8r5+/sQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-77-FsSZpDTONOukdcFaQiQHvg-1; Mon, 23 May 2022 10:19:51 -0400
X-MC-Unique: FsSZpDTONOukdcFaQiQHvg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1086D811E76;
	Mon, 23 May 2022 14:19:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C8BDB112131B;
	Mon, 23 May 2022 14:19:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 57A55194705E;
	Mon, 23 May 2022 14:19:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: I'm in crisis, help!!!
In-Reply-To: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
Date: Mon, 23 May 2022 07:19:41 -0700
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.17727.1653315588.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In general, Linux plays nicely with the CLI and thus with shell scripts.  So, here's a possible approach:

- Using script(1), record all of the restoration work.
- edit the typescript file into a shell script (eg, soundfix)
- use soundfix to restore the sound, etc.

Here is a sample script session:

=====
$ script
Script started, output file is typescript
-2- [07:11 Mon May 23] ~
$ date
Mon May 23 07:11:16 PDT 2022
-2- [07:11 Mon May 23] ~
$ exit
exit

Script done, output file is typescript
=====

The typescript file will look something like this:

=====
$ cat typescript
Script started on Mon May 23 07:11:11 2022
-2- [07:11 Mon May 23] ~
$ date
Mon May 23 07:11:16 PDT 2022
-2- [07:11 Mon May 23] ~
$ exit
exit
=====

- Rich Morin


> On May 23, 2022, at 02:57, Brandt Steenkamp wrote:
> 
> I am currently running vanilla Ubuntu 22.04, but every time the laptop reboots, which I will admit is not often, I spend more time on fixing my sound devices than I feel should be needed. This is driving me nuts!
> 
> What would you suggest I do?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

