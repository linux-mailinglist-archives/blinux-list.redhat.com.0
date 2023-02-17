Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF94B69AFC3
	for <lists+blinux-list@lfdr.de>; Fri, 17 Feb 2023 16:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676649017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PByv6dx3LvgiG74OabyIhmYjmSrL41R1qN+840iwdAU=;
	b=dY7/8m0WCnIovQ9pHLhpPR9lDQczG7la7A9OAEvIikh7Rm6VPja6MdvBaFxH7gebTt7tLC
	uKj/z3uhmQUvgyiC6wA3BdtuYUiGolRezQDETEkpyr6RohV+A32hY2gFZI/DBUdHDs2VnE
	hLaPcX5D+M+fryqrKFd2EECcpKrtMH4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-AX8yIs_IMiumlHiQUgUedw-1; Fri, 17 Feb 2023 10:50:14 -0500
X-MC-Unique: AX8yIs_IMiumlHiQUgUedw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B5FC1C17426;
	Fri, 17 Feb 2023 15:50:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 794E52026D2A;
	Fri, 17 Feb 2023 15:50:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 345CE1946597;
	Fri, 17 Feb 2023 15:50:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 17 Feb 2023 10:50:07 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible way to install Ubuntu server
In-Reply-To: <mailman.273.1676647855.3521.blinux-list@redhat.com>
References: <mailman.224.1676621477.3513.blinux-list@redhat.com>
 <mailman.228.1676622097.3517.blinux-list@redhat.com>
 <mailman.273.1676647855.3521.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.253.1676649010.3515.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

preseeding is the preferred protocol for unattended installs.  I found it
more complex than kickstart though and didn't find a preseed example on
the web I could use when I did that remote unattended install.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 17 Feb 2023, Linux for blind general discussion wrote:

> On 2/17/23 09:21, Linux for blind general discussion wrote:
> > Have you ever used a kickstart file?
> >
>
> I would have thought that on a Debian based distribution, preseeding
> should be the way to go! :)
>
> --
> John Doe
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

