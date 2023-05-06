Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC8F6F9101
	for <lists+blinux-list@lfdr.de>; Sat,  6 May 2023 11:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683366357;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9U3fHcdwusFmq+xTJ8SKuDGky1jqCUmjy62rwQDsnwc=;
	b=UixxLAxXM1rColxcE38Cs8s78/HcPzsXmJQi+LI4tsU9yU+IZsgJWE92lktfPZeAxnhqgF
	ZLtRHgQmi92vU2ft5N1uViZU0Phj9P4si3TuW2W6mlR1tnxsuz0hxDgklK+iZ3rmbMGLHB
	0gDRUMTTqANJLGnAproLAYbfaCYWqLY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-463-cj6B8UsuO-WYWKrL0TcUEg-1; Sat, 06 May 2023 05:45:56 -0400
X-MC-Unique: cj6B8UsuO-WYWKrL0TcUEg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FC3E884626;
	Sat,  6 May 2023 09:45:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AE02B35443;
	Sat,  6 May 2023 09:45:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C39961946A40;
	Sat,  6 May 2023 09:45:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 6 May 2023 05:39:52 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Two Arch beginner questions
References: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1813.1682596723.2351819.blinux-list@redhat.com>
Message-ID: <mailman.62.1683366348.2822855.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, Pavel:

Quick note before I compare my experience with Speakup and Fenrir ...

Espeak is not the screen reader. It's the driver interface between the
espeak TTS engine and the Speakup screen reader.

Next, it's possible to have both installed, though you probably don't
want both speaking at the same time!

Personally, I spent sometime in fenrir, but it's been over a year. I am
highly sensitive to keyboard latency. I hate even miliseconds of delay
in hearing my keystrokes echo'd. I found fenrir a bit too sluggish that
way for my taste. This happened on two machines, one a about 10 years
old, but the other quite new and fully loaded with latest CPU and max
RAM at time of purchase in 2020.

Fenrir is user space. Speakup is a module in the kernel. You can
configure fenrir to work in Mate terminals as well as in console
sessions. Speakup is only for console sessions, though it works with
console terminal apps like screen and tmux.

I have stayed with Speakup, personally.

Best,

Janina



Linux for blind general discussion writes:
> Hi,
> 
> today I installed Arch Linux for the first time. Now I have fully setup the
> console and now, it is time for graphical interface. I will use Mate
> desktop. I know how to install it, but I have a question related to display
> manager. Can you recommend me some display manager for Mate desktop, which
> is packaged for Arch and configured for a11Y (start Orca in the manager)
> 
> And my second question is related to console screen readers. Espeakup and
> Fenrir are included. Which of these is better for using console apps, such
> as email clients, web browsers etc? Is espeakup developed or deprecated?
> 
> Thanks,
> 
> Pavel
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

