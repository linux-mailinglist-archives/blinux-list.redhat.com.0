Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 635A54CE645
	for <lists+blinux-list@lfdr.de>; Sat,  5 Mar 2022 18:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646501951;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fbCglHWtOjPTHg0nQtUDrclIwB7kooiWCaLTGiPgDk8=;
	b=MQfjP7DxtAzpFPMRhmSEzo4fE57NkUsCYHJTmaLjDHhDs8jIrDVdTUF1PsHrCeG5Lv7Jrv
	6RxX4gF1uEKFjf6ncN9AlDsRicZ1p2uxVG9L8NYiYBheIUGvu2BMA8f3voqM6AAUH5YP4r
	doHSq9mk2YeVLVjuMxu+u6O2QpHeDrc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-536-ZC73sYK0Oauee2IqQM4GYw-1; Sat, 05 Mar 2022 12:39:07 -0500
X-MC-Unique: ZC73sYK0Oauee2IqQM4GYw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E67F811E75;
	Sat,  5 Mar 2022 17:39:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E9139C080A0;
	Sat,  5 Mar 2022 17:39:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 40A3A1931BE9;
	Sat,  5 Mar 2022 17:39:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: Snap, Flatpak and/or AppImages?
Date: Sat, 5 Mar 2022 19:38:51 +0200
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
 <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
 <81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
 <f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
 <37d011eb-16c0-f52d-1e12-f6e422ca4c5c@free2.ml>
 <mailman.2.1646492601.61339.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.2.1646492601.61339.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.4.1646501939.61342.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I understand this, not all package managers have all packages you may need, I know this, Ubuntu 20.04 LTS does not have BRLTTY above 6.3, which doesn't support my display, that's why I cannot run Ubuntu.

This is where AppImages, Snap and Flatpak can really make a difference, and it already does.

Please note, I used BRLTTY and Ubuntu as an example.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 05 Mar 2022, at 17:00, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
>     Images are generally used for new installation or live boot such as for repair disks.  Package managers are best to add, remove, or update an already installed system.  I think whoever started this thread doesn't understand that you need to use the correct tool for the job you are trying to accomplish.
> 
> If your already installed system doesn't have an editor or a game you want to use, then the package manager allows you to add it. Redhat uses the 'rpm' package manager, and other distributions choose different tools.
> 
> 
> 
> On 3/4/2022 5:08 PM, Linux for blind general discussion wrote:
>> So it does seem then like appImages are the way to go. It sounds like we get the absolute best of every possible scenario in this seemingly antiquated but actually highly innovative portable app technology. Why oh why do we have people saying that flatpak is the future, or worse, snapd is the future, when we have appImages that are highly portable, and can even be sandboxed in much the same way, but are much more versatile owing to the portability? It's really nice to be able to put all the appImages I need on a USB drive and just use them on any Linux computer. I guess the one drawback I can see is the update problem, where most don't update themselves, but having repositories and appImage managers available would seem to resolve that issue, also in a highly portable way.
>> 
>> ~Kyle
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

