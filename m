Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA92617F4A
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 15:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667485202;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PmjkL6VmIOgQ655RhTN+E1F1ycbGFm/wj0ThnwTnBpw=;
	b=FPui417++BbB4PasLodSRjukW43q0Iy9zkM2D1xeTgixdn1JVllLTl72gslWuUdRO7eONI
	wpn5BY8XR8/lR5IaMYC1zTZ3x7gIkz3xacDE2IETne0vHeD7IqduiGq97x9gr8Q70F3h1g
	dorCgvo9IgAC9plOAaVmxTeYXNWwSj4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-404-oV6BpxpcNDWRhAqkyLno6A-1; Thu, 03 Nov 2022 10:20:00 -0400
X-MC-Unique: oV6BpxpcNDWRhAqkyLno6A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 433281C0CE63;
	Thu,  3 Nov 2022 14:19:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 833922166B2E;
	Thu,  3 Nov 2022 14:19:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 15F631946A66;
	Thu,  3 Nov 2022 14:19:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 3 Nov 2022 10:19:52 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Javascript for text mode (fwd)
In-Reply-To: <mailman.4510.1667484422.3003.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
 <mailman.4358.1667481898.3007.blinux-list@redhat.com>
 <mailman.4328.1667483150.3005.blinux-list@redhat.com>
 <mailman.4400.1667483225.3008.blinux-list@redhat.com>
 <mailman.4510.1667484422.3003.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.4513.1667485195.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Don't be surprised if python ends up running web assembly in time.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 3 Nov 2022, Linux for blind general discussion wrote:

> Good point Devin!
> I really doubt that this language will disappear. Beside, it is brilliant but
> needs long practice to understand it well.
>
> Returning to the topic, It would be nice to have console browsers with
> JavaScript fully implemented but for now only headless mode of graphical
> browsers have to be used if there is no usable console browser.
>
> Greetings.
> Artur
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

