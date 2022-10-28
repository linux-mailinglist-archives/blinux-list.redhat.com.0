Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6E261186B
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 18:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666976261;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4tmecYDU7yGthStyarS1Z1zem7jq10EXIVjcKZh0+0A=;
	b=BxyJLkQv2sI3yH3IWJo+Dc5GVLMjJ+ZU98oMmeZ5OTGfSH/pdDw7XOyH/9yBqMCaFGEE3A
	vZmFfCYO3EhUN213Uso3/xi2MWXM2d+AU9UuO1GbTy8/q99RZz75kUr2uUqigIvAj6CEqg
	BK7C0mqTkRuzwyPb68rnUdWCJa8oh3E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-296-5UnnSqfLN92Y5u9pAF5H4g-1; Fri, 28 Oct 2022 12:57:40 -0400
X-MC-Unique: 5UnnSqfLN92Y5u9pAF5H4g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 040E3800B23;
	Fri, 28 Oct 2022 16:57:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6F9FA1415102;
	Fri, 28 Oct 2022 16:57:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 09F851946A7F;
	Fri, 28 Oct 2022 16:57:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Oct 2022 12:57:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: better way to extract dvd audio with ffmpeg
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3402.1666971107.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.3402.1666971107.3004.blinux-list@redhat.com>
Message-ID: <mailman.3468.1666976249.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Have a look at vobcopy. The command

vobcopy -l

will get the title with the most chapters from your default dvd device 
and pipe it out to one large .vob file in your current working 
directory, giving it a filename that is the same as the title of the 
DVD. This looks like exactly what you're trying to do using the cat 
command you included, but without the repeated headers and bad data 
caused by the concatenation that makes ffmpeg complain. The man page 
lists a lot of other options that may also be useful, including 
mirroring the entire DVD and copying out one title from an already 
mirrored DVD or a specified mount point. You can also specify that 
multiple files be created with a given size limit, default is 2GB 
without the -l option. I did notice that my test copy made the filename 
the title of the DVD plus a 1 at the end, but I think that can be 
changed in options as well, especially if you want only one file.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

