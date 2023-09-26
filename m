Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BC07AF038
	for <lists+blinux-list@lfdr.de>; Tue, 26 Sep 2023 18:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695744367;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vn6GxfnmY01zfJz6XbARoD6bMsTUq8YvVWYnE4AohXk=;
	b=Dq0OJfKCdaZLAtorgDZQbHG74iIwu6tkPshHdQD1AZljf3P6TIzARj/QPdRVYrxyA2bMYH
	ZBo41jq/IqxkPgamDfXSsTeiDg1qINeup+GxsinwnF1hKFYWS+x4+mpX9P5u4qJOIhgTnb
	p4IBkHnWGMFwN8XJ820a42nyxrkUmnA=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-468-DoOgjhFdNGqWEMZhEOuVKw-1; Tue, 26 Sep 2023 12:06:04 -0400
X-MC-Unique: DoOgjhFdNGqWEMZhEOuVKw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B7443816DAD;
	Tue, 26 Sep 2023 16:05:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AF96B40C6EA8;
	Tue, 26 Sep 2023 16:05:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 19FC419465B2;
	Tue, 26 Sep 2023 16:05:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 26 Sep 2023 10:49:48 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Talking Images for 64-bit Laptop
In-Reply-To: <mailman.1010.1695739391.4021069.blinux-list@redhat.com>
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
 <mailman.291.1695646516.4021078.blinux-list@redhat.com>
 <mailman.367.1695657175.4021075.blinux-list@redhat.com>
 <mailman.969.1695736728.4021070.blinux-list@redhat.com>
 <mailman.1010.1695739391.4021069.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.857.1695744328.4021071.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I bought a crystal usb sound card from thinkpenguin.com I can plug into a
laptop like that and maybe have the laptop come up talking.  I like amixer
set Master 100% unmute && speaker-test to sometimes fix sound card
problems like these.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Tue, 26 Sep 2023, Linux for blind general discussion wrote:

>
> On 26/9/23 09:48, Linux for blind general discussion wrote:
> > 	I did make several later tries and confirmed that this
> > lap top's native sound interface is like a lot of native sound
> > interfaces in that it is too proprietary for it's own good.
>
> A few suggestions:
>
> 1. Try a very recent kernel, just in case compatibility has improved.
>
> 2. You may need to play with ALSA settings (e.g., amixer) to get the audio
> device working.
>
> If you can start sshd, you should be able to log in from another system to
> work on it.
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

