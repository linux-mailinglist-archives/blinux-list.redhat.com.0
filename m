Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DE2531141
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 16:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653314899;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i2jCezPqK8DDawXOViXWe+WOGyXUioYdcHBG5oeBPII=;
	b=Y7jUqXYXVkiP7nZNcjzbTUEiF4NBC9y9cM0TXzXb9w8uyOQfu6Nw9CM0xlOOVoqEGg8V9K
	7Maq24AZP1pKXqbrYf4pXK1T2dJ+rgJ+mXnRr/Qa8a0U/UZ3EYDRctnDX/JbAOn3NP8/xH
	mndQ7QqPtPOWydXLnwK9cbDhE4H8ldQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-359-8qnP1oJwPi-4htQ4yELiMA-1; Mon, 23 May 2022 10:08:17 -0400
X-MC-Unique: 8qnP1oJwPi-4htQ4yELiMA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A7CB1C0897D;
	Mon, 23 May 2022 14:08:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7C11D7AD8;
	Mon, 23 May 2022 14:08:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CE7F3194705F;
	Mon, 23 May 2022 14:08:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 16:08:03 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: I'm in crisis, help!!!
In-Reply-To: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
Message-ID: <mailman.17720.1653314890.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

My suggestion would be to run a slightly older version of whatever Linux 
you prefer.
I never upgrade just because I can.
Just make sure you do your security updates.
I am not saying you should'nt play though, just do it on another partition 
or another machine if you have one.
Regards, Willem

On Mon, 23 May 2022, Linux for blind general discussion wrote:

> Hi all,
>
> I am currently running vanilla Ubuntu 22.04, but every time the laptop 
> reboots, which I will admit is not often, I spend more time on fixing my 
> sound devices than I feel should be needed. This is driving me nuts!
>
> What would you suggest I do?
>
> Fedora doesn't want to talk in the installer, why I have no idea. I tried 
> upgrading from a Fedora 35 install, but it stopped talking as well.
>
> I've tried installing Arch, but for some reason the Arch installer also 
> doesn't want to talk, and, yes, I know how it's suppose to be done. It use to 
> talk just fine on my system, but now?
>
> OpenSUSE's installer is inaccessible, and being married to a blind lady, I 
> don't have eyeballs to assist.
>
> After re-installing Slint a few days ago, something broke when I updated the 
> system to the point that I couldn't boot it at all.
>
> Now you understand why I feel like I'm in a bit of a pickle here. I refuse to 
> re-install Windows on this machine, I really don't want to take a dive out 
> the nearest window, which would be the result of me doing that.
>
> Have mercy on this dumb South African and help me out of my misery!
>
> -- 
> Warm regards,
>
> Brandt Steenkamp
>
> Sent using Thunderbird on the Linux box.
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

