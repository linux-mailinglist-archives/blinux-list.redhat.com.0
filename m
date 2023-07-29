Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3534E767CC7
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jul 2023 09:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690616134;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5A36yo8W86VkQ29hhTlUpqt9WQuHX/2nRc01XlE5kyI=;
	b=UAgobhnhwo7gUCRozQfwTEMtFEVl2iL0cjkdHY2a0hUcIp93zgri3VY3R77y+PHbPD2TTy
	f7Goo3qnclq8wflFbofxFHrI8stVlBRXLgrHd04y6Z7y1b/I7II86GdXeNfO4Ey+Huc/eP
	FKpIYr3NgGL7b8d4Eyh2f1yzr60d1KI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-297-wlw92qtlMMmD5wsvumRGHQ-1; Sat, 29 Jul 2023 03:35:30 -0400
X-MC-Unique: wlw92qtlMMmD5wsvumRGHQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 154EC85A58A;
	Sat, 29 Jul 2023 07:35:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 56B28145414E;
	Sat, 29 Jul 2023 07:35:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 98B1819452C9;
	Sat, 29 Jul 2023 07:35:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Jul 2023 08:35:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Blend os, Anyone tried it?
To: blinux-list@redhat.com
References: <mailman.1899.1690571166.3172875.blinux-list@redhat.com>
In-Reply-To: <mailman.1899.1690571166.3172875.blinux-list@redhat.com>
Message-ID: <mailman.12.1690616119.1462693.blinux-list@redhat.com>
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

Hello,

I've tried it, and I have a few thoughts. First, the installer is GTK4 
with all the difficulties and inaccessibilities this brings with it. 
Second, the installer renders absolutely everything to Orca all at once. 
If you shift tab from the welcome bit you can find the all done screen, 
but you won't be able to press reboot. All of this made it really 
confusing and honestly not worth monkeying around with it. We're at the 
stage where immutable distros are just getting started and nobody has 
thought even the slightest bit about accessibility. Fedora silverblue 
doesn't even allow you to start Orca when you get to the installer, and 
the ones that do include Orca have this jade installer that is half 
accessible.

Harley

On 28/07/2023 20:05, Linux for blind general discussion wrote:
> Hi all,
>
>   
>
> I am just wondering if anyone has ever tried blend os.  I discovered it on
> distro watch.  It is based on arch Linux.  It uses something called jaid
> installer.  I am wondering if anyone else has tested this installer.  My
> breaf testing wit seems to be that the langwage and time zones selections
> are search buttons which if activated, will let you search for your
> selections.  I have not been able to use flat review with orca to explore
> the screen.  If anyone has figured this out, How did you navigate the
> installer?  They have a discord server which I am on, but was curius again
> if anyone has had a chance to play with this.
>
>   
>
> Matthew
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

