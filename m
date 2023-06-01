Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8138071F066
	for <lists+blinux-list@lfdr.de>; Thu,  1 Jun 2023 19:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685639651;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FwFF49TsqFc/K/RYMYIxzDZSonkOK1ExjHtkGUhINpI=;
	b=B2gk6GfRiUALtz1WqgE3ePI9za3hUYNixPDlGviwaGMLUu8Q9B3mUBJePCpJCOjmMFoK4t
	47Q/6VxsQFICqCIhAqLwfD6stjv5SNki6dCwLQVHhZwNBb5D69u8qW+mcOaPJOEeUO0qda
	zaO9e2zeh3FEwvUO1aB4q3OlyANrpYI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-8-Ln8w47D5OYqfW1kel958CA-1; Thu, 01 Jun 2023 13:14:07 -0400
X-MC-Unique: Ln8w47D5OYqfW1kel958CA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1011C185A791;
	Thu,  1 Jun 2023 17:14:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6B04240C6CDF;
	Thu,  1 Jun 2023 17:14:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D95D519465A4;
	Thu,  1 Jun 2023 17:14:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 1 Jun 2023 19:13:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Good minimal distro today?
To: blinux-list@redhat.com
References: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
In-Reply-To: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
Message-ID: <mailman.1570.1685639644.2653573.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

answer in line about Void and Slint

>I've also read about
> VoidLinux. Has anyone tried it yet?

I know at least one happy Void user, Chris Brannon: He is blind but that does
not imply that it is easy to install and configure Void. To contact Chris check
http://the-brannons.com/


> I know about Slint as well, but the manual
> states that it requires 50 gb disk space at least, and I'm currently out of disk
> space, around 15 gb at most.

Actually a Slint system installed in "auto partitioning" mode weighs around 10G
just after installation, but you need space for users data and a btrfs file
system should have a few G of not allocated space, so yes 15 is not enough.

I consider providing a "minimum" installation but we are not there, yet, my
priority is to provide a live ISO.

But you can install Slint on a 64G USB stick: in "auto" mode if the stick is
plugged in when you type "start" to start the installation the installer will
propose you to install on any drive of size at least 50, fixed or removable,
thus including USB sticks and SD cards. The installation will take longer (up to
40 minutes) but the installed system will be reasonably responsive.

Cheers,
Didier
-- 
Didier Spaier
didiertatslintdotfr

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

