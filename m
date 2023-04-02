Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 698446D3517
	for <lists+blinux-list@lfdr.de>; Sun,  2 Apr 2023 02:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680395961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EjpDYq4cCPm+qufHEtedHtJeDFkG+v4hPH7s3Wcs1oQ=;
	b=ABZmzZ44WIy/mxlwoiYlqyL8hqInVXaCdDDPnrwry2YjOGmuWJX9F//warVsfuoqGyUpMs
	lVXUjgHeotE4+tcoSNtnbRbnSjUHvUwXKDsr1APfeXAuBlVWHBEmjF0ZHWtj96rtCBg6+S
	NJo2H2ml/T9DOEK9QwVFV34QyBEY5Bo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-AwBEgat3Np2qJbE4jfHETA-1; Sat, 01 Apr 2023 20:39:17 -0400
X-MC-Unique: AwBEgat3Np2qJbE4jfHETA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF331101A54F;
	Sun,  2 Apr 2023 00:39:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8E2E91121314;
	Sun,  2 Apr 2023 00:39:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 00C241946A44;
	Sun,  2 Apr 2023 00:39:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 1 Apr 2023 20:38:58 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>, 
 orca@freelists.org
Subject: Re: Orca not speaking on new Debian install.
In-Reply-To: <mailman.132.1680395592.558771.blinux-list@redhat.com>
References: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
 <mailman.40.1680347357.558775.blinux-list@redhat.com>
 <mailman.82.1680367672.558774.blinux-list@redhat.com>
 <mailman.106.1680378436.558770.blinux-list@redhat.com>
 <mailman.100.1680378798.558767.blinux-list@redhat.com>
 <mailman.132.1680395592.558771.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.133.1680395954.558770.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

spd-say "Hello world\n"


-- 
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

On Sat, 1 Apr 2023, Linux for blind general discussion wrote:

> Okay, did a little searching and found the sleep command, which I used
> to confirm that Orca is getting launched when I try running the script
> I'm using. In fact, it seems that Orca remains active even once I
> close the appliaction I launched and the script finishes, and only
> gets unloaded when I logout of the tty that executed the script with
> sudo kill on orca's process ID apparantly failing.
>
> As for spd-say, I'm not sure I'm using it right, but trying to run
>
> spd-say "hello world"
>
> or
>
> spd-say -O
>
> just results in the console hanging on a blank line until I ctrl+c.
> Granted, doing the same from a KNoppix live session, where the script
> works as expect, spd-say "hello world" does nothing and spd-say -O
> prings espeak-ng to the screen.
>
> Forgot to check at-spi while I was booted into Debian, but it sounds
> like the problem might be with speech dispatcher.
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

