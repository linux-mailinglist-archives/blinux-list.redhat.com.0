Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B46D4370093
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 20:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619807657;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eUYnAbl/CVElrVIulSS43H6vfRkWWAL6/uFo7DOKjr0=;
	b=JetsoP10Jxt90/syC3/VqX2Q7AiRXr2J4uPz5LZe5+nMiCqtiEDa01WhmDcsKAzP4vxaNi
	nx+B+nSDb2aYYrmU2h/sL1YIIBo0XsdHc3dFTryrXFgfILxrV22ZHY9BGdIjKGJFzX3030
	j5/kfo+6ZE/EPyObvu8bxtIchwp183E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-MhL2DLQXMJyP1prRG7isuQ-1; Fri, 30 Apr 2021 14:34:15 -0400
X-MC-Unique: MhL2DLQXMJyP1prRG7isuQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C281107ACE4;
	Fri, 30 Apr 2021 18:34:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 055695D9CC;
	Fri, 30 Apr 2021 18:34:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 289781800BB8;
	Fri, 30 Apr 2021 18:34:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UIVeIp016641 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 14:31:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 17B5821602A3; Fri, 30 Apr 2021 18:31:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1364021602A0
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:31:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8302858290
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:31:37 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-296-kzKsUsBeMfibTieCkd3IZA-1; Fri, 30 Apr 2021 14:31:35 -0400
X-MC-Unique: kzKsUsBeMfibTieCkd3IZA-1
Received: by mail-qk1-f174.google.com with SMTP id v23so19655830qkj.13
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 11:31:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=cS0G/Gc1hlApmdBsnQTakluYZoB/hOwvUTrroWNK/pg=;
	b=tSYitKdFT+hZYbps8jub+rXVROrAxPMFvvlgrEuNIsd+pR7LadWisKTLUn+xwmjc7g
	VAFHUqnpZg4XdSsCSzCSwVSaUl1/DVEvLroN2nNA3ZB7Gi48xmV+GJX8LbHJRYjUMErr
	qETFlEUiufs4mT49gNCmnGFFrqUlxzIKnbuQvtaTOTHfD/Wvqm3rAqIl0RlHJ+Ee9EZl
	9/6u1ZvH+8WDGHMES2qK+NtNeoX8kPLqfX4rJv0yuvkRtiZQ/BUN4qzCg/X9MYE5qroh
	Zk1ocURX3twhL3KiBNyhVjO719kJtzODS7syX+BR87BQTv7KwVoYtXry+m8+EYWylx/t
	iPOA==
X-Gm-Message-State: AOAM533HdZc0E5G5I1aDLASBesb0eYmWfNMkJ58lfWcCIPBQnd6QRRc0
	jbEoSR4Xp/bn6bGG/JTj9ptlA5BmjsUhu1HFpNG/xruJk/w=
X-Google-Smtp-Source: ABdhPJyJc4R/wN7M+t5q1yE6l7gRo6o7qc651/T+bV2CAHOlDaJwkJr7iYVlNiwQPT8TFqCQ1VSqZnigInOgZbfmfbM=
X-Received: by 2002:a05:620a:1657:: with SMTP id
	c23mr6731133qko.264.1619807494971; 
	Fri, 30 Apr 2021 11:31:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:576e:0:0:0:0:0 with HTTP; Fri, 30 Apr 2021 11:31:34
	-0700 (PDT)
In-Reply-To: <YIxCF1C83HFrpbkN@panix.com>
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
	<YIxCF1C83HFrpbkN@panix.com>
Date: Fri, 30 Apr 2021 18:31:34 +0000
Message-ID: <CAO2sX33xYLcdO7pDhYJ9L2_7T8_mv4Bhu6Msr4oRuqj1bk3WuA@mail.gmail.com>
Subject: Re: Best Distro for Blind
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Orca is the primary, perhaps sole, graphical screen reader for Linux
that is in active development and is generally considered highly
compatible with Gnome and Mate, moderately compatible with other
GTK-based Desktop Envrionments and Window Manager, and poorly
compatible with KDE, QT, and other non-GTK based graphical setups,
though the latter has made massive improvements in recent months.

As Orca is nominally part of Gnome, just about any distro that has a
Gnome flavor should have a package for Orca, and once things are
setup, I'm not convinced the choice of distro makes much difference on
how well Orca works with your chosen Desktop Environment.

Where things do vary is in how accessible a Distro's installer is and
how easily Orca can be made to launch automatically.

My setup is based on the Debian-based Knoppix running in Adriane mode,
but the main reasons I do this is that Adriane uses a console-screen
reader that isn't readily available on most distros and allows one to
launch Fierfox+Orca without the need to launch a full Desktop, which I
find handy since Firefox is the only graphical application I use.
Probably not the best option if you plan to hang out in the Desktop
all the time as Knoppix, being designed primarily as a LiveDVD, has
some quirks that make it less than ideal for installing to a
Harddrive.

Debian is a good option for an accessible installer and easily getting
Orca up and running(the Installer can be made to talk, and I'm pretty
sure choosing to install a Desktop Enviornment makes the system come
up with Orca talking), but Debian's slow and steady development cycle
means Debian Stable is often well behind on software upgrades,
especially in the area of accessibility, though this can be somewhat
alleviated by adding Debian Backports to a Debian Stable system or
upgrading to Debian Testing or Debian Unstable. Knoppix sources most
of its software from Debian and I can attest to Debian Testing being
pretty stable... If you need Wi-Fi, you probably want to seek out the
unofficial images that include non-free firmware as that is one area
where Debian's reluctance to include non-free software in the core
system can be a unworkable hindrance.

I've heard mixed reviews for both Ubuntu and Fedora when it comes to
accessibility.

Slint is probably the best alround distro for out of the box
accessibility, but be warned that it is based on Slackware, a distro
with a bit of a reputation for being less beginner friendly than
Debian and its deriatives.

I understand that there are several projects offering easy setup of
Arch with screen readers, but again, Arch is a distro with a
reputation for being for more experienced Linux users.

Please note, Knoppix is the only distro I have current experience with
and the above is just a summary of what I've read on this and other
accessibility-related mailing lists.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

