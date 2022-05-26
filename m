Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 161B453531E
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 20:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653588371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7ANzHAG5zsMTRB6M5ZF62h8VcklY8a1hXTKYS3FONfw=;
	b=N+GYkSzxi+s2ldSbf1ujA88IDghCygs8qfNJXh/Zn4R6odtBzbrGCdTIaQfgLtjjXIrLQb
	rBy9+4Go9frtdKFin3oFkY7Gbb5KDY1PUWVtsJT4pgYPqVbb5i0y46Y1bf8jhkPm7yAxUZ
	20hBFsvQM/0czUN//KD8DYFKXAZS4Nc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-22-NnPOlkRqO-i3XvkJYZSy8g-1; Thu, 26 May 2022 14:06:08 -0400
X-MC-Unique: NnPOlkRqO-i3XvkJYZSy8g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3E18811E75;
	Thu, 26 May 2022 18:06:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 734F02026D64;
	Thu, 26 May 2022 18:06:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B6115193212D;
	Thu, 26 May 2022 18:06:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 20:05:56 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: alpine and Gmail future changes?
In-Reply-To: <mailman.18876.1653584281.111206.blinux-list@redhat.com>
References: <4e42aba7-4da4-8e33-0968-b7492da81094@gmail.com>
 <933cd1dc-db4e-f903-b964-8eb0f3be2019@busby.net>
 <mailman.18876.1653584281.111206.blinux-list@redhat.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
Message-ID: <mailman.18413.1653588364.111210.blinux-list@redhat.com>
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
Cc: alpine-info@u.washington.edu
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The best I can think of, is to make alpine talk to exim4 for sending and 
fetchmailfor receiving emails.
Exim4 I am sure can  handle sending to gmail and if there is a version of 
fetchmail that can handle retrieval, you should be set.
So you configure alpine to send mail through exim4 on your local machine 
and to get your incoming email throughfetchmail.
Regards, Willem


On Thu, 26 May 2022, Linux for blind general discussion wrote:

> Hi folks,
> I am  both starting this thread, and including the list where the question is 
> rather important.
> My goal being helping those blind Linux users who rely on alpine to manage 
> their gmail account, and letting them know how to reach the alpine list too.
> I recall? there might? be a solution already in place, but just in case can 
> someone articulate how to keep alpine working with gmail in light of 
> anticipated changes by google?
> best,
> karen
>
>
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

