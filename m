Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE25602DD3
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 16:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666101810;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TXcZSYQkj7NXntyszckUPuM5losn1GsRy82l4ND2YkU=;
	b=NbZLtNUhefIsY0phEE+BqPkEfrWx9+WHU/iES7qvp2C1rgXWGuHe1zfA1SusZ4jnaI2fZi
	U9rWIIagMcxDPZU/BVUtBWNrSrrXouSS+tax/Tvru0krQSSDC/ZJrVBh9027TYVv5ewnS/
	JMqdbKIt3eWqQBPq4fEUKbIJ7HfxW74=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-570-plahQTRyMa-LNUjvJAc1PA-1; Tue, 18 Oct 2022 10:03:24 -0400
X-MC-Unique: plahQTRyMa-LNUjvJAc1PA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F296857AB8;
	Tue, 18 Oct 2022 14:02:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5F796492B0A;
	Tue, 18 Oct 2022 14:01:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8E3BC19465A2;
	Tue, 18 Oct 2022 14:01:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Oct 2022 14:01:30 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Turning off screen in Linux
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.882.1666078921.3006.blinux-list@redhat.com>
Message-ID: <mailman.880.1666101707.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I believe xrandr should let you do this.  First, you
need to get the name of your display according to xrandr:

  $ xrandr | awk '/primary/{print $1}'
  LVDS-1

For me that's "LVDS-1" but your output might be different, like
"VGA" or "HDMI-1" or something.

You should then be able to disable/power-down that display with

  $ xrandr --output LVDS-1 --off

If you need to re-enable it for whatever reason, change the "off"
to "auto":

  $ xrandr --output LVDS-1 --auto

I'm not sure how this interacts with screen-readers, and based on
my testing, it feels like applications might go a little weird,
getting resized to an itty-bitty size (I think my texting xterm got
resized down to fit in a 320x200 display, since it was shrunk down
when I re-enabled the screen).

If it's a problem for you, there might be a way to create a
virtual monitor, by including something like

  SubSection "Display"
    Depth 24
    Virtual 1024 768
  EndSubSection

in the "Screen" section of your xorg.conf file.  X should then think
you have two displays connected to your system, and you can use the
`xrandr ... --off` command to turn off the real one while still
having the virtual one of a size large enough to make X programs
happy.

Or possibly run "xvfb" to create a virtual X environment, possibly
adding the physical display to its configuration, and then using
xrandr to disable the real screen?

Just a few ideas,

-Tim

On 2022-10-18 07:41, Linux for blind general discussion wrote:
> Hello everyone,
> 
> Ubuntu Mate 22.04 64-bit.
> 
> 
> I suppose there are multiple ways to go about turning off the laptop
> screen on Linux, from switches to more invasive configuration modifications.
> 
> 
> I wonder, what is the ideal solution for us to set up, so it would be
> possible to turn off the screen, so we could save battery, protect the
> displayed information etc. but we could at the same time switch the
> setting when necessary without the need to log out / restart?
> 
> 
> Thanks for your advices!
> 
> 
> Best regards
> 
> 
> Rastislav
> 
> 
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

