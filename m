Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ABE2224E4C1
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 05:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598065615;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5jTDo4SqirA31dJgqYbFh3uR0NYR9PWaeGn/0JOQ4/U=;
	b=RklCAryCMCWIX7XC471Obpy13WJOUxUrvJgVGa32O+8mXPSOK8flkhDsRuuwEgdPlcKw20
	VcMFwwzOVCHqLECtVIRTQUrM8VvC9AZXLSlXOKRhODB1k0qZyj7u5kCMOzlGWORFEzqcu8
	iHfID+4XLaGT0sDpB4lyF4NcYUnaAbo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-d76Ve2JpNUGMJAj1LGeg7Q-1; Fri, 21 Aug 2020 23:06:53 -0400
X-MC-Unique: d76Ve2JpNUGMJAj1LGeg7Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69DF480BCA3;
	Sat, 22 Aug 2020 03:06:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBCBD5D9CC;
	Sat, 22 Aug 2020 03:06:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C507A662D9;
	Sat, 22 Aug 2020 03:06:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07M36bUK031304 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 23:06:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 80E26FC74C; Sat, 22 Aug 2020 03:06:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 684AD109959
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 03:06:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB2A68040D4
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 03:06:34 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179-MKoTvl52PS6LjSwnf0IAsg-1; Fri, 21 Aug 2020 23:06:30 -0400
X-MC-Unique: MKoTvl52PS6LjSwnf0IAsg-1
Received: by mail-io1-f46.google.com with SMTP id b16so3655469ioj.4
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 20:06:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=UBvsIljvnrVnceUirg4nYTLw59+/j+niW4hFRkVWx3M=;
	b=We9s+9k2T235kzBHwf1k7XODN4eldjisFrPYPY9MqGAhm0ZDZB8H/M5oeEKEVm/FQQ
	Vbm8zhk/KCrviwfmt1egr1t55GiRcEuC4fzuHwCRBhudNoeACwUsVx8NQkE7zxg6G5+O
	2DODu0GFn89Ixz9KHn1Hua/6aYvG+9kEY79eTB5p+MMUTK3YczydH64vgMa8OFkpjR0a
	CSEciMjSfFiG88CUG/Jepa1LqTTYECtj6ps+5aClbzqJhH9LB4DVxIWubI2bYbRkc7cL
	9jzsyaHMT6a/HPUBkLtkA5JdhtmQTXPUctYwLwjNaDA+QJwLUAEMkYzDcn3y6P/QdCQt
	sYOA==
X-Gm-Message-State: AOAM532ZuUiyBmzNVpatGLboIFtYdod0I+qgmRhFmuKKs2qSqu1qHq0v
	F9HVr/ZrWV/Rfy1LpjKCyDx+tG4titUzEohTHrJmN5O2
X-Google-Smtp-Source: ABdhPJxo9psQUlWDqliXhAavojYTHdFNBVSyV2Bfl28TJ78jgMhy3hRgtXrmcr3JdgIt4eYKFbbE8yaC/2ezwjeml+A=
X-Received: by 2002:a6b:dc07:: with SMTP id s7mr434654ioc.162.1598065589935;
	Fri, 21 Aug 2020 20:06:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:b510:0:0:0:0:0 with HTTP; Fri, 21 Aug 2020 20:06:29
	-0700 (PDT)
In-Reply-To: <MFBaDor--3-2@tutanota.com>
References: <MFBaDor--3-2@tutanota.com>
Date: Sat, 22 Aug 2020 08:36:29 +0530
Message-ID: <CAK2wa2=Km2ON=hkT0j7A0kyOG+F_zO8NwCFgm9zmZ7abSWjq8Q@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Friend,
try accessible-coconut hosted in sourceforge.net will be the solution.
latest 20.4 is released for ready for testing and again coconut 18.4.6
is quite accessible and comes with all the packages.
try and report your experience.Thanking you Sathyan.

On 8/20/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi,
> I am new to this mailinglist and new to Linux. I have been using Windows for
> years but now I want to switch into a free open source software Linux
> environment. After quite a while of research, I am finding plenty of general
> information on Distros by sighted Linux users, but not a lot of current info
> from blind Linux users. So I'm sending this in hopes to get some input from
> any blind Linux users, as to what you might suggest as an accessible Distro
> for a beginner, especially if it is something other than standard Ubuntu.
>  I am particularly interested in Slint, Parabola, Devuan, or Trisquel. I
> know Slint was created for blind Linux users so I assume that it must be
> quite accessible, but I don't know if it is intended more for advanced
> users, or if any of you started out with Slint as a beginner? I am
> interested in the other Distros I listed, but I don't know how accessible
> they are. Do any of you know if those Distros have Orca speaking during the
> installation?
> Do any of you have experience with Slint, Parabola, Devuan, or Trisquel?
> Would you recommend either of them as a start out Distro for a beginner? Or
> do you use a different Distro that you could suggest?
>  I know that picking a Distro is a personal choice and apparently Distros
> can have varying degrees of accessibility features according to how they are
> configured. But my understanding is that some Distros are more accessible
> out of the box so to speak than others.
> I know that standard Ubuntu is often recommended for beginners for its ease
> of use, at least, it seems to be a popular recommendation amongst sighted
> Linux users, I don't know if that is also the case with blind Linux users. I
> respect those who prefer Ubuntu, however, I am not comfortable with the
> corporate connection to Canonical. I am only interested in Distros with a
> strong focus on freedom of open source software with no corporate
> affiliations.
> I am looking for a simplistic and streamline Distro.
> All I want is a Distro that will run Firefox, LibreOffice, Python 3, a text
> editor, and a file manager. If I can find a Distro that will run those
> things and is at least somewhat beginner friendly, I'll be set.
> I'll be keeping my Windows laptop and buying a separate laptop with hardware
> that is compatible with whatever Distro I choose, so that I can switch over
> to Linux incrementally at my pace. So I am not interested in dual boot or
> VM. I am determined to learn Linux, even if the first Distro doesn't work
> out so well for me, then I will try another one. So to me, it is worth
> having a dedicated laptop.
> I've been in contact with a laptop organization specializing in Linux
> compatible hardware setups, and they will install a Distro of my choice,
> making sure the accessibility features are enabled. I can learn how to do
> installations independently once I gain the experience and skills over time.
> But for now I just want to start somewhere, with something that is as
> accessible as possible out of the box and they can install it for me the
> first time around.
>  From what I have read online, there is often a steep learning curve when
> adjusting from a Windows environment to a Linux environment. Whereas Windows
> just comes with most software preconfigured out of the box, Linux is
> customizable so some beginners can have a hard time adjusting to it. So I am
> not expecting Linux to just instantly work one hundred percent seamlessly,
> especially when adding accessibility features into the equation. There will
> probably be some challenges along the way. But it seems that some Distros
> are more streamline, minimalistic, and beginner friendly than others. I just
> don't want to unknowingly pick the most daunting Distro that Linux has to
> offer lol.
>  I want something where the installation package and boot process is
> accessible so that when I patch it in the future, or ever need to do a
> reinstall, I will be able to do that independently.
> I want something where Orca speaks consistently in essential apps like
> Firefox, and also has good braille output as I will eventually connect it to
> a braille display at some point.
> Do any of you use Slint, Parabola, Devuan, or Trisquel?
> Perhaps you prefer other Distros that I havn't heard of yet. I am open to
> all suggestions for anything other than standard Ubuntu.
> Thanks in advance for any info you could share with a beginner looking for a
> Distro with an accessible install and boot process.
> Regards,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


-- 
*Mob : +919446012215
FREE SOFTWARE FREE SOCIETY *

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

