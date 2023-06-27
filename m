Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F410A73F01E
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jun 2023 03:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687828018;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kwh09w/3P+DDtaIR/mSo2kq9SmN259OZLth2b1/dEH0=;
	b=LfJiYXVH3MppbzN8osAQDGUPVJpHc/pU6qtgAqajYn4kNID5OWaPpq9LbzCvwL/y0U8BeG
	JggifFM6GbO/q7YxxAIWYEOESJ8ex56OmqI7wyDHnh3juYIHfht8H4UWgpx5lHrV+0WOIk
	MwnWlv1UN/Xd7RC0nb8uwWLKMmwtRYI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-491--ypOeKiPMcCrbp_Rf0LKWg-1; Mon, 26 Jun 2023 21:06:57 -0400
X-MC-Unique: -ypOeKiPMcCrbp_Rf0LKWg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B222185A794;
	Tue, 27 Jun 2023 01:06:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4C3C6492B01;
	Tue, 27 Jun 2023 01:06:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8B75A194658F;
	Tue, 27 Jun 2023 01:06:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.568.1687823723.3098367.blinux-list@redhat.com>
References: <mailman.568.1687823723.3098367.blinux-list@redhat.com>
Date: Tue, 27 Jun 2023 01:06:38 +0000
Subject: Re: Looking for accessible cloud storage mounter
To: blinux-list@redhat.com
Message-ID: <mailman.664.1687828010.3098364.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't know how any of those services work, but if you have cloud
storage you can access via ssh, you can use sshfs to mount the remote
filesystem on a folder in your local directory tree.

On 6/26/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Dear List,
> I would like to find a cloud mounter app for Linux to mount PCloud, DropBox,
> or Google Drive without taking up room on my disk drive.
> I use Cloud Mounter on my Mac. They also have a Windows version, But I have
> not found a Linux version.
> Thanks,
> Rob
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

