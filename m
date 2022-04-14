Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 548105002F5
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 02:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649895494;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+6HkvXQ6/IiqHpNNQCC6j/qyoqa7frWGaYtMpYoeA7c=;
	b=XR0XLySlk31cnj2WhAFQs7sDJ/p6ZTxAihZJ/EyFIUnN51u8sM6k4kwFM2tI1YoojnsfGH
	sfNR9fRnNIvXxNBlAwTsmdQ8UBNSXu6CbtBSBuFZ3H1r5T5PCEv4Bww91v3xzbn25ehEtA
	0nnG6BCHxwKWeoUWj0atyOir1uIFrS4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-173-lv590YgbMPO9w9Pzts5D0A-1; Wed, 13 Apr 2022 20:18:11 -0400
X-MC-Unique: lv590YgbMPO9w9Pzts5D0A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C545829DD9B1;
	Thu, 14 Apr 2022 00:18:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AECC7111D78E;
	Thu, 14 Apr 2022 00:18:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 438231940353;
	Thu, 14 Apr 2022 00:18:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 01:18:01 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8265.1649867972.111207.blinux-list@redhat.com>
 <mailman.8540.1649878555.111210.blinux-list@redhat.com>
 <mailman.8410.1649894371.111202.blinux-list@redhat.com>
 <mailman.8347.1649895046.111209.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8347.1649895046.111209.blinux-list@redhat.com>
Message-ID: <mailman.8491.1649895487.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To be fair, Chime...deaf isn't binary, no sound or all sounds. It's a range just like blindness however so I get why the question about audio, but it's not really my place to go how deaf are you. That's insensitive, just as asking anyone on here how blind are you.

Aftr all, I know the popular idea is oh, I'm blind, or oh I'm deaf, but there's a whole range within that category though.

For audio, you have choices...

Pulseaudio, which is, as far as I understand it, the legacy and one that's been around for ages and ages, and Pipewire, the replacement. I've had a lot of issues with Pipewire and virtual machines, and I'd argue Pipewire's still too raw for the majority of Linux folks to use unless they are the super leet hax0r types that feel okay doing a ton of stuff that's way, way above power user levels.*

Plus, Pulseaudio, in my experience at least using a fairly standard USB headset and earbuds in a 3.5mm jack...ust works out of the box on distros.

* It may have changed and become more stable. I'm not sure. I defaulted to Pulse on my Arch box because I didn't want to go in and test out if Pipewire works with my hardware setup...whereas Pulse just worked right away with no fuss bar me accidentally messing up device selection one time

On Wed, Apr 13, 2022 at 05:03:59PM -0700, Linux for blind general discussion wrote:
> Well, for an individual who is Deaf/Blind? You were asking about audio? I
> would think you would only require Braille support?
> Chime
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

