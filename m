Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FE34D4532
	for <lists+blinux-list@lfdr.de>; Thu, 10 Mar 2022 11:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646909927;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kB5uqUJz4xlzJyqsh4wXS2BfybPo7J3Ai1fuY+J3Z14=;
	b=hpdzVi4woeAC3gzckhY4l51GIjO3WUvIz7LhC1g3kKxRwxidY3IobidywLZOLoF/eStn54
	NtflbgjjikYuv1YsYX8LK10fu0j0yc3K+Pc2jqQLmug+fnAeK2YXYMRhuuAjmuI5/8kh5z
	I/H36F4taevlMGMk0uEa4yAeKu9f3WM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-Imknt_AaNWiFwTL6BvJl-A-1; Thu, 10 Mar 2022 05:58:42 -0500
X-MC-Unique: Imknt_AaNWiFwTL6BvJl-A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D43F101AA42;
	Thu, 10 Mar 2022 10:58:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 69C51112D401;
	Thu, 10 Mar 2022 10:58:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D7DD9195FD43;
	Thu, 10 Mar 2022 10:58:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 10:58:33 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting lightdm in text mode
References: <mailman.343.1646741549.111209.blinux-list@redhat.com>
 <mailman.1241.1646907576.111208.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1241.1646907576.111208.blinux-list@redhat.com>
Message-ID: <mailman.1246.1646909919.111208.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Huh...I genuinely didn't know startx did that. I was always under the impre=
ssion that you needed a display manager to do that.

Good to know.

For startx, you just need a .xinitrc with this in it, at least this is how =
I do it

exec orca &

exec mate-session

Those of you more knowledgable about .xinitrc than me...did I miss anything=
 insanely obvious out? I just usually use a template file I got somewhere t=
o switch out desktops however

Also, if you log in from the default TTY1, it'd be ctrl+alt f1 to view the =
desktop and then ctrl+alt f2-f6 to get to various TTY and then ctrl+alt+f1 =
to get back to the desktop as well.

On Thu, Mar 10, 2022 at 11:19:16AM +0100, Linux for blind general discussio=
n wrote:
> Hi John,
>=20
> I fail to see how not having lightdm installed cane prevent you to start =
Mate.
>=20
> Here (Slint, not Debian), after having selected Mate as desktop with the
> session-chooser command, just typing startx starts Mate.
>=20
> Then from Mate just pressing Ctrl+Alt+F2 through Ctrl+Alt+F6 make you swi=
tch one
> of the consoles (tty2 through tty6), keeping Braille in all environments.
>=20
> You can also switch back to Mate pressing Alt+F7 and also switch to froma=
 a
> console to another one (number n) pressing Alt+Fn.
>=20
> Anyway you could post in the debian-accessibilty mailing list to get help=
 on
> Debian specific issues.
>=20
> Cheers,
> Didier
> --
> Didier Spaier
> Slint maintainer
>=20
> Le 08/03/2022 =E0 12:31, Linux for blind general discussion a =E9crit=A0:
> > Hello,
> >=20
> > I use Debian in command mode. Until about a year ago, when I booted  up=
, lightdm would start in text mode and ask for user and password. It would =
then start Mate with Orca. I could use the GUI by pressing Alt+F7. Then it =
suddenly started setting the screen to not-text mode.=20
> > To be able to use the machine in my  primary uses I had to disable ligh=
tdm. This meant that I couldn't use Mate. I just switched to Windows for a =
GUI. How can I configure lightdm to not put the screen in grap;hics mode an=
d to again ask for username and password in text mode where brltty can hand=
le them. Then start the GUI in tty7.
> >=20
> > Thanks,
> > John
> >=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

