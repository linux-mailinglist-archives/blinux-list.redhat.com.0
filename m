Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD4C6A6567
	for <lists+blinux-list@lfdr.de>; Wed,  1 Mar 2023 03:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677637228;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n5uvBgJYQZPTivv+u8a87AOUPznU4HCXI6RXiTnbomA=;
	b=Y4MUO0SasIQhogAZ6O03CeHQUOkkuTchB4gokTO99ce1cswTNa2iD0/W70bsIUpT69lp9a
	BgFhcPtIpf316t8ldUzRO63IvkM7YKVLFLB7QwOrit2ZkbRqkRs7wjZubut2HYQoLkR1Q4
	iRBHoIm2a1vh2Y2J6PHhGikpnsXIv4E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-121-OzBdEkBVNwG4vOkOnmPc1Q-1; Tue, 28 Feb 2023 21:20:25 -0500
X-MC-Unique: OzBdEkBVNwG4vOkOnmPc1Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C49486476B;
	Wed,  1 Mar 2023 02:20:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EB25118EC6;
	Wed,  1 Mar 2023 02:20:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 60A6519465A8;
	Wed,  1 Mar 2023 02:20:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: Looking for a podcast player
Date: Tue, 28 Feb 2023 20:20:05 -0600
References: <mailman.959.1677626979.3183645.blinux-list@redhat.com>
 <mailman.999.1677627794.3183649.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.999.1677627794.3183649.blinux-list@redhat.com>
Message-ID: <mailman.1034.1677637220.3183650.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I will be interested in hearing of the program when ready.

> On Feb 28, 2023, at 17:43, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi Rob: Actually my Linux expert is working on 1, which essentially I've been useing for some time, but it has some issues before we are ready to release it. You are the 2nd person who is anxious for this, but `trust me, you will really like it. Several years ago, there was one I liked, but it was written in hascal-and-so we couldn't make alterations. I am quite tempted to show you an opening menu. OK
> number 1 add category
> number 2 edit category
> number 3 add new podcast
> number 4 edit existing podcast
> number 5 delete existing podcast
> number 6 choose episodes to download
> number 7 start downloads
> number 8 search for podcasts
> number 9 delete from download queue
> number 10 update all podcasts
> number 11 archive
> choice
> Back again live: So, you can see its written with a screen-reader in mind
> Chime
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

