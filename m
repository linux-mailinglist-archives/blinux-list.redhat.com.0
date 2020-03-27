Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id BEA79195DB0
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 19:32:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585333920;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g2DoggIdXUPYyM0BXseNyTbYPO0Aht1Pphrmp9v4hgw=;
	b=ciAcHa1ou+GCfOhx6lXdrSLHQ5CrnR0b60FGHWGHb0rndcmC1naynFW2D51nGud68QydDE
	mLf1fVu/EUDN//QBNCbw55NWCgo/+/oZPke/VcSjRBJ04APpfijJi109qTTjvM48LsVjUF
	pl2amizn7/YdEJs7YwMQZs81iyskDPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-EApjeRdMNRSNM9mrEqngRw-1; Fri, 27 Mar 2020 14:31:56 -0400
X-MC-Unique: EApjeRdMNRSNM9mrEqngRw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39D31149C5;
	Fri, 27 Mar 2020 18:31:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 26ADC5DA7D;
	Fri, 27 Mar 2020 18:31:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2067C18034EA;
	Fri, 27 Mar 2020 18:31:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RIVb0l017067 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 14:31:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 01AD52166B30; Fri, 27 Mar 2020 18:31:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F205F2166B2B
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 18:31:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CE198007C9
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 18:31:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-330-DpAV2palMhGoqDN2jXB_Ug-1; Fri, 27 Mar 2020 14:31:32 -0400
X-MC-Unique: DpAV2palMhGoqDN2jXB_Ug-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48pr6C4xV7z1j8v
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 14:31:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48pr6C1Y7Rzcbc; Fri, 27 Mar 2020 14:31:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48pr6C0yymzcbW
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 14:31:31 -0400 (EDT)
Date: Fri, 27 Mar 2020 14:31:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Newbee Linux user introduction
In-Reply-To: <B0D71794-95D6-435A-84FE-71D2D3D8575C@gmail.com>
Message-ID: <alpine.NEB.2.21.2003271427590.22610@panix1.panix.com>
References: <B0D71794-95D6-435A-84FE-71D2D3D8575C@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RIVb0l017067
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You probably didn't choose gnome when you installed debian so you have
the mate desktop installed.  That was a very smart choice.  After you've
logged in inside orca, try hitting the alt key and holding that down
then hit f1 key.  If I am right a whole set of menus and commands will
start speaking as they come up on your screen.  That particular
keystroke combination does not do that in gnome normally.  One could
force gnome into classical mode where this would work but you're
probably better off not doing that especially if your machine is light
on resources.

On Fri, 27 Mar 2020, Linux for blind general discussion wrote:

> Date: Fri, 27 Mar 2020 13:27:41
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Newbee Linux user introduction
>
> Hello,
>
> My name is Simon and I am from UK.
>
> I have been a Windows and for 13 years a mac user.  I have no training in computer programming.  Whatever I do know , I have learnt as I went along.  I would like to give Linux a go, having failed a few years ago.  But I?m quite determined to learn.  I have just joined this group, and I would like to ask you to be patient with me as I may be talking nonsense or asking very basic questions.  The world of Linux is very new to me and I am still very much learning the concepts and terms other experienced users take for granted.
>
> If you had any suggestions or pointers to any materials I might use to start, please help.  I understand from my research on the subject of Linux accessibility that CLI is the way to go.  I have no sight and I use speech as well as Braille.  I have just managed to install Debian 10.3 distro on an old laptop Dell inspiron 640, have successfully activated Orca during the installation and completed it.  I can?t yet determine whether I?m using gnome desktop or Mate, and if Gnome, whether it would be easier for me to use Mate , and if the latter is true, how I would install or choose Mate if it?s already installed.  I?m not quite sure yet either exactly what the difference between the two is.  I realize my Dell is 13 years old, and I will want to purchase a much newer second hand laptop as soon as I?ve saved for it.  This might enable me to install something different.  A friendly person on another list suggested tarch.  I am beginning to research Tarch and want to be ready to use it so
  if there are any documents that would help me understand how Tarch works after the installation, and whether I can install it without sight, please say.
>
> Thank you for listening.
>
> Simon
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

